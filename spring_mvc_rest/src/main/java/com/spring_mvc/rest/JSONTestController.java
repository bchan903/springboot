package com.spring_mvc.rest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JSONTestController {
	@RequestMapping("/JSONTest")
	public String JSOnTEst() {
		return "JSONTest";
	}
}
