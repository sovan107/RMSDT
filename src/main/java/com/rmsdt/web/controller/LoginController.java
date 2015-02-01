package com.rmsdt.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/admin")
public class LoginController {

	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String showLogin(Model model) {
		return "admin/login";
	}
	
	@RequestMapping(value="/adminHome", method = RequestMethod.GET)
	public String adminHome(Model model) {
		return "admin/adminHome";
	}
}
