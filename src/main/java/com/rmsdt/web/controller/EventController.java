package com.rmsdt.web.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.rmsdt.web.model.Campaigns;
import com.rmsdt.web.model.Events;
import com.rmsdt.web.service.AdminService;
import com.rmsdt.web.service.CampaignService;
import com.rmsdt.web.service.EventService;

@Controller
@RequestMapping(value = "/admin/event")
@SessionAttributes(types = Events.class)
public class EventController {

	AdminService adminService;
	EventService eventService;
	CampaignService campaignService;

	@Autowired
	public EventController(AdminService adminService,
			EventService eventService, CampaignService campaignService) {
		this.adminService = adminService;
		this.eventService = eventService;
		this.campaignService = campaignService;
	}

	@InitBinder
	public void setAllowedFields(WebDataBinder dataBinder) {
		dataBinder.setDisallowedFields("id");
	}

	@RequestMapping(value = "/addEvent/{adminId}/{campId}", method = RequestMethod.GET)
	public String addEvent(@PathVariable("adminId") int adminId,
			@PathVariable("campId") int campId, Model model, HttpSession session) {
		Events events = new Events();
		
		Campaigns campaign = campaignService.findCampaignEventsByID(campId);
		campaign.addEvents(events);
		
		model.addAttribute("events", events);
		return "admin/addEvent";
	}

	@RequestMapping(value = "/addEvent/{adminId}/{campId}", method = RequestMethod.POST)
	public String addEventPost(@ModelAttribute("events") Events events,@PathVariable("adminId") int adminId,
			@PathVariable("campId") int campId, 
			HttpSession session) throws IOException {

		// Add creation date
		events.setCreationDate(new DateTime());

		eventService.saveEvent(events);

		return "redirect:/admin/campaign/viewAllCampaign/" + adminId;
	}
}
