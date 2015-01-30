package com.rmsdt.web.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "events")
public class Events extends BaseEntity {

	// Need to create for FK camp_id_fk

	// Need to create for FK admin_id_fk

	// Need to create for FK address_id_fk

	@Column(name = "event_name")
	@NotEmpty
	private String eventName;

	@Column(name = "event_description")
	@NotEmpty
	private String eventDescription;

	@Column(name = "event_start_date")
	@NotEmpty
	private String eventStartDate;

	@Column(name = "event_end_date")
	@NotEmpty
	private String eventEndDate;

	@Column(name = "creation_date")
	@NotEmpty
	private Date creationDate;

	@Column(name = "modification_date")
	@NotEmpty
	private Date modificationDate;

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public String getEventDescription() {
		return eventDescription;
	}

	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}

	public String getEventStartDate() {
		return eventStartDate;
	}

	public void setEventStartDate(String eventStartDate) {
		this.eventStartDate = eventStartDate;
	}

	public String getEventEndDate() {
		return eventEndDate;
	}

	public void setEventEndDate(String eventEndDate) {
		this.eventEndDate = eventEndDate;
	}

	public Date getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}

	public Date getModificationDate() {
		return modificationDate;
	}

	public void setModificationDate(Date modificationDate) {
		this.modificationDate = modificationDate;
	}

}
