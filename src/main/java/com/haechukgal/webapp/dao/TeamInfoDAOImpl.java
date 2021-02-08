package com.haechukgal.webapp.dao;
import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.haechukgal.webapp.dto.TeamInfoDTO;

@Repository
public class TeamInfoDAOImpl implements TeamInfoDAO {
	
	@Resource private SqlSessionTemplate sst;
	
	@Override
	public void insertTeamInfo(TeamInfoDTO teamInfoDTO) {
		// TODO Auto-generated method stub
		sst.insert("mybatis.mapper.TeamInfoMapper.insertTeamInfo",teamInfoDTO);
	}

	@Override
	public void deleteTeamInfo(TeamInfoDTO teamInfoDTO) {
		// TODO Auto-generated method stub
		sst.insert("mybatis.mapper.TeamInfoMapper.deleteTeamInfo",teamInfoDTO);
	}

}
