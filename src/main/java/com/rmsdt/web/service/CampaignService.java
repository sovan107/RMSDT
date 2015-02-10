package com.rmsdt.web.service;

import java.util.List;

import com.rmsdt.web.model.Campaigns;

public interface CampaignService {

	void saveCampaign(Campaigns campaign);

	List<Campaigns> findAllCampaignByAdminID(int id);

	Campaigns findCampaignByID(int campaignId);

}
