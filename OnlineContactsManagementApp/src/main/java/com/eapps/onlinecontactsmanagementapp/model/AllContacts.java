package com.eapps.onlinecontactsmanagementapp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="onlinecontactsbook")
@Component
public class AllContacts {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String contactSerialId;
	
	private String contactFullName;
	
	private String contactNickName;
	
	private String contactEmail;
	
	private String contactPhone;
	
	private String contactCompany;
	
	private String contactJobTitle;
	
	private String contactBirthday;
	
	private String contactAddress;
	
	private String contactWebsite;
	
	private String contactRelationship;
	
	private String contactNotes;
	

	public String getContactSerialId() {
		return contactSerialId;
	}

	public void setContactSerialId(String contactSerialId) {
		this.contactSerialId = contactSerialId;
	}

	public String getContactFullName() {
		return contactFullName;
	}

	public void setContactFullName(String contactFullName) {
		this.contactFullName = contactFullName;
	}

	public String getContactNickName() {
		return contactNickName;
	}

	public void setContactNickName(String contactNickName) {
		this.contactNickName = contactNickName;
	}

	public String getContactEmail() {
		return contactEmail;
	}

	public void setContactEmail(String contactEmail) {
		this.contactEmail = contactEmail;
	}

	public String getContactPhone() {
		return contactPhone;
	}

	public void setContactPhone(String contactPhone) {
		this.contactPhone = contactPhone;
	}

	public String getContactCompany() {
		return contactCompany;
	}

	public void setContactCompany(String contactCompany) {
		this.contactCompany = contactCompany;
	}

	public String getContactJobTitle() {
		return contactJobTitle;
	}

	public void setContactJobTitle(String contactJobTitle) {
		this.contactJobTitle = contactJobTitle;
	}

	public String getContactBirthday() {
		return contactBirthday;
	}

	public void setContactBirthday(String contactBirthday) {
		this.contactBirthday = contactBirthday;
	}

	public String getContactAddress() {
		return contactAddress;
	}

	public void setContactAddress(String contactAddress) {
		this.contactAddress = contactAddress;
	}

	public String getContactWebsite() {
		return contactWebsite;
	}

	public void setContactWebsite(String contactWebsite) {
		this.contactWebsite = contactWebsite;
	}

	public String getContactRelationship() {
		return contactRelationship;
	}

	public void setContactRelationship(String contactRelationship) {
		this.contactRelationship = contactRelationship;
	}

	public String getContactNotes() {
		return contactNotes;
	}

	public void setContactNotes(String contactNotes) {
		this.contactNotes = contactNotes;
	}
	
}
