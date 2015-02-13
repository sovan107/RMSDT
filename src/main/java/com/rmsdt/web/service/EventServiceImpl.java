package com.rmsdt.web.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rmsdt.web.model.Events;
import com.rmsdt.web.repository.EventRepository;

@Service("eventService")
public class EventServiceImpl implements EventService {

	EventRepository eventRepo;

	@Autowired
	public EventServiceImpl(EventRepository eventRepo) {
		this.eventRepo = eventRepo;
	}

	@Override
	@Transactional
	public void saveEvent(Events event) {
		eventRepo.save(event);
	}

	@Override
	public Events findEventById(int eventId) {
		// TODO Auto-generated method stub
		return eventRepo.findEventById(eventId);
	}
}
