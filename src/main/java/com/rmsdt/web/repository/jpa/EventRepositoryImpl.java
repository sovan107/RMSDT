package com.rmsdt.web.repository.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

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

}
