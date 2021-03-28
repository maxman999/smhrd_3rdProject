package smhrd.sbs.myapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import smhrd.sbs.model.PlantDAO;

@Controller
public class PlantController {
	
	@Autowired
	private PlantDAO dao;
	
	@RequestMapping("/upload.do")
	public String upload() {
		return "upload";
	}
	@RequestMapping("/img_register.do")
	public String img_register() {
		return "img_register";
	}

}
