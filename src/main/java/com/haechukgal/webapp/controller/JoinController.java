package com.haechukgal.webapp.controller;

import javax.annotation.Resource;

import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.haechukgal.webapp.dto.MemberDTO;
import com.haechukgal.webapp.dto.StarDTO;
import com.haechukgal.webapp.service.MemberService;
import com.haechukgal.webapp.service.StarService;

@Controller
public class JoinController {
	
	@Resource private MemberService memberSerivce;
	@Resource private StarService starService;
	
	@RequestMapping("/joinform")
	public String joinform() {
		
		return "joinform";
	}
	
	@RequestMapping("/join")
	public String join(MemberDTO member,StarDTO star) {
		PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
		String encodedPassword = passwordEncoder.encode(member.getPw());
		member.setPw(encodedPassword);
		
		memberSerivce.insertMember(member);
		starService.insertStar(star);
		
		return "redirect:/loginform";
	}
}
