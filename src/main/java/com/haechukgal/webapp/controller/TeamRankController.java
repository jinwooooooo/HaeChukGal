package com.haechukgal.webapp.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.haechukgal.webapp.dto.PlayerInfoDTO;
import com.haechukgal.webapp.dto.TeamInfoDTO;
import com.haechukgal.webapp.service.SoccerInfoService;

import jdk.internal.org.jline.utils.Log;

@Controller
public class TeamRankController {
	@Resource private SoccerInfoService soccerInfoService;
	
	@RequestMapping("/teamrank")
	public String teamrank(Model model) {
		TeamInfoDTO teamInfoDTO = new TeamInfoDTO();
		teamInfoDTO.setT_leagueName("epl");
		teamInfoDTO.setT_season("20202021");
		List<TeamInfoDTO> teamRank = soccerInfoService.searchTeamRank(teamInfoDTO);
		model.addAttribute("teamRank", teamRank);
		return "teamrank";
	}
	
	@RequestMapping("/teamlist")
	public String teamlist(int startYear, int endYear, String choiceLeague, Model model) {
		String season = Integer.toString(startYear)+Integer.toString(endYear);
		TeamInfoDTO teamInfoDTO = new TeamInfoDTO();
		teamInfoDTO.setT_leagueName(choiceLeague);
		teamInfoDTO.setT_season(season);
		List<TeamInfoDTO> teamRank = soccerInfoService.searchTeamRank(teamInfoDTO);

		model.addAttribute("teamRank", teamRank);
		model.addAttribute("startYear",startYear);
		model.addAttribute("endYear",endYear);
		model.addAttribute("choiceLeague",choiceLeague);
		
		return "teamlist";
	}
}
