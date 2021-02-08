package com.haechukgal.webapp.service;

import com.haechukgal.webapp.dto.GameInfoDTO;
import com.haechukgal.webapp.dto.PlayerInfoDTO;
import com.haechukgal.webapp.dto.TeamInfoDTO;

public interface SoccerInfoService {
	public void insertGameInfo(GameInfoDTO gameInfoDTO);
	public void deleteGameInfo(GameInfoDTO gameInfoDTO);
	public void insertPlayerInfo(PlayerInfoDTO playerInfoDTO);
	public void deletePlayerInfo(PlayerInfoDTO playerInfoDTO);
	public void insertTeamInfo(TeamInfoDTO teamInfoDTO);
	public void deleteTeamInfo(TeamInfoDTO teamInfoDTO);
}
