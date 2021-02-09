package com.haechukgal.webapp.dao;

import java.util.HashMap;
import java.util.List;

import com.haechukgal.webapp.dto.GameInfoDTO;
import com.haechukgal.webapp.dto.MyTeamInfoDTO;

public interface GameInfoDAO {
	public void insertGameInfo(GameInfoDTO gameInfoDTO);
	public void deleteGameInfo(GameInfoDTO gameInfoDTO);
	public List<String> searchLikeTeam(String leagueName);
	public List<MyTeamInfoDTO> searchMyTeam(String name);
	public MyTeamInfoDTO searchMyTeamIMG(String name);
}
