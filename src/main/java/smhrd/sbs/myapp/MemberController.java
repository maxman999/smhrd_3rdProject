package smhrd.sbs.myapp;

import java.util.List;

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
	public String memberRead(String id, Model model) {
		MemberVO vo = dao.memberRead(id);
		model.addAttribute("vo", vo);
		return "main";
	}

	@RequestMapping("/join.do")
	public String join() {
		return "join";
	}
	
	@RequestMapping("/memberInsert.do")
	public String memberInsert(MemberVO vo) {
		int cnt = dao.memberInsert(vo);
		return "login";
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
		return "main";
	}

}
