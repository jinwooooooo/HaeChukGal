package com.haechukgal.webapp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.haechukgal.webapp.dto.MemberDTO;
import com.haechukgal.webapp.dto.StarDTO;
import com.haechukgal.webapp.service.BoardService;
import com.haechukgal.webapp.service.MemberService;
import com.haechukgal.webapp.service.SoccerInfoService;
import com.haechukgal.webapp.service.StarService;

@Controller
public class SettingController {
	
	@Resource private MemberService memberSerivce;
	@Resource private StarService starService;
	@Resource private SoccerInfoService soccerInfoService;
	@Resource private BoardService boardService;
	
	@RequestMapping("/settingform")
	public String settingform(Model model) {
		
		List<String> epl = soccerInfoService.searchLikeTeam("epl");	// 프리미어리그
		List<String> laliga = soccerInfoService.searchLikeTeam("primera");	// 라리가
		List<String> bundesliga  = soccerInfoService.searchLikeTeam("bundesliga"); // 분데스리가
		List<String> seriea = soccerInfoService.searchLikeTeam("seriea"); // 세리에 A
		List<String> ligue1 = soccerInfoService.searchLikeTeam("ligue1"); // 리그앙
		model.addAttribute("epl", epl);
		model.addAttribute("laliga", laliga);
		model.addAttribute("bundesliga", bundesliga);
		model.addAttribute("seriea", seriea);
		model.addAttribute("ligue1", ligue1);
		
		return "settingform";
	}
	
	@RequestMapping("/setting")
	public String setting(MemberDTO member, StarDTO star, HttpServletRequest request) {
		
		PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
		String encodedPassword = passwordEncoder.encode(member.getPw());
		member.setPw(encodedPassword);
		
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("name");
		member.setName(name);
		
		star.setMember_no(boardService.selectNoByName(name));
		
		memberSerivce.updateMember(member);
		starService.updateStar(star);
		
		return "redirect:/index";
	}
}
