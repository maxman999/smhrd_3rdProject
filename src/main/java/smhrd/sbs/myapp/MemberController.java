package smhrd.sbs.myapp;

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
	@RequestMapping("/join.do")
	public String join() {
	
		return "join";
	}
	@RequestMapping("/mypage.do")
	public String mypage() {
	
		return "mypage";
	}
	@RequestMapping("/upload.do")
	public String upload() {
	
		return "upload";
	}
	@RequestMapping("/img_register.do")
	public String img_register() {
	
		return "img_register";
	}
}
