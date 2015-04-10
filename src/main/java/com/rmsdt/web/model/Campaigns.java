package com.rmsdt.web.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.DateTime;
import org.springframework.beans.support.MutableSortDefinition;
import org.springframework.beans.support.PropertyComparator;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.access.prepost.PreAuthorize;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "campaigns")
@JsonIgnoreProperties({"campaignImage", "user", "creationDate", "modificationDate"})
public class Campaigns extends BaseEntity {

	private static final int MAX_NAME_LENGTH = 12;
	private static final String THREE_DOTS = "...";

	@ManyToOne
	@JoinColumn(name = "admin_id_fk")
	private User user;

	@OneToMany(cascade = { CascadeType.MERGE, CascadeType.REFRESH })
	@JoinTable(name = "campaigns_events", joinColumns = @JoinColumn(name = "campaign_id_fk"), inverseJoinColumns = @JoinColumn(name = "event_id_fk"))
	private List<Events> events;

	@Column(name = "camp_name")
	@NotEmpty(message = "{validaton.field.required}")
	private String campaignName;

	@Column(name = "camp_description")
	@NotEmpty(message = "{validaton.field.required}")
	private String campaignDescription;

	@Column(name = "camp_image")
	private byte[] campaignImage;

	@Column(name = "creation_date")
	@Temporal(TemporalType.DATE)
	@Type(type = "org.jadira.usertype.dateandtime.joda.PersistentDateTime")
	@DateTimeFormat(pattern = "yyyy/MM/dd hh:mm:ss")
	private DateTime creationDate;

	@Column(name = "modification_date")
	@Temporal(TemporalType.DATE)
	@Type(type = "org.jadira.usertype.dateandtime.joda.PersistentDateTime")
	@DateTimeFormat(pattern = "yyyy/MM/dd hh:mm:ss")
	private DateTime modificationDate;

	@PreAuthorize("hasRole('ROLE_SUPER_ADMIN1')")
	public String getCampaignName() {
		return campaignName;
	}

	public void setCampaignName(String campaignName) {
		this.campaignName = campaignName;
	}

	public String getCampaignDescription() {
		return campaignDescription;
	}

	public void setCampaignDescription(String campaignDescription) {
		this.campaignDescription = campaignDescription;
	}

	public byte[] getCampaignImage() {
		return campaignImage;
	}

	public void setCampaignImage(byte[] campaignImage) {
		this.campaignImage = campaignImage;
	}

	public DateTime getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(DateTime creationDate) {
		this.creationDate = creationDate;
	}

	public DateTime getModificationDate() {
		return modificationDate;
	}

	public void setModificationDate(DateTime modificationDate) {
		this.modificationDate = modificationDate;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Events> getEvents() {
		
		// Sort events
        PropertyComparator.sort(events, new MutableSortDefinition("eventStatus", true, true));
        return Collections.unmodifiableList(events);

	}

	public void setEvents(List<Events> events) {
		this.events = events;
	}

	public void addEvents(Events event) {
		getInternalEvents().add(event);
		event.setCampaign(this);

	}

	private List<Events> getInternalEvents() {
		if (events == null) {
			events = new ArrayList<Events>();
		}
		return events;
	}

	@Transient
	public String getShortCampaignName() {
		if (campaignName.length() <= MAX_NAME_LENGTH)
			return campaignName;
		StringBuffer result = new StringBuffer(MAX_NAME_LENGTH + 3);
		result.append(campaignName.substring(0, MAX_NAME_LENGTH));
		result.append(THREE_DOTS);

		return result.toString();
	}
}
