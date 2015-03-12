package com.rmsdt.web.repository.jpa;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.rmsdt.web.model.Address;
import com.rmsdt.web.model.Campaigns;
import com.rmsdt.web.model.Events;
import com.rmsdt.web.repository.EventRepository;

@Repository
public class EventRepositoryImpl implements EventRepository {

	@PersistenceContext
	private EntityManager em;

	@Override
	public void save(Events event) {
		if (event.getId() == null) {
			em.persist(event);
		} else {
			em.merge(event);
		}
	}

	@Override
	public Events findEventById(int eventId) {
		return em.find(Events.class, eventId);
	}

	@Override
	public void saveAddress(Address address) {

		if (address.getId() == null) {
			em.persist(address);
		} else {
			em.merge(address);
		}

	}

	@Override
	public Events findEventByEventUserId(int userId, int eventId) {
		return this.em
				.createQuery(
						"SELECT event FROM Events event LEFT JOIN FETCH event.campaign campaign "
								+ " WHERE event.id = :eventId AND campaign.user.id =:userId",
						Events.class).setParameter("eventId", eventId)
				.setParameter("userId", userId).getSingleResult();
	}

}
