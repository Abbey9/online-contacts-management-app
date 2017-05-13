package com.eapps.onlinecontactsmanagementapp.dao;

import java.util.List;

import com.eapps.onlinecontactsmanagementapp.model.Contacts;

public interface ContactsDao {
	
	List<Contacts> getAllContacts();
	
	public Contacts getContactsById(int contactsSerialId);
	
	public void addContacts(Contacts contacts);
	
	public void updateContacts(Contacts contacts);
	
	public void deleteContacts(int contactsSerialId);

}
