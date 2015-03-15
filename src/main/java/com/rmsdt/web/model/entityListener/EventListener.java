package com.rmsdt.web.model.entityListener;

import javax.persistence.PostLoad;
import javax.persistence.PostPersist;
import javax.persistence.PostUpdate;

import org.joda.time.DateTime;

import com.rmsdt.web.model.Events;

/**
 *
 * @author sambitc
 */
public class EventListener {

	@PostLoad
	@PostPersist
	@PostUpdate
	public void calculateAge(Events event) {

		DateTime eventStartDate = event.getEventStartDate();
		DateTime eventEndDate = event.getEventEndDate();
		int eventStatus = 100;

		if (eventStartDate == null || eventEndDate == null) {
			eventStatus = 100;
		}

		long esd = eventStartDate.getMillis();
		long eed = eventEndDate.getMillis();
		long currDate = new DateTime().getMillis();

		// IF same day event
		if (esd == eed) {
			if (currDate > esd) {
				eventStatus = 1;
			} else if (currDate < esd) {
				eventStatus = -1;
			} else {
				eventStatus = 0;
			}

		} else {
			if (currDate <= eed && currDate >= esd) {
				eventStatus = 0;
			} else if (currDate < esd) {
				eventStatus = -1;
			} else if (currDate > eed) {
				eventStatus = 1;
			}
		}
		event.setEventStatus(eventStatus);
	}
}
