package com.haechukgal.webapp.dao;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.haechukgal.webapp.dto.GameInfoDTO;
import com.haechukgal.webapp.dto.MyTeamInfoDTO;
import com.haechukgal.webapp.dto.ScheduleTeamNameDTO;

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
	@Override
	public List<String> searchLikeTeam(String leagueName) {
		// TODO Auto-generated method stub
		return sst.selectList("mybatis.mapper.GameInfoMapper.searchLikeTeam", leagueName);
	}
	@Override
	public List<MyTeamInfoDTO> searchMyTeam(String name) {
		// TODO Auto-generated method stub
		return sst.selectList("mybatis.mapper.GameInfoMapper.searchMyTeam" , name);
	}
	@Override
	public MyTeamInfoDTO searchMyTeamIMG(String name) {
		// TODO Auto-generated method stub
		return sst.selectOne("mybatis.mapper.GameInfoMapper.searchMyTeamIMG" , name);
	}
	@Override
	public List<ScheduleTeamNameDTO> searchScheduleTeam(String leagueName) {
		// TODO Auto-generated method stub
		return sst.selectList("mybatis.mapper.GameInfoMapper.searchScheduleTeam", leagueName);
	}
	
	@Override
	public List<MyTeamInfoDTO> searchScheduleSeason(GameInfoDTO gameInfoDTO) {
		// TODO Auto-generated method stub
		return sst.selectList("mybatis.mapper.GameInfoMapper.searchScheduleSeason", gameInfoDTO);
	}
	@Override
	public List<MyTeamInfoDTO> searchScheduleMonth(GameInfoDTO gameInfoDTO) {
		// TODO Auto-generated method stub
		return sst.selectList("mybatis.mapper.GameInfoMapper.searchScheduleMonth", gameInfoDTO);
	}
}
