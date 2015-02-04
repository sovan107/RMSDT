package com.rmsdt.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rmsdt.web.model.User;
import com.rmsdt.web.repository.AdminRepository;

/**
 * @author Clarence
 *
 */
@Service("adminService")
public class AdminServiceImpl implements AdminService {

	AdminRepository adminRepo;

	@Autowired
	public AdminServiceImpl(AdminRepository adminRepo) {
		this.adminRepo = adminRepo;
	}

	@Override
	@Transactional
	public User findAdminByID(Integer id) {
		return adminRepo.findAdminByID(id);
	}

	@Override
	@Transactional
	public User findAdminByName(String name) {
		return adminRepo.findAdminByName(name);
	}

	@Override
	@Transactional
	public User saveAdmin(User user) {
		return adminRepo.saveAdmin(user);
	}

}
