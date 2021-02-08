package com.haechukgal.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SettingController {
	
	@RequestMapping("/settingform")
	public String setting() {
		
		return "settingform";
	}
}
