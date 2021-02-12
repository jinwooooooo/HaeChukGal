package com.haechukgal.webapp.service;

import java.util.List;

import com.haechukgal.webapp.dto.GameInfoDTO;
import com.haechukgal.webapp.dto.MyTeamInfoDTO;
import com.haechukgal.webapp.dto.PlayerInfoDTO;
import com.haechukgal.webapp.dto.TeamInfoDTO;

public interface SoccerInfoService {
	public void insertGameInfo(GameInfoDTO gameInfoDTO);
	public void deleteGameInfo(GameInfoDTO gameInfoDTO);
	public void insertPlayerInfo(PlayerInfoDTO playerInfoDTO);
	public void deletePlayerInfo(PlayerInfoDTO playerInfoDTO);
	public void insertTeamInfo(TeamInfoDTO teamInfoDTO);
	public void deleteTeamInfo(TeamInfoDTO teamInfoDTO);
	public List<String> searchLikeTeam(String leagueName);
	public List<MyTeamInfoDTO> searchMyTeam(String name);
	public MyTeamInfoDTO searchMyTeamIMG(String name);
	public List<PlayerInfoDTO> searchPlayerRank(PlayerInfoDTO playerInfoDTO);
	public List<TeamInfoDTO> searchTeamRank(TeamInfoDTO teamInfoDTO);
}
