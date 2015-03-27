package com.rmsdt.web.repository;

import java.util.List;

import com.rmsdt.web.model.Campaigns;
import com.rmsdt.web.model.User;

public interface CampaignRepository {

	void save(Campaigns campaign);

	List<Campaigns> findAllCampaignByAdminID(int id);

	Campaigns findCampaignByID(int campaignId);

	List<Campaigns> findAllCampaigns();

	Campaigns findSimpleCampaignByID(int campId);

	Campaigns findCampaignEventsByID(int campaignId);

	void deleteCampaign(int adminId, int campaignId);

	Campaigns findCampaignByUserCampaignID(int userId, int campaignId);

	Campaigns findCampaignEventsByUserID(int userId, int campId);

	User findAllCampaignByAdminID1(int id);

}
