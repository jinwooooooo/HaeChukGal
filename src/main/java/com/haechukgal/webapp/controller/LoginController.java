package com.haechukgal.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	@RequestMapping("/loginform")
	public String loginform() {
		
		return "loginform";
	}
	
}
