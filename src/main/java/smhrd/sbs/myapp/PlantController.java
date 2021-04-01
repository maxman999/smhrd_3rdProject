package smhrd.sbs.myapp;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import smhrd.sbs.model.MemberVO;
import smhrd.sbs.model.PlantDAO;
import smhrd.sbs.model.PlantVO;

@Controller
public class PlantController {
   private static final String FILE_SERVER_PATH = "C:/eGovFrame-3.9.0/sbs/project_sbs/src/main/webapp/resources/images";
   
   @Autowired
   private PlantDAO dao;
   HttpServletRequest request;
   HttpSession session;
   
   @RequestMapping("/upload.do")
   public String upload() {
      return "upload";
   }
   
   @ResponseBody
   @RequestMapping("/fileUpload.do")
   public HashMap<String, String> fileUpload(@RequestParam("uploadFile") MultipartFile file, HttpServletRequest request)throws IllegalStateException, IOException, Exception {
      if(!file.getOriginalFilename().isEmpty()) {
         file.transferTo(new File(FILE_SERVER_PATH, file.getOriginalFilename()));

      }else {
      }
      
      // 세션에 식물이름 저장
      HttpSession session = request.getSession();
      String name = file.getOriginalFilename();
      session.setAttribute("imgName", name);
   
      ModelAndView mv = new ModelAndView();
      mv.setViewName("/upload");
      
      // 플라스크 연동
      System.out.println(file.getOriginalFilename());
      session = request.getSession();
      session.setAttribute("imgName", file.getOriginalFilename());
      
      String result = excutePost("http://127.0.0.1:5000/getImgName",file.getOriginalFilename());
      HashMap<String, String> map = new HashMap<String, String>();
      System.out.println("받은 결과 : " + result);
      map.put("result", result);
      return map;
   }

   
   
   public static String excutePost(String targetURL, String urlParameters) {
       URL url;
       HttpURLConnection connection = null;
       String encoded = null;
       try {
         encoded = URLEncoder.encode(urlParameters, "utf-8");
      } catch (UnsupportedEncodingException e1) {
         // TODO Auto-generated catch block
         e1.printStackTrace();
      }
       System.out.println(encoded);
       try {
           // Create connection
           url = new URL(targetURL);
           connection = (HttpURLConnection) url.openConnection();
           connection.setRequestMethod("POST");
           connection.setRequestProperty("Content-Type",
                   "application/x-www-form-urlencoded;charset=utf-8");
    
           connection.setRequestProperty("Content-Length",
                   "" + Integer.toString(urlParameters.getBytes().length));
           // connection.setRequestProperty("Content-Language", "en-US");
    
           connection.setUseCaches(false);
           connection.setDoInput(true);
           connection.setDoOutput(true);
    
           // Send request
           DataOutputStream wr = new DataOutputStream(
                   connection.getOutputStream());
           wr.writeBytes("imgName="+encoded);
           wr.flush();
           wr.close();
           System.out.println("요청");
           // Get Response
           InputStream is = connection.getInputStream();
           BufferedReader rd = new BufferedReader(new InputStreamReader(is));
           String line;
           StringBuffer response = new StringBuffer();
           while ((line = rd.readLine()) != null) {
               response.append(line);
               response.append('\r');
           }
           rd.close();
           System.out.println("응답");
           return response.toString();
    
       } catch (Exception e) {
    
           e.printStackTrace();
           return null;
    
       } finally {
    
           if (connection != null) {
               connection.disconnect();
           }
       }
   }
   
   @RequestMapping("/img_register.do")
   public String img_register() {
      return "img_register";
   }
   
   @RequestMapping("/plantInsert.do")
	public String plantInsert(PlantVO vo) {
		int cnt = dao.plantInsert(vo);
		if (cnt>0) {
			System.out.println("도감등록 성공");
		}else {
			System.out.println("도감등록 실패");
		}
			
		return "redirect:/main.do";
	}
   
}