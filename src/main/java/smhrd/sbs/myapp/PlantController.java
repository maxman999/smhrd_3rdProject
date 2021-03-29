package smhrd.sbs.myapp;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import smhrd.sbs.model.PlantDAO;

@Controller
public class PlantController {

	private static final String FILE_SERVER_PATH = "C:/test";
	
	@Autowired
	private PlantDAO dao;
	
	@RequestMapping("/upload.do")
	public String upload() {
		return "upload";
	}
	
	@RequestMapping("/fileUpload.do")
	public String fileUpload(@RequestParam("uploadFile") MultipartFile file, ModelAndView mv, Model model)throws IllegalStateException, IOException {
		if(!file.getOriginalFilename().isEmpty()) {
			file.transferTo(new File(FILE_SERVER_PATH, file.getOriginalFilename()));
			model.addAttribute("msg", "File uploaded successfully.");
		}else {
			model.addAttribute("msg", "Please select a valid mediaFile..");
		}
		System.out.println("뭔가 됨");
		
		return "img_register";
	}

}
