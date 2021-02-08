package com.haechukgal.webapp.dao;
import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import com.haechukgal.webapp.dto.PlayerInfoDTO;

@Repository
public class PlayerInfoDAOImpl implements PlayerInfoDAO {
	
	@Resource private SqlSessionTemplate sst;
	
	@Override
	public void insertPlayerInfo(PlayerInfoDTO playerInfoDTO) {
		// TODO Auto-generated method stub
		sst.insert("mybatis.mapper.PlayerInfoMapper.insertPlayerInfo",playerInfoDTO);
	}

	@Override
	public void deletePlayerInfo(PlayerInfoDTO playerInfoDTO) {
		// TODO Auto-generated method stub
		sst.insert("mybatis.mapper.PlayerInfoMapper.deletePlayerInfo",playerInfoDTO);
	}

}
