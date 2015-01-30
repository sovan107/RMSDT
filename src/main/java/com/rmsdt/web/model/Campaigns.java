package com.rmsdt.web.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "campaigns")
public class Campaigns extends BaseEntity {

	// New to create for foreign key admin_id_fk

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
	@NotEmpty
	private Date creationDate;

	@Column(name = "modification_date")
	private Date modificationDate;

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
