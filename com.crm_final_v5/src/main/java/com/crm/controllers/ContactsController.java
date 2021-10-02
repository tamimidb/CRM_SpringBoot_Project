package com.crm.controllers;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.crm.controllers.impl.IContactsController;
import com.crm.models.ContactsModel;
import com.crm.services.ContactService;

@Controller
@RequestMapping(value = "/marketing")
public class ContactsController implements IContactsController{
	
	@Autowired
	ContactService contactService;
	

	@Override
	@GetMapping("/contactcreate")
	public ModelAndView create() {
		return new ModelAndView("view/marketing_team/contacts/create_contacts");
	}
	@Override
	@PostMapping("/contactsave")
	public ModelAndView save(HttpServletRequest request) {
		ContactsModel p = contactService.save(request);
		 List<ContactsModel> t= contactService.getAll();
      return new ModelAndView("view/marketing_team/contacts/show_contacts",  "ContactsModel", t);
	}
	@Override
	public ModelAndView edit(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public ModelAndView update(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public ModelAndView delete(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	@GetMapping("/contactreport")
	public ModelAndView getAll() {
		  List<ContactsModel> t= contactService.getAll();
	        return new ModelAndView("view/marketing_team/contacts/show_contacts", "ContactsModel", t);
	}
	@Override
	public ModelAndView getById(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
