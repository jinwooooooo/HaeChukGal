package com.haechukgal.webapp.dao;

import com.haechukgal.webapp.dto.MemberDTO;

public interface MemberDAO {
	public void insertMember(MemberDTO memberDTO);
	public void updateMember(MemberDTO member);
}
