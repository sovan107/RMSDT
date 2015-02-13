package com.rmsdt.web.repository.jpa;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

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

}
