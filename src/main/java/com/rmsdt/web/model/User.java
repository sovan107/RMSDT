package com.rmsdt.web.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.DateTime;
import org.springframework.format.annotation.DateTimeFormat;

import com.rmsdt.web.form.validator.Phone;

@Entity
@Table(name = "users")
public class User extends Person {

	@Column(name = "username")
	@NotEmpty
	private String username;

	@Column(name = "email")
	@NotEmpty(message = "{validaton.field.required}")
	@Email
	private String email;

	@Column(name = "phone")
	@Phone
	private String phone;

	@Column(name = "dob")
	@Type(type = "org.jadira.usertype.dateandtime.joda.PersistentDateTime")
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	@Past
	@NotNull
	private DateTime dob;

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

	@Column(name = "password")
	@NotEmpty(message = "{validaton.field.required}")
	private String password;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
	private List<Campaigns> campaigns;

	@Column(name = "enabled")
	private int enabled;

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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

	public DateTime getDob() {
		return dob;
	}

	public void setDob(DateTime dob) {
		this.dob = dob;
	}

	public void addCampaign(Campaigns campaign) {
		getInternalCampaign().add(campaign);
		campaign.setUser(this);

	}

	private List<Campaigns> getInternalCampaign() {
		if (campaigns == null) {
			campaigns = new ArrayList<Campaigns>();
		}
		return campaigns;
	}

	public List<Campaigns> getCampaigns() {
		return campaigns;
	}

	public void setCampaigns(List<Campaigns> campaigns) {
		this.campaigns = campaigns;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
}
