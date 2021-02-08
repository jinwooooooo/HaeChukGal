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
public class ManageController {
	private final String USER_AGENT = "Mozilla/5.0";
	
	@Resource private SoccerInfoService soccerInfoService;
	
	@RequestMapping("/manageform")
	public String manageform() {
		return "manageform";
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
					gameInfoDTO2.setHomename((String)matchObj.get("homeTeamName"));
					gameInfoDTO2.setHomeimage((String)matchObj.get("homeTeamImageUrl"));
					gameInfoDTO2.setAwayname((String)matchObj.get("awayTeamName"));
					gameInfoDTO2.setAwayimage((String)matchObj.get("awayTeamImageUrl"));
					gameInfoDTO2.setStadium((String)matchObj.get("fieldName"));
					gameInfoDTO2.setMatchdate((String)matchObj.get("startDate"));
					gameInfoDTO2.setG_season(season);
					gameInfoDTO2.setMatchtime((String)matchObj.get("startTime"));
					gameInfoDTO2.setGamestatus((String)matchObj.get("gameStatus"));
					if(leagueName == "uefacl" || leagueName == "facup" || leagueName == "uefacup"){
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
					System.out.println(gameInfoDTO2);
					soccerInfoService.insertGameInfo(gameInfoDTO2);
				}
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/";
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
				playerInfoDTO2.setAssist(Integer.parseInt(playerStatObj.get("ast").toString()));
				playerInfoDTO2.setScore(Integer.parseInt(playerStatObj.get("gf").toString()));
				playerInfoDTO2.setAttackPoint(Integer.parseInt(playerStatObj.get("opts").toString()));
				playerInfoDTO2.setShoot(Integer.parseInt(playerStatObj.get("sht").toString()));
				playerInfoDTO2.setShootOnTarget(Integer.parseInt(playerStatObj.get("sog").toString()));
				playerInfoDTO2.setFoul(Integer.parseInt(playerStatObj.get("fo").toString()));
				playerInfoDTO2.setYellowCard(Integer.parseInt(playerStatObj.get("yel").toString()));
				playerInfoDTO2.setRedCard(Integer.parseInt(playerStatObj.get("red").toString()));
				playerInfoDTO2.setOffSide(Integer.parseInt(playerStatObj.get("off").toString()));
				playerInfoDTO2.setRank(Integer.parseInt(playerStatObj.get("rank").toString()));
				playerInfoDTO2.setGame(Integer.parseInt(playerStatObj.get("gp").toString()));
				playerInfoDTO2.setPlayerName(playerObj.get("nameKo").toString());
				if(playerObj.get("imageUrl") == null){
					playerInfoDTO2.setPlayerImage("");
				}else{
					playerInfoDTO2.setPlayerImage(playerObj.get("imageUrl").toString());
				}
				playerInfoDTO2.setTeamName(teamObj.get("shortNameKo").toString());
				System.out.println(playerInfoDTO2);
				soccerInfoService.insertPlayerInfo(playerInfoDTO2);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/";
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
				teamInfoDTO2.setTeamName(teamObj.get("shortNameKo").toString());
				teamInfoDTO2.setTeamImage(teamObj.get("imageUrl").toString());
				teamInfoDTO2.setRank(Integer.parseInt(teamInfoObj.get("rank").toString()));
				teamInfoDTO2.setGame(Integer.parseInt(teamInfoObj.get("game").toString()));
				teamInfoDTO2.setWin(Integer.parseInt(teamInfoObj.get("win").toString()));
				teamInfoDTO2.setDraw(Integer.parseInt(teamInfoObj.get("draw").toString()));
				teamInfoDTO2.setLoss(Integer.parseInt(teamInfoObj.get("loss").toString()));
				teamInfoDTO2.setScore(Integer.parseInt(teamInfoObj.get("gf").toString()));
				teamInfoDTO2.setLossPoint(Integer.parseInt(teamInfoObj.get("ga").toString()));
				teamInfoDTO2.setGapScore(Integer.parseInt(teamInfoObj.get("gd").toString()));
				teamInfoDTO2.setPoint(Integer.parseInt(teamInfoObj.get("pts").toString()));
				teamInfoDTO2.setT_leagueName(leagueName);
				teamInfoDTO2.setT_season(season);
				System.out.println(teamInfoDTO2);
				soccerInfoService.insertTeamInfo(teamInfoDTO2);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/";
	}
	
	// http://localhost:8080/gamedlete   : POST 방식
	@RequestMapping(value="/gamedelete", method=RequestMethod.POST)
	public String deleteGameInfo(GameInfoDTO gameInfoDTO) {
		System.out.println("season=" + gameInfoDTO.getG_season());
		System.out.println("leagueName=" + gameInfoDTO.getG_leagueName());
		soccerInfoService.deleteGameInfo(gameInfoDTO);
		return "redirect:/";		// response.sendRedirect()를 처리해준다!
	}
	
	// http://localhost:8080/playerdelete   : POST 방식
	@RequestMapping(value="/playerdelete", method=RequestMethod.POST)
	public String deletePlayerInfo(PlayerInfoDTO playerInfoDTO) {
		System.out.println("season=" + playerInfoDTO.getP_season());
		System.out.println("leagueName=" + playerInfoDTO.getP_leagueName());
		soccerInfoService.deletePlayerInfo(playerInfoDTO);
		return "redirect:/";		// response.sendRedirect()를 처리해준다!
	}
		
	// http://localhost:8080/teamdelete   : POST 방식
	@RequestMapping(value="/teamdelete", method=RequestMethod.POST)
	public String deleteTeamInfo(TeamInfoDTO teamInfoDTO) {
		System.out.println("season=" + teamInfoDTO.getT_season());
		System.out.println("leagueName=" + teamInfoDTO.getT_leagueName());
		soccerInfoService.deleteTeamInfo(teamInfoDTO);;
		return "redirect:/";		// response.sendRedirect()를 처리해준다!
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
