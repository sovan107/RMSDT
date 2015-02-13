package com.rmsdt.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rmsdt.web.model.Campaigns;
import com.rmsdt.web.model.Events;
import com.rmsdt.web.service.CampaignService;
import com.rmsdt.web.service.CommonService;
import com.rmsdt.web.service.EventService;

@Controller
@RequestMapping(value = "/common")
public class CommonController {

	CommonService commonService;
	CampaignService campaignService;
	EventService eventService;

	@Autowired
	public CommonController(CommonService commonService,
			CampaignService campaignService, EventService eventService) {
		this.commonService = commonService;
		this.campaignService = campaignService;
		this.eventService = eventService;
	}

	@InitBinder
	public void setAllowedFields(WebDataBinder dataBinder) {
		dataBinder.setDisallowedFields("id");
	}

	@RequestMapping(value = "/campaignImage/{id}", method = RequestMethod.GET)
	@ResponseBody
	public byte[] getCampaignImage(@PathVariable("id") int id) {
		return commonService.findCampaignImageByID(id);
	}

	@RequestMapping(value = "/viewAllCampaign", method = RequestMethod.GET)
	public String viewAllCampaign(Model model, HttpSession session) {
		List<Campaigns> campaigns = campaignService.findAllCampaigns();

		model.addAttribute("campaigns", campaigns);
		return "common/viewAllCampaign";
	}

	@RequestMapping(value = "/viewAllEvent/{id}", method = RequestMethod.GET)
	public String viewAllEvent(@PathVariable("id") int campId, Model model,
			HttpSession session) {
		Campaigns campaign = campaignService.findCampaignEventsByID(campId);

		model.addAttribute("campaign", campaign);
		return "common/viewAllEvent";
	}

}
