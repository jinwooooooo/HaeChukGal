package com.haechukgal.webapp.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.haechukgal.webapp.dto.GameInfoDTO;
import com.haechukgal.webapp.dto.MyTeamInfoDTO;
import com.haechukgal.webapp.dto.ScheduleTeamNameDTO;
import com.haechukgal.webapp.service.SoccerInfoService;

@Controller
public class ScheduleController {
	@Resource private SoccerInfoService soccerInfoService;
	
	
	@RequestMapping("/schedule")
	public String schedule(Model model) {
		// 시즌 별 팀이름 불러오는 부분
//		List<ScheduleTeamNameDTO> epl = soccerInfoService.searchScheduleTeam("epl");
//		for(ScheduleTeamNameDTO s : epl) {
//			System.out.println(s.getTeamName());
//		}
//		model.addAttribute("epl", epl);
		
		
		// 시즌 별 리그 월 정보 가져오는 부분
		List<String> monthArr = new ArrayList();
		List<String> monthArr2 = new ArrayList();
		GameInfoDTO gameInfoDTO = new GameInfoDTO();
		gameInfoDTO.setG_leagueName("epl");
		gameInfoDTO.setG_season("20202021");
		List<MyTeamInfoDTO> seasonMonth = soccerInfoService.searchScheduleSeason(gameInfoDTO);
		for(MyTeamInfoDTO s : seasonMonth) {
			String matchDate = s.getMatchdate();
			String year = matchDate.substring(0, 4);
			String month = matchDate.substring(4, 6);
			String day1 = matchDate.substring(6, 8);
			if(!monthArr.contains(month)) {
				monthArr.add(month);
			}
		}
		for(String s:monthArr) {
			if(s.charAt(0) == '0') {
				s = s.substring(1, 2);
			}
			monthArr2.add(s);
		}
		
		model.addAttribute("montharr", monthArr2);
		
		//  시즌, 월, 경기일자('202102%')를 넣어 월 경기를 가져옴 
		GameInfoDTO gameInfoDTO2 = new GameInfoDTO();
		gameInfoDTO2.setG_leagueName("epl");
		gameInfoDTO2.setG_season("20202021");
		gameInfoDTO2.setMatchdate("202102%");
		List<MyTeamInfoDTO> gameList = soccerInfoService.searchScheduleMonth(gameInfoDTO2);
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
		
		return "schedule";
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
