package com.haechukgal.webapp.dao;

import com.haechukgal.webapp.dto.StarDTO;

public interface StarDAO {
	public void insertStar(StarDTO starDTO);

	public void updateStar(StarDTO star);
}