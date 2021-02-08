package com.haechukgal.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PlayerRankController {
	
	@RequestMapping("/playerrank")
	public String playerrank() {
		
		return "playerrank";
	}
}
