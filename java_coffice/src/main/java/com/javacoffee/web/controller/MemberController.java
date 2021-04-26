package com.javacoffee.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javacoffee.web.model.MemberVO;
import com.javacoffee.web.service.MemberService;


@Controller
public class MemberController {
	@Autowired
	MemberService service;
	
	//로그인 폼으로 이동
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "jsp/loginForm";
	}
	
	//로그인 : id와 pwd 전달 받아서 로그인 체크
	@RequestMapping("/login")
	public String loginCheck(@RequestParam("id") String id,
											   @RequestParam("pwd") String pwd,
											   HttpSession session) {
		
		// id, pwd -> service -> dao. mapper 
		MemberVO vo = service.loginCheck(id, pwd);
		
		// 결과 받아서 id와 비밀전호가 일치하면 세션 변수로 저장
		if(vo != null) {
			session.setAttribute("sid", vo.getId());
			session.setAttribute("srole", vo.getRole());
			
			return "redirect:/";  //index 페이지로 포워딩
		} else {
			
			return "jsp/joinForm";  //index 페이지로 포워딩
		}
		
		
	}
	
	//로그 아웃
	@RequestMapping("/logout")
	public String userLogout(HttpSession session) {
		
		session.invalidate();
		return "redirect:/";
	}
	
	//회원 가입 폼으로 이동
	@RequestMapping("/joinForm")
	public String joinForm(){
		return "jsp/joinForm";
	}
	
	//아이디 중복 체크
	@ResponseBody 
	@RequestMapping("/idCheck")
	public String idCheck(@RequestParam("id") String id) {
		MemberVO vo = service.idCheck(id);
		
		String result="0";
		if(vo !=null) result = "1";
		
		return result;
	}
	
	@RequestMapping("/join")
	public String join(MemberVO vo) {
//		System.out.println("id:"+ vo.getId());
		service.insertMember(vo);
		
		return "redirect:/";
	}
	
}

















