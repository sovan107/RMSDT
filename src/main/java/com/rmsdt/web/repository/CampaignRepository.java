package com.rmsdt.web.repository;

import java.util.List;

import com.rmsdt.web.model.Campaigns;

public interface CampaignRepository {

	void save(Campaigns campaign);

	List<Campaigns> findAllCampaignByAdminID(int id);

	Campaigns findCampaignByID(int campaignId);

}