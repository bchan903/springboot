package com.js;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	@RequestMapping("/test")
	public String test1() {
		return "test1.html";
	}
}
