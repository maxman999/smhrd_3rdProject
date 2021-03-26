package smhrd.sbs.myapp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
	public String memberList(Model model) {
		List<MemberVO> list = dao.memberList();
		model.addAttribute("list", list);
		return "main";
	}

	@RequestMapping("/login.do")
	public String login() {
		return "login";
	}

	@RequestMapping("/memberRead.do")
	public String memberRead(MemberVO loginVO, Model model) {
		try {
			MemberVO vo = dao.memberRead(loginVO);
			
			if (vo == null) {
				System.out.println("로그인 실패");
			} else {
				System.out.println("로그인 성공");
			}
			model.addAttribute("info", vo);

		} catch (NullPointerException e) {
			System.out.println("아이디나 비번이 틀렸습니다");
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
		return "redirect:/login.do";
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
}
