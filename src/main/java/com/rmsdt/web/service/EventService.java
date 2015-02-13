package com.rmsdt.web.service;

import com.rmsdt.web.model.Events;

public interface EventService {

	void saveEvent(Events event);

	Events findEventById(int eventId);

}
