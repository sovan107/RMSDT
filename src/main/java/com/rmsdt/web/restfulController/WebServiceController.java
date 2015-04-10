package com.rmsdt.web.restfulController;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.joda.JodaModule;
import com.rmsdt.web.model.Campaigns;
import com.rmsdt.web.model.Events;
import com.rmsdt.web.service.CampaignService;
import com.rmsdt.web.service.CommonService;
import com.rmsdt.web.service.EventService;

@Controller
public class WebServiceController {

	CommonService commonService;
	CampaignService campaignService;
	EventService eventService;

	@Autowired
	public WebServiceController(CommonService commonService,
			CampaignService campaignService, EventService eventService) {
		this.commonService = commonService;
		this.campaignService = campaignService;
		this.eventService = eventService;
	}

	@RequestMapping(value = "/campaigns", method = RequestMethod.GET)
	public @ResponseBody List<Campaigns> viewAllCampaign(Model model,
			HttpSession session) {

		return campaignService.findAllCampaignsEvents();
	}

}
