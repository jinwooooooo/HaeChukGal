package com.haechukgal.webapp.dao;
import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.haechukgal.webapp.dto.GameInfoDTO;

@Repository
public class GameInfoDAOImpl implements GameInfoDAO {
	
	@Resource private SqlSessionTemplate sst;
	
	@Override
	public void insertGameInfo(GameInfoDTO gameInfoDTO) {
		// TODO Auto-generated method stub
		sst.insert("mybatis.mapper.GameInfoMapper.insertGameInfo",gameInfoDTO);
	}
	@Override
	public void deleteGameInfo(GameInfoDTO gameInfoDTO) {
		// TODO Auto-generated method stub
		sst.delete("mybatis.mapper.GameInfoMapper.deleteGameInfo", gameInfoDTO);
	}
}
