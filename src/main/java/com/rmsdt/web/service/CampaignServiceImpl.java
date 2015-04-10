package com.rmsdt.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.Caching;
import org.springframework.cache.ehcache.EhCacheCacheManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rmsdt.web.model.Campaigns;
import com.rmsdt.web.model.User;
import com.rmsdt.web.repository.CampaignRepository;

@Service("campaignService")
public class CampaignServiceImpl implements CampaignService {

	CampaignRepository campaignRepo;

	EhCacheCacheManager cacheManager;

	@Autowired
	public CampaignServiceImpl(CampaignRepository campaignRepo,
			EhCacheCacheManager cacheManager) {
		this.campaignRepo = campaignRepo;
		this.cacheManager = cacheManager;
	}

	@Override
	@Caching(evict = { @CacheEvict(value = "commonCampaigns", key="0"),
			@CacheEvict(value = "campaigns", key = "#campaign.user.id") })
	@Transactional
	public void saveCampaign(Campaigns campaign) {
		campaignRepo.save(campaign);

	}

	@Override
	@Transactional(readOnly = true)
	public List<Campaigns> findAllCampaignByAdminID(int id) {
		return campaignRepo.findAllCampaignByAdminID(id);
	}

	@Override
	@Cacheable(value = "campaigns", key = "#id")
	@Transactional(readOnly = true)
	public User findAllCampaignByAdminID1(int id) {
		return campaignRepo.findAllCampaignByAdminID1(id);
	}

	@Override
	@Transactional
	public Campaigns findCampaignByID(int campaignId) {
		return campaignRepo.findCampaignByID(campaignId);
	}

	@Override
	@Transactional
	public List<Campaigns> findAllCampaigns() {
		return campaignRepo.findAllCampaigns();
	}

	@Override
	@Transactional(readOnly = true)
	public Campaigns findSimpleCampaignByID(int campId) {
		return campaignRepo.findSimpleCampaignByID(campId);
	}

	@Override
	@Transactional
	public Campaigns findCampaignEventsByID(int campId) {
		return campaignRepo.findCampaignEventsByID(campId);
	}

	@Override
	@Transactional
	public void deleteCampaign(int adminId, int campaignId) {
		campaignRepo.deleteCampaign(adminId, campaignId);
	}

	@Override
	@Transactional
	public Campaigns findCampaignByUserCampaignID(int userId, int campaignId) {
		return campaignRepo.findCampaignByUserCampaignID(userId, campaignId);
	}

	@Override
	@Transactional
	public Campaigns findCampaignEventsByUserID(int userId, int campId) {
		return campaignRepo.findCampaignEventsByUserID(userId, campId);
	}

	@Override
	@Transactional
	@Cacheable(value = "commonCampaigns", key="0")
	public List<Campaigns> findAllCampaignsEvents() {
		return campaignRepo.findAllCampaignsEvents();
	}

}
