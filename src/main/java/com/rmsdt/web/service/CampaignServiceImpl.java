package com.rmsdt.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rmsdt.web.model.Campaigns;
import com.rmsdt.web.repository.CampaignRepository;

@Service("campaignService")
public class CampaignServiceImpl implements CampaignService {

	CampaignRepository campaignRepo;

	@Autowired
	public CampaignServiceImpl(CampaignRepository campaignRepo) {
		this.campaignRepo = campaignRepo;
	}

	@Override
	@Transactional
	public void saveCampaign(Campaigns campaign) {
		campaignRepo.save(campaign);

	}

	@Override
	public List<Campaigns> findAllCampaignByAdminID(int id) {
		return campaignRepo.findAllCampaignByAdminID(id);
	}

	@Override
	public Campaigns findCampaignByID(int campaignId) {
		return campaignRepo.findCampaignByID(campaignId);
	}

}
