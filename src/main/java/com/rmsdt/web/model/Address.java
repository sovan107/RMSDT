package com.rmsdt.web.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "address")
public class Address extends BaseEntity {

	@ManyToOne(cascade = { CascadeType.REFRESH }, fetch = FetchType.EAGER)
	@JoinTable(name = "events_address", joinColumns = @JoinColumn(name = "address_id_fk"), inverseJoinColumns = @JoinColumn(name = "event_id_fk"))
	private Events event;

	@Column(name = "house_no")
	@NotEmpty(message = "{validation.houseNo.required}")
	private String houseNumber;

	@Column(name = "street")
	@NotEmpty(message = "{validation.street.required}")
	private String street;

	@Column(name = "city")
	@NotEmpty(message = "{validation.city.required}")
	private String city;

	@Column(name = "state")
	@NotEmpty(message = "{validation.state.required}")
	private String state;

	@Column(name = "country")
	@NotEmpty(message = "{validation.country.required}")
	private String country;

	@Column(name = "postal_code")
	@NotEmpty(message = "{validation.postalCode.required}")
	private String postalCode;

	@Column(name = "lat")
	private String lat;

	@Column(name = "lng")
	private String lng;

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
	Integer ajaxId;

	public Integer getAjaxId() {
		return ajaxId;
	}

	public void setAjaxId(Integer ajaxId) {
		this.ajaxId = ajaxId;
	}

	public String getLat() {
		return lat;
	}

	public void setLat(String lat) {
		this.lat = lat;
	}

	public String getLng() {
		return lng;
	}

	public void setLng(String lng) {
		this.lng = lng;
	}
}
