package com.res;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LonginController {
	@RequestMapping("/")
	public String test1() {
		return "test1.html";
	}
	
	@ResponseBody
	@RequestMapping("/login")
	public String login(@RequestParam("id") String id,@RequestParam("pw") String pw) {
		
		String result;
		
		result = id + "님 login ok";
	
		return result;
	}
	

}

