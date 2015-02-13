package com.rmsdt.web.repository.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;

import com.rmsdt.web.model.Campaigns;
import com.rmsdt.web.repository.CampaignRepository;

@Repository
public class CampaignRepositoryImpl implements CampaignRepository {

	@PersistenceContext
	private EntityManager em;

	@Override
	public void save(Campaigns campaign) {
		if (campaign.getId() == null) {
			em.persist(campaign);
		} else {
			em.merge(campaign);
		}

	}

	@Override
	public List<Campaigns> findAllCampaignByAdminID(int id) {

		return this.em
				.createQuery(
						"SELECT campaigns FROM Campaigns campaigns "
								+ " WHERE campaigns.user.id = :id ORDER BY campaigns.creationDate DESC ")
				.setParameter("id", id).getResultList();
	}

	@Override
	public Campaigns findCampaignByID(int campaignId) {
		return this.em
				.createQuery(
						"SELECT campaign FROM Campaigns campaign LEFT JOIN FETCH campaign.user "
								+ " WHERE campaign.id = :id ", Campaigns.class)
				.setParameter("id", campaignId).getSingleResult();
	}
	
	@Override
	public Campaigns findCampaignEventsByID(int campaignId) {
		return this.em
				.createQuery(
						"SELECT campaign FROM Campaigns campaign LEFT JOIN FETCH campaign.events "
								+ " WHERE campaign.id = :id ", Campaigns.class)
				.setParameter("id", campaignId).getSingleResult();
	}

	@Override
	public List<Campaigns> findAllCampaigns() {
		return this.em.createQuery(
				"SELECT campaigns FROM Campaigns campaigns "
						+ " ORDER BY campaigns.creationDate DESC ")
				.getResultList();
	}

	@Override
	public Campaigns findSimpleCampaignByID(int campId) {
		return em.find(Campaigns.class, campId);
	}
}
