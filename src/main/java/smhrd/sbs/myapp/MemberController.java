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
		List<MemberVO> memberList = dao.memberList();
		model.addAttribute("memberList", memberList);
		return "main";
	}
	@RequestMapping("/main.do")
	public String memberList(Model model) {
		List<MemberVO> memberList = dao.memberList();
		model.addAttribute("memberList", memberList);
		return "main";
	}
}
