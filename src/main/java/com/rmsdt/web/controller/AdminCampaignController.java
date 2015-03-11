package com.rmsdt.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.validation.Valid;

import org.apache.commons.io.IOUtils;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
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

	@PreAuthorize("hasRole('ROLE_SUPER_ADMIN')")
	@RequestMapping(value = "/viewAllCampaign", method = RequestMethod.GET)
	public String viewAllCampaign(Model model, HttpSession session) {

		User currentUser = getCurrentUser(session);
		int id = currentUser.getId();

		List<Campaigns> campaigns = campaignService
				.findAllCampaignByAdminID(id);

		model.addAttribute("campaigns", campaigns);
		model.addAttribute("userId", id);
		return "common/viewAllCampaign";
	}

	@PreAuthorize("hasRole('ROLE_SUPER_ADMIN')")
	@RequestMapping(value = "/viewAllCampaignList", method = RequestMethod.GET)
	public String viewAllCampaignList(Model model, HttpSession session) {
		User currentUser = getCurrentUser(session);
		int id = currentUser.getId();

		List<Campaigns> campaigns = campaignService
				.findAllCampaignByAdminID(id);

		model.addAttribute("campaigns", campaigns);
		return "common/viewAllCampaignList";
	}

	@PreAuthorize("hasRole('ROLE_SUPER_ADMIN')")
	@RequestMapping(value = "/newCampaign/{id}", method = RequestMethod.GET)
	public String addNewCampaign(@PathVariable("id") int id, Model model,
			HttpSession session) {

		Campaigns campaign = new Campaigns();
		User user = adminService.findAdminCampaignByID(id);
		user.addCampaign(campaign);
		model.addAttribute("campaigns", campaign);
		return "admin/addCampaign";
	}

	@PreAuthorize("hasRole('ROLE_SUPER_ADMIN')")
	@RequestMapping(value = "/newCampaign/{id}", method = RequestMethod.POST)
	public String addNewCampaignPost(
			@ModelAttribute @Valid Campaigns campaigns, BindingResult result,
			@PathVariable("id") int id,
			@RequestPart("image") Part campaignImage, HttpSession session)
			throws IOException {

		if (campaignImage != null && campaignImage.getSize() != 0) {
			campaigns.setCampaignImage(IOUtils.toByteArray(campaignImage
					.getInputStream()));
		} else {
			ValidationUtils.rejectIfEmpty(result, "campaignImage",
					"validation.image.select");
		}

		if (result.hasErrors()) {
			return "admin/addCampaign";
		} else {
			campaigns.setCreationDate(new DateTime());
			campaignService.saveCampaign(campaigns);
			return "redirect:/admin/campaign/viewAllCampaign/"
					+ campaigns.getUser().getId();
		}
	}

	@PreAuthorize("hasRole('ROLE_SUPER_ADMIN')")
	@RequestMapping(value = "/editCampaign/{campaignId}", method = RequestMethod.GET)
	public String editCampaign(@PathVariable("campaignId") int campaignId,
			Model model, HttpSession session) {
		User user = getCurrentUser(session);

		Campaigns campaign = campaignService.findCampaignByUserCampaignID(
				user.getId(), campaignId);

		if (campaign == null) {
			throw new NullPointerException("No Campaign found..........");
		}

		model.addAttribute("campaigns", campaign);
		return "admin/addCampaign";
	}

	@PreAuthorize("hasRole('ROLE_SUPER_ADMIN')")
	@RequestMapping(value = "/editCampaign/{campaignId}", method = RequestMethod.POST)
	public String editCampaignPost(@ModelAttribute @Valid Campaigns campaign,
			BindingResult result, @PathVariable("campaignId") int campaignId,
			@RequestPart("image") Part campaignImage) throws IOException {

		if (campaignImage != null && campaignImage.getSize() != 0) {
			campaign.setCampaignImage(IOUtils.toByteArray(campaignImage
					.getInputStream()));
		} else {
			ValidationUtils.rejectIfEmpty(result, "campaignImage",
					"validation.image.select");
		}

		if (result.hasErrors()) {
			return "admin/addCampaign";
		} else {
			campaign.setModificationDate(new DateTime());
			campaignService.saveCampaign(campaign);
			return "redirect:/admin/campaign/viewAllCampaignList";
		}
	}

	@PreAuthorize("hasRole('ROLE_SUPER_ADMIN')")
	@RequestMapping(value = "/deleteCampaign/{campaignId}", method = RequestMethod.GET)
	public String deleteCampaignPost(@PathVariable("campaignId") int campaignId, HttpSession session)
			throws IOException {
		
		User user = getCurrentUser(session);

		campaignService.deleteCampaign(user.getId(), campaignId);
		return "redirect:/admin/campaign/viewAllCampaignList";
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
