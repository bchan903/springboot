package com.spring_mvc.rest;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
	@RequestMapping("/hello")
	public String hello() {
		return "Hello REST!!";
	}
	
	@RequestMapping("/member")
	public MemberVO member() {
		MemberVO vo = new MemberVO();
		vo.setId("hong");
		vo.setPwd("1234");
		vo.setName("홍길동");
		vo.setEmail("hong@email.com");
		
		return vo;
	}
	
	@RequestMapping("/memberList")
	public List<MemberVO> listMembers(){
		List<MemberVO> list = new ArrayList<MemberVO>();
		for(int i=0;i<10;i++) {
			MemberVO vo = new MemberVO();
			vo.setId("hong"+i);
			vo.setPwd("1234"+i);
			vo.setName("홍길동"+i);
			vo.setEmail("hong"+i+"@email.com");
			list.add(vo);
		}
		
		return list;
	}
	
	@RequestMapping("/memberMap")
	public Map<Integer, MemberVO> memberMap() { 
	
		Map<Integer,MemberVO> map = new HashMap<Integer,MemberVO>();
		
		for(int i=0;i<10;i++) {
			MemberVO vo = new MemberVO();
			vo.setId("hong"+i);
			vo.setPwd("1234"+i);
			vo.setName("홍길동"+i);
			vo.setEmail("hong"+i+"@email.com");
			map.put(i,vo);
		}
		
		return map;
	
	}
	
	@RequestMapping(value="/notice/{num}",method=RequestMethod.GET)
	public int notice(@PathVariable("num") int num) throws Exception{
		return num;
	}
	
	@RequestMapping("/info")
	public void modify(@RequestBody MemberVO vo) {
		
		System.out.println("MemberVO:" + vo.toString());
	}
	
	@RequestMapping("/responseBody")
	@ResponseBody
	public Map<String, Object> response() {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("id", "hong");
		map.put("name", "홍길동");
		
		return map;

	}
	
}