package com.haechukgal.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PlayerRankController {
	
	@RequestMapping("/playerrank")
	public String playerrank() {
		
		return "playerrank";
	}
	
	@RequestMapping("playerlist")
	public String playerlist(int startYear, int endYear, String choiceLeague, Model model) {
		System.out.println(startYear);
		System.out.println(endYear);
		System.out.println(choiceLeague);
		
		model.addAttribute("startYear",startYear);
		model.addAttribute("endYear",endYear);
		model.addAttribute("choiceLeague",choiceLeague);
		
		return "playerlist";
	}
}
