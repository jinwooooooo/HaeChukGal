package com.haechukgal.webapp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.haechukgal.webapp.dao.StarDAO;
import com.haechukgal.webapp.dto.StarDTO;

@Service
public class StarServiceImpl implements StarService{
	
	@Resource private StarDAO starDAO;
	
	@Override
	public void insertStar(StarDTO starDTO) {
		starDAO.insertStar(starDTO);
	}
	
	@Override
	public void updateStar(StarDTO star) {
		starDAO.updateStar(star);
	}
}
