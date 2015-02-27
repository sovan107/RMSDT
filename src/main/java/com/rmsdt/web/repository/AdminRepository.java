package com.rmsdt.web.repository;

import com.rmsdt.web.model.User;

public interface AdminRepository {
	
	public User findAdminByID(Integer id);
	public User findAdminByName(String name);
	public User saveAdmin(User user);
	public User findAdminCampaignByID(int id);
}
