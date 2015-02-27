package com.rmsdt.web.service;

import com.rmsdt.web.model.Address;
import com.rmsdt.web.model.Events;

public interface EventService {

	void saveEvent(Events event);

	Events findEventById(int eventId);

	void saveAddress(Address address);

}
