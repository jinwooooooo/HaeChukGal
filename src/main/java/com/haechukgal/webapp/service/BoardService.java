package com.haechukgal.webapp.service;

import java.util.List;

import com.haechukgal.webapp.dto.BoardDTO;
import com.haechukgal.webapp.dto.PagerDTO;

public interface BoardService {
	public int selectNoByName(String name);
	public void insertBoard(BoardDTO boardDTO);
	public int getBoardTotalRows();
	public List<BoardDTO> getBoardList(PagerDTO pager);
	public String selectNameByNo(int member_no);
	public BoardDTO getBoardDTO(int boardNo);
	public void updateBoardDTO(BoardDTO boardDTO);
	public void deleteBoardDTO(int boardNo);
	public void updateHitcount(int boardNo);
}
