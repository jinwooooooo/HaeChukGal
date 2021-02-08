package com.haechukgal.webapp.dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.haechukgal.webapp.dto.StarDTO;

@Repository
public class StarDAOImpl implements StarDAO{
	
	@Resource private SqlSessionTemplate sst;
	
	@Override
	public void insertStar(StarDTO starDTO) {
		sst.insert("mybatis.mapper.StarMapper.insertStar",starDTO);
	}
}
