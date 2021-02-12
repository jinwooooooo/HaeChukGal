package com.haechukgal.webapp.dao;

import java.util.List;

import com.haechukgal.webapp.dto.TeamInfoDTO;

public interface TeamInfoDAO {
	public void insertTeamInfo(TeamInfoDTO teamInfoDTO);
	public void deleteTeamInfo(TeamInfoDTO teamInfoDTO);
	public List<TeamInfoDTO> searchTeamRank(TeamInfoDTO teamInfoDTO);
}
