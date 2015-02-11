package com.rmsdt.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.io.IOUtils;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.rmsdt.web.model.Campaigns;
import com.rmsdt.web.model.User;
import com.rmsdt.web.service.AdminService;
import com.rmsdt.web.service.CampaignService;

@Controller
@RequestMapping(value = "/admin/campaign")
@SessionAttributes(types = Campaigns.class)
public class AdminCampaignController {

	AdminService adminService;
	CampaignService campaignService;

	@Autowired
	public AdminCampaignController(AdminService adminService,
			CampaignService campaignService) {
		this.adminService = adminService;
		this.campaignService = campaignService;
	}

	@InitBinder
	public void setAllowedFields(WebDataBinder dataBinder) {
		dataBinder.setDisallowedFields("id");
	}

	@RequestMapping(value = "/viewAllCampaign/{id}", method = RequestMethod.GET)
	public String viewAllCampaign(@PathVariable("id") int id, Model model,
			HttpSession session) {
		List<Campaigns> campaigns = campaignService
				.findAllCampaignByAdminID(id);

		model.addAttribute("campaigns", campaigns);
		return "common/viewAllCampaign";
	}

	@RequestMapping(value = "/newCampaign/{id}", method = RequestMethod.GET)
	public String addNewCampaign(@PathVariable("id") int id, Model model,
			HttpSession session) {
		Campaigns campaign = new Campaigns();
		model.addAttribute("campaigns", campaign);
		return "admin/addCampaign";
	}

	@RequestMapping(value = "/newCampaign/{id}", method = RequestMethod.POST)
	public String addNewCampaignPost(@ModelAttribute Campaigns campaigns,
			@PathVariable("id") int id,
			@RequestPart("image") Part campaignImage, HttpSession session)
			throws IOException {

		User user = adminService.findAdminCampaignByID(id);

		if (campaignImage != null && campaignImage.getSize() != 0) {
			campaigns.setCampaignImage(IOUtils.toByteArray(campaignImage
					.getInputStream()));
		}
		campaigns.setCreationDate(new DateTime());
		user.addCampaign(campaigns);
		campaignService.saveCampaign(campaigns);
		return "redirect:/admin/campaign/viewAllCampaign/" + user.getId();
	}

	@RequestMapping(value = "/editCampaign/{adminId}/{campaignId}", method = RequestMethod.GET)
	public String editCampaign(@PathVariable("adminId") int adminId,
			@PathVariable("campaignId") int campaignId, Model model) {

		Campaigns campaign = campaignService.findCampaignByID(campaignId);
		model.addAttribute("campaigns", campaign);
		return "admin/addCampaign";
	}

	@RequestMapping(value = "/editCampaign/{adminId}/{campaignId}", method = RequestMethod.POST)
	public String editCampaignPost(@ModelAttribute Campaigns campaign,
			@PathVariable("adminId") int adminId,
			@PathVariable("campaignId") int campaignId,
			@RequestPart("image") Part campaignImage) throws IOException {


		if (campaignImage != null && campaignImage.getSize() != 0) {
			campaign.setCampaignImage(IOUtils.toByteArray(campaignImage
					.getInputStream()));
		}
		campaign.setModificationDate(new DateTime());
		campaignService.saveCampaign(campaign);
		return "redirect:/admin/campaign/viewAllCampaign/" + adminId;
	}
}
