package com.haechukgal.webapp.dao;

import com.haechukgal.webapp.dto.GameInfoDTO;

public interface GameInfoDAO {
	public void insertGameInfo(GameInfoDTO gameInfoDTO);
	public void deleteGameInfo(GameInfoDTO gameInfoDTO);
}
