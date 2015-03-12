package com.rmsdt.web.repository;


import com.rmsdt.web.model.Address;
import com.rmsdt.web.model.Events;

public interface EventRepository {

	void save(Events event);

	Events findEventById(int eventId);

	void saveAddress(Address address);

	Events findEventByEventUserId(int id, int eventId);
}
