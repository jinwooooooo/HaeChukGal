package com.haechukgal.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WriteController {
	
	@RequestMapping("/writeform")
	public String writeform() {
		
		return "writeform";
	}
}
