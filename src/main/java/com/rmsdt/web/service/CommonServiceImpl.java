package com.rmsdt.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rmsdt.web.model.Campaigns;
import com.rmsdt.web.model.User;
import com.rmsdt.web.repository.CampaignRepository;
import com.rmsdt.web.repository.CommonRepository;

@Service("commonService")
public class CommonServiceImpl implements CommonService {

	CommonRepository commonRepo;

	@Autowired
	public CommonServiceImpl(CommonRepository commonRepo) {
		this.commonRepo = commonRepo;
	}


	@Override
	public byte[] findCampaignImageByID(Integer id) {
		// TODO Auto-generated method stub
		return commonRepo.findCampaignImageByID(id);
	}

}
