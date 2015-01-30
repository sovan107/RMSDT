package com.rmsdt.web.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "address")
public class Address extends BaseEntity {

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

}
