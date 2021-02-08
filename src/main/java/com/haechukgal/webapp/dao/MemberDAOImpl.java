package com.haechukgal.webapp.dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.haechukgal.webapp.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Resource private SqlSessionTemplate sst;
	
	@Override
	public void insertMember(MemberDTO memberDTO) {
		sst.insert("mybatis.mapper.MemberMapper.insertMember",memberDTO);
	}
}
