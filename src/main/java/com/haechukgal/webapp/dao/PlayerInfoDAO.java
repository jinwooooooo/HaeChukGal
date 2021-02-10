package com.haechukgal.webapp.dao;

import java.util.List;

import com.haechukgal.webapp.dto.PlayerInfoDTO;

public interface PlayerInfoDAO {
	public void insertPlayerInfo(PlayerInfoDTO playerInfoDTO);
	public void deletePlayerInfo(PlayerInfoDTO playerInfoDTO);
	public List<PlayerInfoDTO> searchPlayerRank(PlayerInfoDTO playerInfoDTO);
}
