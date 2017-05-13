package com.eapps.onlinecontactsmanagementapp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.eapps.onlinecontactsmanagementapp.dao.ContactsDao;
import com.eapps.onlinecontactsmanagementapp.model.Contacts;

@Controller
public class ContactsController {

	@Autowired
	private ContactsDao contactsDao;

	@Autowired
	private Contacts contacts;

	@RequestMapping(value = "/allContacts")
	public ModelAndView listContacts(ModelAndView model) throws IOException {
		//getting all contacts from persistence layer
		List<Contacts> newContactsList = contactsDao.getAllContacts();
		model.addObject("contactsList", newContactsList);
		model.setViewName("allContacts");
		return model;

	}

	@RequestMapping(value = "/newContacts", method = RequestMethod.GET)
	public ModelAndView newContacts(ModelAndView model) {
		Contacts newContact = new Contacts();
		model.addObject("contacts", newContact);
		return model;
	}

	@RequestMapping(value = "/saveContact", method = RequestMethod.POST)
	public ModelAndView saveContacts(@ModelAttribute Contacts contacts) {
		//adding contacts into persistence layer
		contactsDao.addContacts(contacts);
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "editContact", method = RequestMethod.GET)
	public ModelAndView editContacts(HttpServletRequest request) {
		int contactId = Integer.parseInt(request.getParameter("id"));
		//getting the contacts Id from persistence layer and then do edit
		Contacts newContact = contactsDao.getContactsById(contactId);
		ModelAndView model = new ModelAndView("newContacts");
		model.addObject("contacts", newContact);
		return model;
	}
	
	@RequestMapping(value="deleteContact", method=RequestMethod.GET)
	public ModelAndView deleteContacts(HttpServletRequest request){
		int contactId = Integer.parseInt(request.getParameter("id"));
		//getting the contacts Id from persistence layer and then do delete
		contactsDao.deleteContacts(contactId);
		return new ModelAndView("redirect:/");
		
	}

}
