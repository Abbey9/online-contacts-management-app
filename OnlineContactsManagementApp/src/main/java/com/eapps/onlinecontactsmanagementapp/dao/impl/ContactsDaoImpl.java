package com.eapps.onlinecontactsmanagementapp.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.eapps.onlinecontactsmanagementapp.dao.ContactsDao;
import com.eapps.onlinecontactsmanagementapp.model.Contacts;

@Repository
@Transactional
public class ContactsDaoImpl implements ContactsDao {

	@Autowired
	private SessionFactory sessionFactory;

	public List<Contacts> getAllContacts() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Contacts");
		List<Contacts> contactsList = query.list();
		return contactsList;
	}

	public Contacts getContactsById(int contactsSerialId) {
        
		Session session=sessionFactory.getCurrentSession();
		return (Contacts) session.get(Contacts.class, contactsSerialId);
	}

	public void addContacts(Contacts contacts) {
       Session session=sessionFactory.getCurrentSession();
       session.save(contacts);
	}

	public void updateContacts(Contacts contacts) {
       Session session=sessionFactory.getCurrentSession();
       session.update(contacts);
	}

	public void deleteContacts(int contactSerialId) {
	  
      Contacts contacts=new Contacts();
      contacts.setContactSerialId(contactSerialId);
	  Session session=sessionFactory.getCurrentSession();
	  session.delete(contacts);

	}

}
