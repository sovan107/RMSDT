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
import com.rmsdt.web.service.CampaignService;
import com.rmsdt.web.service.CommonService;

@Controller
@RequestMapping(value = "/common")
public class CommonController {

	CommonService commonService;
	CampaignService campaignService;

	@Autowired
	public CommonController(CommonService commonService,
			CampaignService campaignService) {
		this.commonService = commonService;
		this.campaignService = campaignService;
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
		List<Campaigns> campaigns = campaignService
				.findAllCampaigns();

		model.addAttribute("campaigns", campaigns);
		return "common/viewAllCampaign";
	}

}
