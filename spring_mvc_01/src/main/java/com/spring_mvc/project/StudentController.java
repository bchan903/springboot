package com.spring_mvc.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class StudentController {
	
	@RequestMapping("/")
	public String indexView() {
		return "index";
	}
	
	
	@RequestMapping("/student/studentForm")
	public String studentFormView() {
		return "student/studentForm";
	}
	
	@RequestMapping("/student/newStudent")
	public String insertStudent(HttpServletRequest request, Model model) {
		
		String no= request.getParameter("no");
		String name= request.getParameter("name");
		String year= request.getParameter("year");
		
		
		model.addAttribute("no",no);
		model.addAttribute("name",name);
		model.addAttribute("year",year);
		
		return "student/studentResult";
	}
	
//	2)
	@RequestMapping("/student/newStudent2")
	public String insertStudent2(@RequestParam("no") String no,
			@RequestParam("name") String name,
			@RequestParam("year") String year,Model model) {
	
		model.addAttribute("no",no);
		model.addAttribute("name",name);
		model.addAttribute("year",year);
		
		return "student/studentResult";
	}
	
//3)
	@RequestMapping("/student/newStudent3")
	public String InsertStudent3(Student student) {
		return "student/studentResult2";
	}
//4	
	@RequestMapping("/student/newStudent4")
	public String InsertStudent4(@ModelAttribute("stdInfo") Student student) {
		return "student/studentResult3";
	}
}
