package com.haechukgal.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TeamRankController {
	
	@RequestMapping("/teamrank")
	public String teamrank() {
		
		return "teamrank";
	}
}
