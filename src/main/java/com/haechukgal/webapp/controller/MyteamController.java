package com.haechukgal.webapp.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.haechukgal.webapp.dto.GameInfoDTO;
import com.haechukgal.webapp.dto.MyTeamInfoDTO;
import com.haechukgal.webapp.service.SoccerInfoService;

@Controller
public class MyteamController {
	@Resource private SoccerInfoService soccerInfoService;
	
	@RequestMapping("/myteam")
	public String myteam(HttpServletRequest request, HttpServletResponse response, Authentication authentication, Model model) throws IOException, ServletException {
		HttpSession session = request.getSession();
		String name = (String)session.getAttribute("name");
		List<MyTeamInfoDTO> gameList = soccerInfoService.searchMyTeam(name);
		MyTeamInfoDTO myTeamInfo = soccerInfoService.searchMyTeamIMG(name);
		
		for(MyTeamInfoDTO s: gameList) {
			// 날짜 변환 작업 (20200913 => 2020.09.13 (일) )
			String matchDate = s.getMatchdate();
			String year = matchDate.substring(0, 4);
			String month = matchDate.substring(4, 6);
			String day1 = matchDate.substring(6, 8);
			DateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
			try {
				Date date = dateFormat.parse(matchDate);
				Calendar calendar = Calendar.getInstance();
				calendar.setTime(date);
				String day2 = getDay(calendar.get(Calendar.DAY_OF_WEEK));
				matchDate = year + "." + month + "." + day1 + " " + day2;
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			s.setMatchdate(matchDate);
			
			// 시간 변환 작업 (0130 => 01:30)
			String matchTime = s.getMatchtime();
			String hour = matchTime.substring(0, 2);
			String min = matchTime.substring(2,4);
			matchTime = hour + ":" + min;
			s.setMatchtime(matchTime);
			
			// 영어 리그 이름 변환 (epl => 프리미어리그)
			s.setLeagueName(getKorLeagueName(s.getLeagueName()));
			
			// 영어 경기 상태 변환 (CANCEL =>  경기 취소)
			s.setGamestatus(getKorGameStatus(s.getGamestatus()));
		}
		model.addAttribute("gameList", gameList);
		model.addAttribute("myteaminfo", myTeamInfo);
		
		return "myteam";
	}
	
	
	
	public String getDay(int day){
		String tmp="";
		switch(day) {
			case 1: tmp = "(일)";
					 break;
			case 2: tmp = "(월)";
			 		 break;
			case 3: tmp = "(화)";
			 		 break;
			case 4: tmp = "(수)";
	 		 		 break;
			case 5: tmp = "(목)";
			 	 	 break;
			case 6: tmp = "(금)";
				 	 break;
			case 7: tmp = "(토)";
		 	 		 break;
		}
		return tmp;
	}
	
	public String getKorLeagueName(String leagueName) {
		String tmp="";
		switch(leagueName) {
			case "epl":     	tmp = "프리미어리그";
					         	break;
			case "primera": 	tmp = "라리가";
			 		 		 	break;
			case "bundesliga":  tmp = "분데스리가";
			 		 			 break;
			case "seriea": 		 tmp = "세리에 A";
	 		 		 			 break;
			case "ligue1": 		 tmp = "리그 앙";
			 	 	 			 break;
		}
		return tmp;
	}
	
	public String getKorGameStatus(String status) {
		String tmp="";
		switch(status) {
			case "CANCEL":     	tmp = "경기취소";
					         	break;
			case "END": 		tmp = "종료";
			 		 		 	break;
			case "POSTPONE":  	tmp = "연기";
			 		 			break;
			case "BEFORE": 		tmp = "경기전";
	 		 		 			break;
			case "PLAY": 		tmp = "경기중";
			 	 	 			break;
		}
		return tmp;
	}
}
