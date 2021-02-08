package com.haechukgal.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping("/")
	public String firstindex() {
		
		return "index";
	}
	
	@RequestMapping("/index")
	public String afterindex() {
		
		return "index";
	}
}
