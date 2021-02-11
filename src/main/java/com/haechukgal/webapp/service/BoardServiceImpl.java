package com.haechukgal.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.haechukgal.webapp.dao.BoardDAO;
import com.haechukgal.webapp.dto.BoardDTO;
import com.haechukgal.webapp.dto.PagerDTO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Resource private BoardDAO boardDAO;
	
	@Override
	public int selectNoByName(String name) {
		int num=boardDAO.selectNoByName(name);
		return num;
	}
	
	@Override
	public void insertBoard(BoardDTO boardDTO) {
		boardDAO.insertBoard(boardDTO);
	}
	
	@Override
	public int getBoardTotalRows() {
		int rows=boardDAO.getBoardTotalRows();
		return rows;
	}
	
	@Override
	public List<BoardDTO> getBoardList(PagerDTO pager){
		List<BoardDTO> list=boardDAO.selectByPage(pager);
		return list;
	}
	
	@Override
	public String selectNameByNo(int member_no) {
		String name=boardDAO.selectNameByNo(member_no);
		return name;
	}
	
	@Override
	public BoardDTO getBoardDTO(int boardNo) {
		BoardDTO boardDTO=boardDAO.selectByboardNo(boardNo);
		return boardDTO;
	}
	
	@Override
	public void updateBoardDTO(BoardDTO boardDTO) {
		boardDAO.updateBoardDTO(boardDTO);
	}
	
	@Override
	public void deleteBoardDTO(int boardNo) {
		boardDAO.deleteBoardDTO(boardNo);
	}
	
	@Override
	public void updateHitcount(int boardNo) {
		boardDAO.updateHitcount(boardNo);
	}

}
