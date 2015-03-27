package com.rmsdt.web.service;

import java.util.List;

import com.rmsdt.web.model.Campaigns;
import com.rmsdt.web.model.User;

public interface CampaignService {

	void saveCampaign(Campaigns campaign);

	List<Campaigns> findAllCampaignByAdminID(int id);
	
	List<Campaigns> findAllCampaigns();

	Campaigns findCampaignByID(int campaignId);

	Campaigns findSimpleCampaignByID(int campId);

	Campaigns findCampaignEventsByID(int campId);

	void deleteCampaign(int adminId, int campaignId);

	Campaigns findCampaignByUserCampaignID(int userId, int campaignId);

	Campaigns findCampaignEventsByUserID(int id, int campId);

	User findAllCampaignByAdminID1(int id);

}
