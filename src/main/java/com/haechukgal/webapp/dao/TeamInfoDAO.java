package com.haechukgal.webapp.dao;

import com.haechukgal.webapp.dto.TeamInfoDTO;

public interface TeamInfoDAO {
	public void insertTeamInfo(TeamInfoDTO teamInfoDTO);
	public void deleteTeamInfo(TeamInfoDTO teamInfoDTO);
}
