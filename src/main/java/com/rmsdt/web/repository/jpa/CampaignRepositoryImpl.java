package com.rmsdt.web.repository.jpa;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityGraph;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.rmsdt.web.model.Campaigns;
import com.rmsdt.web.model.User;
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
	public User findAllCampaignByAdminID1(int id) {

		EntityGraph graph = this.em.getEntityGraph("graph.User.campaigns");
		Map hints = new HashMap();
		hints.put("javax.persistence.fetchgraph", graph);

		return this.em.find(User.class, id, hints);
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

	@Override
	public void deleteCampaign(int adminId, int campaignId) {
		this.em.createQuery(
				"DELETE FROM Campaigns campaign "
						+ " WHERE campaign.id = :id AND campaign.user.id =:userId")
				.setParameter("id", campaignId).setParameter("userId", adminId)
				.executeUpdate();

	}

	@Override
	public Campaigns findCampaignByUserCampaignID(int userId, int campaignId) {
		return this.em
				.createQuery(
						"SELECT campaign FROM Campaigns campaign LEFT JOIN FETCH campaign.user user "
								+ " WHERE campaign.id = :id AND user.id =:userId",
						Campaigns.class).setParameter("id", campaignId)
				.setParameter("userId", userId).getSingleResult();
	}

	@Override
	public Campaigns findCampaignEventsByUserID(int userId, int campId) {
		return this.em
				.createQuery(
						"SELECT campaign FROM Campaigns campaign LEFT JOIN FETCH campaign.events ce"
								+ " WHERE campaign.id = :id "
								+ " AND campaign.user.id = :userId"
								+ " ORDER BY ce.eventStartDate",

						Campaigns.class).setParameter("id", campId)
				.setParameter("userId", userId).getSingleResult();
	}
}
