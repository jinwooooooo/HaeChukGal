package com.haechukgal.webapp.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
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
	public String write(MultipartHttpServletRequest request, HttpServletResponse response) {
		
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
		return "boardlist";
	}
	
	@RequestMapping("/boardlist")
	public String boardlist(@RequestParam(defaultValue="1") int pageNo, Model model) {
		
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
		
		return "boardlist";
	}
	
	@RequestMapping("/boardfulllist")
	public String boardfulllist(@RequestParam(defaultValue="1") int pageNo, Model model) {
		
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
		
		return "boardfulllist";
	}
	 
	@RequestMapping("/boardread")
	public String boardread(HttpSession session, @RequestParam(defaultValue="1") int boardNo, Model model ) {
		
		BoardDTO boardDTO=boardService.getBoardDTO(boardNo);
		boardService.updateHitcount(boardNo);
		String writer=boardService.selectNameByNo(boardDTO.getMember_no());
		
		model.addAttribute("writer",writer);
		model.addAttribute("board",boardDTO);
		
		System.out.println(boardDTO.getBoard_no());
		return "boardread";
	}
	
	@RequestMapping("/photodownload")
	public void photodownload(String fileName, HttpServletRequest request, HttpServletResponse response) throws Exception {
		//파일의 데이터를 읽기 위한 입력 스트림 얻기
		String saveFilePath = "D:/MyWorkspace/images/board/" + fileName;
		InputStream is = new FileInputStream(saveFilePath);
		
		//응답 HTTP 헤더 구성
		//1)Content - Type 헤더 구성(파일의 종류)
		ServletContext application = request.getServletContext();
		String fileType = application.getMimeType(fileName);
		response.setContentType("fileType");
		//2) Content-Disposition 헤더 구성(다운로드할 파일의 이름 지정)
		response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
		//3) Content-Length 헤더 구성(다운로드할 파일의 크기를 지정)
		int fileSize = (int)new File(saveFilePath).length();
		response.setContentLength(fileSize);
		
		//응답 HTTP의 바디(본문) 구성
		OutputStream os = response.getOutputStream();
		FileCopyUtils.copy(is, os); //is에서 읽어서 os로 보낸다는 뜻
		os.flush();
		os.close();
		is.close();
	}
	
	@RequestMapping("/boardupdateform")
	public String boardupdateform(@RequestParam(defaultValue="1") int boardNo,Model model) {
		
		BoardDTO boardDTO=boardService.getBoardDTO(boardNo);
		model.addAttribute("board",boardDTO);
		return "boardupdateform";
	}
	
	@RequestMapping("/boardupdate")
	public String boardupdate(MultipartHttpServletRequest request) {
		
		int board_no=Integer.parseInt(request.getParameter("board_no"));
		MultipartFile fileName = request.getFile("fileName");
		String title = (String) request.getParameter("title");
		String content = (String) request.getParameter("content");
		String leagueName = (String) request.getParameter("leagueName");
		
		if(!fileName.isEmpty()) {
			// 중복 방지를 위해 파일 앞에 시간 붙이기
			String saveFileName = new Date().getTime() + "_" + fileName.getOriginalFilename();
			try {
				fileName.transferTo(new File("D:/MyWorkspace/images/board/" + saveFileName));
				
				BoardDTO boardDTO=new BoardDTO();
				
				boardDTO.setContent(content);
				boardDTO.setLeagueName(leagueName);
				boardDTO.setFileName(saveFileName);
				boardDTO.setBoard_no(board_no);
				boardDTO.setTitle(title);
				
				//System.out.println(boardDTO.getContent());
				//System.out.println(boardDTO.getLeagueName());
				//System.out.println(boardDTO.getFileName());
				//System.out.println(boardDTO.getMember_no());
				//System.out.println(boardDTO.getTitle());
				
				boardService.updateBoardDTO(boardDTO);
				
			}catch(Exception e) {
				;
			}
		}
		return "boardlist";
	}
	
	@RequestMapping("/boarddelete")
	public String boarddelete(@RequestParam(defaultValue="1") int boardNo) {
		boardService.deleteBoardDTO(boardNo);
		return "boardlist";
	}
}
