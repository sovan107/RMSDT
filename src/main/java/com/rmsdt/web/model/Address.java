package com.rmsdt.web.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "address")
public class Address extends BaseEntity {
	
	@ManyToOne(cascade = { CascadeType.REFRESH, CascadeType.MERGE }, fetch=FetchType.EAGER)
	@JoinTable(name = "events_address", joinColumns = @JoinColumn(name = "address_id_fk"), inverseJoinColumns = @JoinColumn(name = "event_id_fk"))
	private Events event;

	@Column(name = "house_no")
	@NotEmpty
	private String houseNumber;

	@Column(name = "street")
	@NotEmpty
	private String street;

	@Column(name = "city")
	@NotEmpty
	private String city;

	@Column(name = "state")
	@NotEmpty
	private String state;

	@Column(name = "country")
	@NotEmpty
	private String country;

	@Column(name = "postal_code")
	@NotEmpty
	private String postalCode;

	public String getHouseNumber() {
		return houseNumber;
	}

	public void setHouseNumber(String houseNumber) {
		this.houseNumber = houseNumber;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public Events getEvent() {
		return event;
	}

	public void setEvent(Events event) {
		this.event = event;
	}
	
	@Transient
	int ajaxId;

	public int getAjaxId() {
		return ajaxId;
	}

	public void setAjaxId(int ajaxId) {
		this.ajaxId = ajaxId;
	}
	
	
}
