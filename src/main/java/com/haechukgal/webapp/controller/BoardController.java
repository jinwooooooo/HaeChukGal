package com.haechukgal.webapp.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.haechukgal.webapp.dto.BoardDTO;
import com.haechukgal.webapp.dto.PagerDTO;
import com.haechukgal.webapp.service.BoardService;

@Controller
public class BoardController {
	
	@Resource private BoardService boardService;
	
	@RequestMapping("/board")
	public String board(@RequestParam(defaultValue="1")int pageNo, Model model, HttpServletRequest request) {
		int totalRows=boardService.getBoardTotalRows();
		PagerDTO pager=new PagerDTO(5,5,totalRows,pageNo); //한 페이지에 글 수, 한 그룹에 페이지 수
		List<BoardDTO> list=boardService.getBoardList(pager);
		
		model.addAttribute("list",list);
		model.addAttribute("pager",pager);
		
		List<String> list_name=new ArrayList<String>();
		for(BoardDTO boardDTO : list)
		{
			list_name.add(boardService.selectNameByNo(boardDTO.getMember_no()));
		}
		
		model.addAttribute("list_name",list_name);
		
		return "board";
	}
	
	@RequestMapping("/write")
	public void write(MultipartHttpServletRequest request, HttpServletResponse response) {
		
		MultipartFile fileName = request.getFile("fileName");
		String title = (String) request.getParameter("title");
		String content = (String) request.getParameter("content");
		String leagueName = (String) request.getParameter("leagueName");
		
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("name");
		int no=boardService.selectNoByName(name);
		
		if(!fileName.isEmpty()) {
			// 중복 방지를 위해 파일 앞에 시간 붙이기
			String saveFileName = new Date().getTime() + "_" + fileName.getOriginalFilename();
			try {
				fileName.transferTo(new File("D:/MyWorkspace/images/board/" + saveFileName));
				
				BoardDTO boardDTO=new BoardDTO();
				
				boardDTO.setContent(content);
				boardDTO.setLeagueName(leagueName);
				boardDTO.setFileName(saveFileName);
				boardDTO.setMember_no(no);
				boardDTO.setTitle(title);
				
				//System.out.println(boardDTO.getContent());
				//System.out.println(boardDTO.getLeagueName());
				//System.out.println(boardDTO.getFileName());
				//System.out.println(boardDTO.getMember_no());
				//System.out.println(boardDTO.getTitle());
				
				boardService.insertBoard(boardDTO);
				
			}catch(Exception e) {
				;
			}
		}
	}
}
