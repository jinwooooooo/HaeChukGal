package com.haechukgal.webapp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.haechukgal.webapp.dao.MemberDAO;
import com.haechukgal.webapp.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService{
	@Resource private MemberDAO memberDAO;
	
	@Override
	public void insertMember(MemberDTO memberDTO) {
		memberDAO.insertMember(memberDTO);
	}
}
