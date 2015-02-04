package com.rmsdt.web.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.rmsdt.web.model.User;
import com.rmsdt.web.service.AdminService;

@Controller
@RequestMapping(value = "/admin")
@SessionAttributes(types = User.class)
public class AdminController {

	AdminService adminService;

	@Autowired
	public AdminController(AdminService adminService) {
		this.adminService = adminService;
	}

	@InitBinder
	public void setAllowedFields(WebDataBinder dataBinder) {
		dataBinder.setDisallowedFields("id");
	}

	@RequestMapping(value = "/viewDetails", method = RequestMethod.GET)
	public String viewDetails(Map<String, Object> model, HttpSession session) {
		User user = (User) session.getAttribute("user");
		model.put("user", user);
		return "admin/viewAdminDetails";
	}

	@RequestMapping(value = "/editDetails", method = RequestMethod.GET)
	public String editDetails(Map<String, Object> model, HttpSession session) {
		User user = (User) session.getAttribute("user");
		User user1 = adminService.findAdminByID(user.getId());
		model.put("user", user1);
		return "admin/addAdminDetails";
	}

	@RequestMapping(value = "/editDetails", method = RequestMethod.POST)
	public String editDetailsPost(@Valid User user, BindingResult result, HttpSession session) {
		if(result.hasErrors()){
			return "admin/addAdminDetails";
		}else{
		user = adminService.saveAdmin(user);
		return "redirect:/admin/" + user.getId();
		}
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String viewAdminByID(@PathVariable("id") int id,
			Model model) {
		User user = adminService.findAdminByID(id);
		model.addAttribute("user", user);
		return "admin/viewAdminDetails";
	}
}
