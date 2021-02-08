package com.haechukgal.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ScheduleController {
	
	@RequestMapping("/schedule")
	public String schedule() {
		
		return "schedule";
	}
}
