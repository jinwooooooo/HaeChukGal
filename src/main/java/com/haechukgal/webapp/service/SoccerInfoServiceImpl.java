package com.haechukgal.webapp.service;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.haechukgal.webapp.dao.GameInfoDAO;
import com.haechukgal.webapp.dao.PlayerInfoDAO;
import com.haechukgal.webapp.dao.TeamInfoDAO;
import com.haechukgal.webapp.dto.GameInfoDTO;
import com.haechukgal.webapp.dto.MyTeamInfoDTO;
import com.haechukgal.webapp.dto.PlayerInfoDTO;
import com.haechukgal.webapp.dto.TeamInfoDTO;

@Service
public class SoccerInfoServiceImpl implements SoccerInfoService {
	@Inject
	private GameInfoDAO gameInfoDAO;
	@Inject
	private PlayerInfoDAO playerInfoDAO;
	@Inject
	private TeamInfoDAO teamInfoDAO;

	@Override
	public void insertGameInfo(GameInfoDTO gameInfoDTO) {
		// TODO Auto-generated method stub
		gameInfoDAO.insertGameInfo(gameInfoDTO);
	}
	@Override
	public void deleteGameInfo(GameInfoDTO gameInfoDTO) {
		// TODO Auto-generated method stub
		gameInfoDAO.deleteGameInfo(gameInfoDTO);
	}
	@Override
	public void insertPlayerInfo(PlayerInfoDTO playerInfoDTO) {
		// TODO Auto-generated method stub
		playerInfoDAO.insertPlayerInfo(playerInfoDTO);
	}
	@Override
	public void deletePlayerInfo(PlayerInfoDTO playerInfoDTO) {
		// TODO Auto-generated method stub
		playerInfoDAO.deletePlayerInfo(playerInfoDTO);
	}
	@Override
	public void insertTeamInfo(TeamInfoDTO teamInfoDTO) {
		// TODO Auto-generated method stub
		teamInfoDAO.insertTeamInfo(teamInfoDTO);
	}
	@Override
	public void deleteTeamInfo(TeamInfoDTO teamInfoDTO) {
		// TODO Auto-generated method stub
		teamInfoDAO.deleteTeamInfo(teamInfoDTO);
	}
	@Override
	public List<String> searchLikeTeam(String leagueName) {
		// TODO Auto-generated method stub
		return gameInfoDAO.searchLikeTeam(leagueName);
	}
	@Override
	public List<MyTeamInfoDTO> searchMyTeam(String name) {
		// TODO Auto-generated method stub
		return gameInfoDAO.searchMyTeam(name);
	}
	@Override
	public MyTeamInfoDTO searchMyTeamIMG(String name) {
		// TODO Auto-generated method stub
		return gameInfoDAO.searchMyTeamIMG(name);
	}
	@Override
	public List<PlayerInfoDTO> searchPlayerRank(PlayerInfoDTO playerInfoDTO) {
		// TODO Auto-generated method stub
		return playerInfoDAO.searchPlayerRank(playerInfoDTO);
	}
	@Override
	public List<TeamInfoDTO> searchTeamRank(TeamInfoDTO teamInfoDTO) {
		// TODO Auto-generated method stub
		return teamInfoDAO.searchTeamRank(teamInfoDTO);
	}
	
}
