package com.rmsdt.web.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ValidationUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.rmsdt.web.controller.util.JsonResponse;
import com.rmsdt.web.form.util.FormUtil;
import com.rmsdt.web.model.Address;
import com.rmsdt.web.model.Campaigns;
import com.rmsdt.web.model.Events;
import com.rmsdt.web.model.User;
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

	@RequestMapping(value = "/addEvent/{campId}", method = RequestMethod.GET)
	public String addEvent(@PathVariable("campId") int campId, Model model,
			HttpSession session) {
		Events event = new Events();
		User user = getCurrentUser(session);
		Campaigns campaign = campaignService.findCampaignByUserCampaignID(
				user.getId(), campId);
		event.setCampaign(campaign);
		// Campaigns campaign = campaignService.findCampaignEventsByID(campId);
		// campaign.addEvents(events);

		model.addAttribute("events", event);
		return "admin/addEvent";
	}

	@RequestMapping(value = "/addEvent/{campId}", method = RequestMethod.POST)
	public String addEventPost(@ModelAttribute("events") @Valid Events events,
			BindingResult result, @PathVariable("campId") int campId,
			HttpSession session) throws IOException {

		// Set creation data and validate.
		events.setCreationDate(new DateTime());

		if (result.hasErrors()) {
			return "admin/addEvent";
		} else {
			eventService.saveEvent(events);
			return "redirect:/common/viewAllEvent/" + campId;
		}
	}

	@RequestMapping(value = "/addAddress/{eventId}", method = RequestMethod.GET)
	public String addEventAddress(@PathVariable("eventId") int eventId,
			Model model, HttpSession session) {

		Events event = eventService.findEventById(eventId);
		model.addAttribute("event", event);

		return "admin/addAddress";
	}

	@RequestMapping(value = "/addAddress/{eventId}", method = RequestMethod.POST)
	public @ResponseBody JsonResponse addEventAddressPost(
			@PathVariable("eventId") int eventId,
			@ModelAttribute(value = "address") @Valid Address address,
			BindingResult result) {

		JsonResponse jResponse = new JsonResponse();

		if (result.hasErrors()) {
			jResponse.setErrors(result.getAllErrors());
			jResponse.setStatus("fail");
		} else {
			address.setId(address.getAjaxId());
			Events event = eventService.findEventById(eventId);
			address.setEvent(event);
			eventService.saveAddress(address);
			// Response using json
			jResponse.setId(address.getId());
			jResponse.setStatus("success");
		}

		return jResponse;
	}

	@RequestMapping(value = "/getAddressForm/{formLen}", method = RequestMethod.GET)
	public @ResponseBody JsonResponse getAddressFormGET(
			@PathVariable("formLen") int formLen) {

		String form = new FormUtil().getAddressFrom(formLen + 1);

		// Response using json
		JsonResponse jResponse = new JsonResponse();
		jResponse.setForm(form);

		return jResponse;
	}
	
	@RequestMapping(value = "/viewAllEvent/{id}", method = RequestMethod.GET)
	public String viewAllEvent(@PathVariable("id") int campId, Model model,
			HttpSession session) {
		User user = getCurrentUser(session);
		
		Campaigns campaign = campaignService.findCampaignEventsByUserID(user.getId(), campId);

		model.addAttribute("campaign", campaign);
		return "common/viewAllEvent";
	}
	

	/**
	 * Get user from session
	 * 
	 * @param session
	 * @return
	 */
	private User getCurrentUser(HttpSession session) {
		return (User) session.getAttribute("user");
	}
}
