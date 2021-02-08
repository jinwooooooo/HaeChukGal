package com.haechukgal.webapp.dao;

import com.haechukgal.webapp.dto.PlayerInfoDTO;

public interface PlayerInfoDAO {
	public void insertPlayerInfo(PlayerInfoDTO playerInfoDTO);
	public void deletePlayerInfo(PlayerInfoDTO playerInfoDTO);
}
