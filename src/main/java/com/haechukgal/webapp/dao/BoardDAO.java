package com.haechukgal.webapp.dao;

import java.util.List;

import com.haechukgal.webapp.dto.BoardDTO;
import com.haechukgal.webapp.dto.PagerDTO;

public interface BoardDAO {
	public int selectNoByName(String name);
	public void insertBoard(BoardDTO boardDTO);
	public int getBoardTotalRows();
	public List<BoardDTO> selectByPage(PagerDTO pager);
	public String selectNameByNo(int member_no);
}
