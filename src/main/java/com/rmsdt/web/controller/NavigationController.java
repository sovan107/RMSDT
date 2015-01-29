package com.rmsdt.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class NavigationController {

	private static final Logger logger = LoggerFactory
			.getLogger(NavigationController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "home";
	}
	
	@RequestMapping(value = "/objective", method = RequestMethod.GET)
	public String showObjective(Model model) {
		return "objective";
	}
	
	@RequestMapping(value = "/gallery", method = RequestMethod.GET)
	public String showGallery(Model model) {
		return "gallery";
	}
	
	@RequestMapping(value = "/family_tree", method = RequestMethod.GET)
	public String showFamilyTree(Model model) {
		return "familyTree";
	}
	
	@RequestMapping(value = "/contacts", method = RequestMethod.GET)
	public String showContacts(Model model) {
		return "contact";
	}

}
