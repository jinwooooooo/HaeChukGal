package com.haechukgal.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TeamRankController {
	
	@RequestMapping("/teamrank")
	public String teamrank() {
		return "teamrank";
	}
	
	@RequestMapping("/teamlist")
	public String teamlist(int startYear, int endYear, String choiceLeague, Model model) {
		
		model.addAttribute("startYear",startYear);
		model.addAttribute("endYear",endYear);
		model.addAttribute("choiceLeague",choiceLeague);
		
		return "teamlist";
	}
}
