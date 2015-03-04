package com.rmsdt.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.rmsdt.web.model.User;
import com.rmsdt.web.service.AdminService;

@Controller
@RequestMapping(value = "/admin")
@SessionAttributes("user")
public class LoginController {
	
	AdminService adminService;

	@Autowired
	public LoginController(AdminService adminService) {
		this.adminService = adminService;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLogin(Model model) {
		return "admin/login";
	}

	@PreAuthorize("hasRole('ROLE_SUPER_ADMIN')")
	@RequestMapping(value = "/adminHome", method = RequestMethod.GET)
	public String adminHome(Model model) {
		
		String username = SecurityContextHolder.getContext()
				.getAuthentication().getName();
		User user = adminService.findAdminByName(username);
		model.addAttribute(user);
		
		return "admin/adminHome";
	}

	@RequestMapping(value = "loginFailed", method = RequestMethod.GET)
	public String loginFailed(ModelMap model) {
		model.addAttribute("error", "true");

		return "admin/login";
	}

	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(ModelMap model) {
		model.addAttribute("error", "true");

		return "admin/login";
	}
}
