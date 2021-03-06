package smhrd.sbs.myapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import smhrd.sbs.model.MemberDAO;
import smhrd.sbs.model.MemberVO;

@Controller
public class MemberController {

	@Autowired
	private MemberDAO dao;
	
	@RequestMapping("/main.do")
	public String memberList() {
		return "main";
	}

	@RequestMapping("/login.do")
	public String login() {
		
		return "login";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.removeAttribute("info");
		session.removeAttribute("imgName");
		session.removeAttribute("plist");
		session.removeAttribute("imgCheck");
		return "main";
	}
	
	@RequestMapping("/loginCheck.do")
	public String loginCheck(MemberVO vo, HttpServletRequest req, HttpServletResponse response) {
			MemberVO loginVO = dao.memberCheck(vo);
			
			if (loginVO == null) {
				System.out.println("로그인 실패");
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out;
				try {
					out = response.getWriter();
					out.println("<script>alert('다시 로그인해주세요'); location.href='main.do';</script>");
					out.flush();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			} else {
				System.out.println("로그인 성공");
				HttpSession session = req.getSession();
				session.setAttribute("info", loginVO);
			}
		return "main";
	}
	
	@RequestMapping("/join.do")
	public String join() {
		return "join";
	}

	@RequestMapping("/memberInsert.do")
	public String memberInsert(MemberVO vo) {
		int cnt = dao.memberInsert(vo);
		if (cnt>0) {
			System.out.println("회원가입 성공");
		}else {
			System.out.println("회원가입 실패");
		}
			
		return "redirect:/main.do";
	}

	@RequestMapping("/mypage.do")
	public String mypage() {
		return "mypage";
	}

	@RequestMapping("/memberUpdate.do")
	public String memberUpdate(MemberVO vo) {
		int cnt = dao.memberUpdate(vo);
		if (cnt > 0) {
			System.out.println("회원정보 갱신 성공");
		} else {
			System.out.println("회원정보 갱신 실패");
		}
		return "redirect:/main.do";
	}
	
	@RequestMapping("/memberDelete.do")
	public String memberDelete(String id, HttpServletRequest req) {
		System.out.println("받은 id: "+ id);
		int cnt1 = dao.plantDeleteAll(id); 
		int cnt2 = dao.memberDelete(id);
		if (cnt1 > 0 && cnt2 > 0) {
			System.out.println("탈퇴 성공");
			HttpSession session = req.getSession();
			session.removeAttribute("info");
		} else {
			System.out.println("탈퇴 실패");
		}
		return "redirect:/main.do";
	}
	@RequestMapping("/logintest.do")
	public String logintest() {
		return "logintest";
	}

	
	
}
