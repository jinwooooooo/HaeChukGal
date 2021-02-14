package com.haechukgal.webapp.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.haechukgal.webapp.dto.GameInfoDTO;
import com.haechukgal.webapp.dto.PlayerInfoDTO;
import com.haechukgal.webapp.dto.TeamInfoDTO;
import com.haechukgal.webapp.service.SoccerInfoService;

@Controller
public class ManagerController {
	private final String USER_AGENT = "Mozilla/5.0";
	
	@Resource private SoccerInfoService soccerInfoService;
	
	@RequestMapping("/managerform")
	public String managerform() {
		return "managerform";
	}

	// http://localhost:8080/gamewrite   : POST 방식
	@RequestMapping(value="/gamewrite", method=RequestMethod.POST)
	public String writeGameInfo(GameInfoDTO gameInfoDTO) {
		System.out.println("season=" + gameInfoDTO.getG_season());
		System.out.println("leagueName=" + gameInfoDTO.getG_leagueName());
		try {
			String leagueName = gameInfoDTO.getG_leagueName();
			String season = gameInfoDTO.getG_season();
			String JSONStr = sendGet("https://sigma-myth-304112.appspot.com/soccerSeason?leagueName="+leagueName+"&season="+season);
			JSONParser parser = new JSONParser();
			Object obj = parser.parse(JSONStr);
			JSONObject JSONObj = (JSONObject) obj;
			// Schedule Key의 value를 JSONObject에 저장.
			JSONObject schedule = (JSONObject)JSONObj.get("schedule");
			// Key를 Collection의 SET에 넣는다. (정렬 안된 상태)
			Set<String> key = schedule.keySet();
			// Set 형식이었던 key들을 list로 바꾼 뒤 정렬. 
			List<String> list = new ArrayList<>(key);
			Collections.sort(list);
			for(String a : list){
//				System.out.println(a);
				JSONArray matchInfoArr = (JSONArray)schedule.get(a);
				for(int i= 0 ; i < matchInfoArr.size() ; i++ ){
					JSONObject matchObj = (JSONObject)matchInfoArr.get(i);
					JSONObject cupObj = (JSONObject)matchObj.get("gameDetailType");
					GameInfoDTO gameInfoDTO2 = new GameInfoDTO();
					gameInfoDTO2.setG_leagueName(leagueName);
					if(matchObj.get("homeTeamName") == null) {
						gameInfoDTO2.setHomename("");
					}else {
						gameInfoDTO2.setHomename((String)matchObj.get("homeTeamName"));
					}
					if(matchObj.get("homeTeamImageUrl") == null) {
						gameInfoDTO2.setHomeimage("");
					}else {
						gameInfoDTO2.setHomeimage((String)matchObj.get("homeTeamImageUrl"));
					}
					if(matchObj.get("awayTeamName") == null) {
						gameInfoDTO2.setAwayname("");
					}else {
						gameInfoDTO2.setAwayname((String)matchObj.get("awayTeamName"));
					}
					if(matchObj.get("awayTeamImageUrl") == null) {
						gameInfoDTO2.setAwayimage("");
					}else {
						gameInfoDTO2.setAwayimage((String)matchObj.get("awayTeamImageUrl"));
					}
					if(matchObj.get("fieldName") == null) {
						gameInfoDTO2.setStadium("");
					}else {
						gameInfoDTO2.setStadium((String)matchObj.get("fieldName"));
					}
					if(matchObj.get("startDate") == null) {
						gameInfoDTO2.setMatchdate("");
					}else {
						gameInfoDTO2.setMatchdate((String)matchObj.get("startDate"));
					}
					if(matchObj.get("startTime") == null) {
						gameInfoDTO2.setMatchtime("");
					}else {
						gameInfoDTO2.setMatchtime((String)matchObj.get("startTime"));
					}
					if((String)matchObj.get("gameStatus") == null) {
						gameInfoDTO2.setGamestatus("");
					}else {
						gameInfoDTO2.setGamestatus((String)matchObj.get("gameStatus"));
					}
					gameInfoDTO2.setG_season(season);
					
					
					if(leagueName.equals("uefacl") || leagueName.equals("facup") || leagueName.equals("uefacup")){
						gameInfoDTO2.setRound(cupObj.get("nameKo").toString());
					}else{
						gameInfoDTO2.setRound(matchObj.get("roundSeq").toString());
					}
					if(matchObj.get("homeWlt") == null){
						gameInfoDTO2.setHomewin("");
						gameInfoDTO2.setAwaywin("");
						gameInfoDTO2.setAwayscore("");
						gameInfoDTO2.setHomescore("");
					}else{
						gameInfoDTO2.setHomewin(matchObj.get("homeWlt").toString());
						gameInfoDTO2.setAwaywin(matchObj.get("awayWlt").toString());
						gameInfoDTO2.setAwayscore(matchObj.get("awayResult").toString());
						gameInfoDTO2.setHomescore(matchObj.get("homeResult").toString());
					}
					soccerInfoService.insertGameInfo(gameInfoDTO2);
				}
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/managerform";
	}
	
	// http://localhost:8080/playerwrite   : POST 방식
	@RequestMapping(value="/playerwrite", method=RequestMethod.POST)
	public String writePlayerInfo(PlayerInfoDTO playerInfoDTO) {
		System.out.println("season=" + playerInfoDTO.getP_season());
		System.out.println("leagueName=" + playerInfoDTO.getP_leagueName());
		try {
			String leagueName = playerInfoDTO.getP_leagueName();
			String season = playerInfoDTO.getP_season(); // 20132014, 20
			String JSONStr = sendGet("https://sigma-myth-304112.appspot.com/totalSoccerPlayerRank?leagueName="+leagueName+"&season="+season);
			JSONParser parser = new JSONParser();
			Object obj = parser.parse(JSONStr);
			JSONObject JSONObj = (JSONObject) obj;
			JSONArray playerArr = (JSONArray)JSONObj.get("list");
			for(int i = 0 ; i < playerArr.size() ; i++){
				JSONObject playerObj = (JSONObject)playerArr.get(i);
				JSONObject playerStatObj = (JSONObject) playerObj.get("stat");
				JSONObject teamObj = (JSONObject) playerObj.get("statTeam");
				PlayerInfoDTO playerInfoDTO2 = new PlayerInfoDTO();
				playerInfoDTO2.setP_leagueName(leagueName);
				playerInfoDTO2.setP_season(season);
				if(playerStatObj.get("ast") == null) {
					playerInfoDTO2.setAssist(-1);
				}else {
					playerInfoDTO2.setAssist(Integer.parseInt(playerStatObj.get("ast").toString()));
				}
				if(playerStatObj.get("gf") == null) {
					playerInfoDTO2.setScore(-1);
				}else {
					playerInfoDTO2.setScore(Integer.parseInt(playerStatObj.get("gf").toString()));
				}
				if(playerStatObj.get("opts") == null) {
					playerInfoDTO2.setAttackPoint(-1);
				}else {
					playerInfoDTO2.setAttackPoint(Integer.parseInt(playerStatObj.get("opts").toString()));
				}
				if(playerStatObj.get("sht") == null) {
					playerInfoDTO2.setShoot(-1);
				}else {
					playerInfoDTO2.setShoot(Integer.parseInt(playerStatObj.get("sht").toString()));
				}
				if(playerStatObj.get("sog") == null) {
					playerInfoDTO2.setShootOnTarget(-1);
				}else {
					playerInfoDTO2.setShootOnTarget(Integer.parseInt(playerStatObj.get("sog").toString()));
				}
				if(playerStatObj.get("fo") == null) {
					playerInfoDTO2.setFoul(-1);
				}else {
					playerInfoDTO2.setFoul(Integer.parseInt(playerStatObj.get("fo").toString()));
				}
				if(playerStatObj.get("yel") == null) {
					playerInfoDTO2.setYellowCard(-1);
				}else {
					playerInfoDTO2.setYellowCard(Integer.parseInt(playerStatObj.get("yel").toString()));
				}
				if(playerStatObj.get("red") == null) {
					playerInfoDTO2.setRedCard(-1);
				}else {
					playerInfoDTO2.setRedCard(Integer.parseInt(playerStatObj.get("red").toString()));
				}
				if(playerStatObj.get("off") == null) {
					playerInfoDTO2.setOffSide(-1);
				}else {
					playerInfoDTO2.setOffSide(Integer.parseInt(playerStatObj.get("off").toString()));
				}
				if(playerStatObj.get("rank") == null) {
					playerInfoDTO2.setRank(-1);
				}else {
					playerInfoDTO2.setRank(Integer.parseInt(playerStatObj.get("rank").toString()));
				}
				if(playerStatObj.get("gp") == null) {
					playerInfoDTO2.setGame(-1);
				}else {
					playerInfoDTO2.setGame(Integer.parseInt(playerStatObj.get("gp").toString()));
				}
				if(playerObj.get("nameKo") == null) {
					playerInfoDTO2.setPlayerName("");
				}else {
					playerInfoDTO2.setPlayerName(playerObj.get("nameKo").toString());
				}
				
				
				if(playerObj.get("imageUrl") == null){
					playerInfoDTO2.setPlayerImage("");
				}else{
					playerInfoDTO2.setPlayerImage(playerObj.get("imageUrl").toString());
				}
				if(teamObj.get("shortNameKo") == null) {
					playerInfoDTO2.setTeamName("");
				}else {
					playerInfoDTO2.setTeamName(teamObj.get("shortNameKo").toString());
				}
				
				soccerInfoService.insertPlayerInfo(playerInfoDTO2);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/managerform";
	}
	
	// http://localhost:8080/teamwrite   : POST 방식	
	@RequestMapping(value="/teamwrite", method=RequestMethod.POST)
	public String writeTeamInfo(TeamInfoDTO teamInfoDTO) {
		System.out.println("season=" + teamInfoDTO.getT_season());
		System.out.println("leagueName=" + teamInfoDTO.getT_leagueName());
		try {
			String leagueName = teamInfoDTO.getT_leagueName();
			String season = teamInfoDTO.getT_season();
			String JSONStr = sendGet("https://sigma-myth-304112.appspot.com/rank?leagueName="+leagueName+"&season="+season);
			JSONParser parser = new JSONParser();
			Object obj = parser.parse(JSONStr);
			JSONObject JSONObj = (JSONObject) obj;
			JSONArray teamArr = (JSONArray)JSONObj.get("list");
			for(int i = 0 ; i < teamArr.size() ; i++){
				JSONObject teamObj = (JSONObject)teamArr.get(i);
				JSONObject teamInfoObj = (JSONObject) teamObj.get("rank");
				TeamInfoDTO teamInfoDTO2 = new TeamInfoDTO();
				if(teamObj.get("shortNameKo") == null) {
					teamInfoDTO2.setTeamName("");
				}else {
					teamInfoDTO2.setTeamName(teamObj.get("shortNameKo").toString());
				}
				if(teamObj.get("imageUrl") == null) {
					teamInfoDTO2.setTeamImage("");
				}else {
					teamInfoDTO2.setTeamImage(teamObj.get("imageUrl").toString());
				}
				if(teamInfoObj.get("rank") == null) {
					teamInfoDTO2.setRank(-1);
				}else {
					teamInfoDTO2.setRank(Integer.parseInt(teamInfoObj.get("rank").toString()));
				}
				if(teamInfoObj.get("game") == null) {
					teamInfoDTO2.setGame(-1);
				}else {
					teamInfoDTO2.setGame(Integer.parseInt(teamInfoObj.get("game").toString()));
				}
				if(teamInfoObj.get("win") == null) {
					teamInfoDTO2.setWin(-1);
				}else {
					teamInfoDTO2.setWin(Integer.parseInt(teamInfoObj.get("win").toString()));
				}
				if(teamInfoObj.get("draw") == null) {
					teamInfoDTO2.setDraw(-1);
				}else {
					teamInfoDTO2.setDraw(Integer.parseInt(teamInfoObj.get("draw").toString()));
				}
				if(teamInfoObj.get("loss") == null) {
					teamInfoDTO2.setLoss(-1);
				}else {
					teamInfoDTO2.setLoss(Integer.parseInt(teamInfoObj.get("loss").toString()));
				}
				if(teamInfoObj.get("gf") == null) {
					teamInfoDTO2.setScore(-1);
				}else {
					teamInfoDTO2.setScore(Integer.parseInt(teamInfoObj.get("gf").toString()));
				}
				if(teamInfoObj.get("ga") == null) {
					teamInfoDTO2.setLossPoint(-1);
				}else {
					teamInfoDTO2.setLossPoint(Integer.parseInt(teamInfoObj.get("ga").toString()));
				}
				if(teamInfoObj.get("gd") == null ) {
					teamInfoDTO2.setGapScore(-1);
				}else {
					teamInfoDTO2.setGapScore(Integer.parseInt(teamInfoObj.get("gd").toString()));
				}
				if(teamInfoObj.get("pts") == null) {
					teamInfoDTO2.setPoint(-1);
				}else {
					teamInfoDTO2.setPoint(Integer.parseInt(teamInfoObj.get("pts").toString()));
				}
				
				teamInfoDTO2.setT_leagueName(leagueName);
				teamInfoDTO2.setT_season(season);
				soccerInfoService.insertTeamInfo(teamInfoDTO2);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/managerform";
	}
	
	// http://localhost:8080/gamedlete   : POST 방식
	@RequestMapping(value="/gamedelete", method=RequestMethod.POST)
	public String deleteGameInfo(GameInfoDTO gameInfoDTO) {
		System.out.println("season=" + gameInfoDTO.getG_season());
		System.out.println("leagueName=" + gameInfoDTO.getG_leagueName());
		soccerInfoService.deleteGameInfo(gameInfoDTO);
		return "redirect:/managerform";		// response.sendRedirect()를 처리해준다!
	}
	
	// http://localhost:8080/playerdelete   : POST 방식
	@RequestMapping(value="/playerdelete", method=RequestMethod.POST)
	public String deletePlayerInfo(PlayerInfoDTO playerInfoDTO) {
		System.out.println("season=" + playerInfoDTO.getP_season());
		System.out.println("leagueName=" + playerInfoDTO.getP_leagueName());
		soccerInfoService.deletePlayerInfo(playerInfoDTO);
		return "redirect:/managerform";		// response.sendRedirect()를 처리해준다!
	}
		
	// http://localhost:8080/teamdelete   : POST 방식
	@RequestMapping(value="/teamdelete", method=RequestMethod.POST)
	public String deleteTeamInfo(TeamInfoDTO teamInfoDTO) {
		System.out.println("season=" + teamInfoDTO.getT_season());
		System.out.println("leagueName=" + teamInfoDTO.getT_leagueName());
		soccerInfoService.deleteTeamInfo(teamInfoDTO);;
		return "redirect:/managerform";		// response.sendRedirect()를 처리해준다!
	}

	
	// HTTP GET request
	private String sendGet(String targetUrl) throws Exception{
		URL url = new URL(targetUrl);
		HttpURLConnection con = (HttpURLConnection) url.openConnection();
		con.setRequestMethod("GET");
		con.setRequestProperty("User-Agent", USER_AGENT);
		
		int responseCode = con.getResponseCode();
		BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream())); 
		String inputLine; 
		StringBuffer response = new StringBuffer();
		
		while ((inputLine = in.readLine()) != null) { 
			response.append(inputLine); 
		} 
		in.close();

		return response.toString();
	}
}// end
