package com.rmsdt.web.repository.jpa;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.rmsdt.web.model.User;
import com.rmsdt.web.repository.AdminRepository;
import com.rmsdt.web.repository.CommonRepository;

@Repository
public class CommonRepositoryImpl implements CommonRepository {

	@PersistenceContext
	private EntityManager em;

	@Override
	public byte[] findCampaignImageByID(Integer id) {

		Query query = em
				.createQuery(
						"SELECT campaign.campaignImage FROM Campaigns campaign WHERE campaign.id=:id");
		query.setParameter("id", id);

		return (byte[]) query.getSingleResult();
	}

}
