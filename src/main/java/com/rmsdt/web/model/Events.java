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
import javax.validation.constraints.Future;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.DateTime;
import org.springframework.format.annotation.DateTimeFormat;

import com.rmsdt.web.validator.DateFieldEqualOrAfter;

@DateFieldEqualOrAfter(first = "eventStartDate", second = "eventEndDate", message = "{validation.date.equalOrAfter}")
@Entity
@Table(name = "events")
public class Events extends BaseEntity {

	@ManyToOne(cascade = { CascadeType.REFRESH, CascadeType.MERGE }, fetch = FetchType.EAGER)
	@JoinTable(name = "campaigns_events", joinColumns = @JoinColumn(name = "event_id_fk"), inverseJoinColumns = @JoinColumn(name = "campaign_id_fk"))
	private Campaigns campaign;

	@OneToMany(cascade = { CascadeType.REFRESH, CascadeType.MERGE }, fetch = FetchType.EAGER)
	@JoinTable(name = "events_address", joinColumns = @JoinColumn(name = "event_id_fk"), inverseJoinColumns = @JoinColumn(name = "address_id_fk"))
	private List<Address> addresses;

	public List<Address> getAddresses() {
		return addresses;
	}

	@Column(name = "event_name")
	@NotEmpty
	private String eventName;

	@Column(name = "event_description")
	@NotEmpty
	private String eventDescription;

	@Column(name = "event_start_date")
	@NotNull
	@Temporal(TemporalType.DATE)
	@Type(type = "org.jadira.usertype.dateandtime.joda.PersistentDateTime")
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	@Future(message="{validation.date.future}")
	private DateTime eventStartDate;

	@Column(name = "event_end_date")
	@Temporal(TemporalType.DATE)
	@Type(type = "org.jadira.usertype.dateandtime.joda.PersistentDateTime")
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	@Future(message="{validation.date.future}")
	private DateTime eventEndDate;

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

	public DateTime getEventStartDate() {
		return eventStartDate;
	}

	public void setEventStartDate(DateTime eventStartDate) {
		this.eventStartDate = eventStartDate;
	}

	public DateTime getEventEndDate() {
		return eventEndDate;
	}

	public void setEventEndDate(DateTime eventEndDate) {
		this.eventEndDate = eventEndDate;
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

	public Campaigns getCampaign() {
		return campaign;
	}

	public void setCampaign(Campaigns campaign) {
		this.campaign = campaign;
	}

	public void addAddress(Address address){
		getInternalAddress().add(address);
		address.setEvent(this);
		
	}

	private List<Address> getInternalAddress() {
		if(addresses == null){
			addresses = new ArrayList<Address>();
		}
		return addresses;
	}

}
