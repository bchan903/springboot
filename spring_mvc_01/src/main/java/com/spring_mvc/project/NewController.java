package com.spring_mvc.project;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class NewController {

	
	@RequestMapping("/newView")
	public String newView() {
		return "newView";
	}
	
	@RequestMapping("/showInfo")
	public String showInfo(Model model) {
		model.addAttribute("name","홍길동");
		model.addAttribute("address","강남구");
		return "showInfo";
	}
	
	//ModelAndView 클래스 객체 사용
	@RequestMapping("showInfo2")
	public ModelAndView showInfo2(ModelAndView mv) {
		
		mv.addObject("no", "2021001");
		mv.addObject("year",4);
		mv.addObject("department","영어");
		
		mv.setViewName("showInfo2"); //showInfo2.jsp
		return mv;
	}
	
	@RequestMapping("showInfo3")
	public ModelAndView showInfo3(Model model,ModelAndView mv) {
		
		mv.addObject("name","이몽룡");
		mv.addObject("age",23);
		mv.addObject("name","이몽룡");
		mv.setViewName("showInfo3");
		
		model.addAttribute("address","남원");
		
		return mv;
		
	}
}
