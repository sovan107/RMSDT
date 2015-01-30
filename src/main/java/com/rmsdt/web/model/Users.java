package com.rmsdt.web.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "users")
public class Users extends Person{
	
	@Column(name = "email")
	@NotEmpty
	private String email;
	
	@Column(name = "phone")
	@NotEmpty
	private String phoneNumber;
	
	@Column(name = "dob")
	@NotEmpty
	private Date dob;
	
	@Column(name = "creation_date")
	@NotEmpty
	private Date creationDate;
	
	@Column(name = "modification_date")
	private Date modificationDate;
	
	@Column(name = "password")
	@NotEmpty
	private String password;
	

	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
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
