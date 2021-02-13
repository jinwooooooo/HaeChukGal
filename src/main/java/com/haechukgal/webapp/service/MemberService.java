package com.haechukgal.webapp.service;

import com.haechukgal.webapp.dto.MemberDTO;

public interface MemberService {
	public void insertMember(MemberDTO memberDTO);
	public void updateMember(MemberDTO member);
}