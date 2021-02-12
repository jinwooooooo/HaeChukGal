package com.haechukgal.webapp.controller;

import java.nio.file.spi.FileSystemProvider;
import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.haechukgal.webapp.dto.MyTeamInfoDTO;
import com.haechukgal.webapp.dto.PlayerInfoDTO;
import com.haechukgal.webapp.service.SoccerInfoService;

@Controller
public class PlayerRankController {
	@Resource private SoccerInfoService soccerInfoService;
	
	@RequestMapping("/playerrank")
	public String playerrank(Model model) {
		PlayerInfoDTO playerInfoDTO = new PlayerInfoDTO();
		playerInfoDTO.setP_leagueName("epl");
		playerInfoDTO.setP_season("20202021");
		List<PlayerInfoDTO> playerRank = soccerInfoService.searchPlayerRank(playerInfoDTO);
		
		for(PlayerInfoDTO s : playerRank) {
			String imageURL = s.getPlayerImage();
			String[] image = imageURL.split("/");
			List<String> list = Arrays.asList(image);
			String element = "";
			if( !list.isEmpty() )
				element = (String)list.get(list.size() - 1);
//			String playerImage = "http://img1.daumcdn.net/thumb/S100x100/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fsports%2Fplayer%2F300%2F14%2F"+element+"&scode=default_face_profile_big_p";
			s.setPlayerImage(element);
		}
		
		model.addAttribute("playerRank", playerRank);
		return "playerrank";
	}
	
	@RequestMapping("playerlist")
	public String playerlist(int startYear, int endYear, String choiceLeague, Model model) {
//		System.out.println(startYear);
//		System.out.println(endYear);
//		System.out.println(choiceLeague);
		String season = Integer.toString(startYear)+Integer.toString(endYear);
		PlayerInfoDTO playerInfoDTO = new PlayerInfoDTO();
		playerInfoDTO.setP_leagueName(choiceLeague);
		playerInfoDTO.setP_season(season);
		List<PlayerInfoDTO> playerRank = soccerInfoService.searchPlayerRank(playerInfoDTO);
		
		for(PlayerInfoDTO s : playerRank) {
			String imageURL = s.getPlayerImage();
			String[] image = imageURL.split("/");
			List<String> list = Arrays.asList(image);
			String element = "";
			if( !list.isEmpty() )
				element = (String)list.get(list.size() - 1);
//			String playerImage = "http://img1.daumcdn.net/thumb/S100x100/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fsports%2Fplayer%2F300%2F14%2F"+element+"&scode=default_face_profile_big_p";
			s.setPlayerImage(element);
		}
		
		model.addAttribute("playerRank", playerRank);
		model.addAttribute("startYear",startYear);
		model.addAttribute("endYear",endYear);
		model.addAttribute("choiceLeague",choiceLeague);
		
		return "playerlist";
	}
}
