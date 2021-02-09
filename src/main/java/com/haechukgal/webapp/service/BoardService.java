package com.haechukgal.webapp.service;

import java.util.List;

import com.haechukgal.webapp.dto.BoardDTO;
import com.haechukgal.webapp.dto.PagerDTO;

public interface BoardService {
	public int selectNoByName(String name);
	public void insertBoard(BoardDTO boardDTO);
	public int getBoardTotalRows();
	public List<BoardDTO> getBoardList(PagerDTO pager);
}
