package com.rmsdt.web.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.DateTime;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "campaigns")
public class Campaigns extends BaseEntity {

	@ManyToOne
	@JoinColumn(name = "admin_id_fk")
	private User user;

	@OneToMany(cascade = { CascadeType.MERGE, CascadeType.REFRESH })
	@JoinTable(name = "campaigns_events", joinColumns = @JoinColumn(name = "campaign_id_fk"), inverseJoinColumns = @JoinColumn(name = "event_id_fk"))
	private List<Events> events;

	@Column(name = "camp_name")
	@NotEmpty
	private String campaignName;

	@Column(name = "camp_description")
	@NotEmpty
	private String campaignDescription;

	@Column(name = "camp_image")
	@NotEmpty
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
		return events;
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

}
