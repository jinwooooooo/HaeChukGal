package com.haechukgal.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyteamController {
	
	@RequestMapping("/myteam")
	public String myteam() {
		
		return "myteam";
	}
}
