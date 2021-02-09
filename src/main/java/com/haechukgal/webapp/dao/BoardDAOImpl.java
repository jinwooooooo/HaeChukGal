package com.haechukgal.webapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.haechukgal.webapp.dto.BoardDTO;
import com.haechukgal.webapp.dto.PagerDTO;

@Repository
public class BoardDAOImpl implements BoardDAO{
	
	@Resource private SqlSessionTemplate sst;
	
	@Override
	public int selectNoByName(String name) {
		int num=sst.selectOne("mybatis.mapper.BoardMapper.selectNoByName",name);
		return num;
	}
	
	@Override
	public void insertBoard(BoardDTO boardDTO) {
		sst.insert("mybatis.mapper.BoardMapper.insertBoard",boardDTO);
	}
	
	@Override
	public int getBoardTotalRows() {
		int rows=sst.selectOne("mybatis.mapper.BoardMapper.getBoardTotalRows");
		return rows;
	}
	
	@Override
	public List<BoardDTO> selectByPage(PagerDTO pager){
		List<BoardDTO> list=sst.selectList("mybatis.mapper.BoardMapper.selectByPage",pager);
		return list;
	}
	
	@Override
	public String selectNameByNo(int member_no) {
		String name=sst.selectOne("mybatis.mapper.BoardMapper.selectNameByNo",member_no);
		return name;
	}
}
