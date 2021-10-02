package com.crm.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.crm.controllers.impl.IAccountController;
import com.crm.models.AccountsModel;
import com.crm.models.ContactsModel;
import com.crm.services.AccountService;

@Controller
@RequestMapping(value = "/marketing")
public class AccountsController implements IAccountController {

	@Autowired
	AccountService accountService;

	@Override
	@RequestMapping(value = "/accountcreate", method = RequestMethod.GET)
	public ModelAndView create() {
		return new ModelAndView("view/marketing_team/accounts/create_account");

	}

	@Override
	@RequestMapping(value = "/accountsave", method = RequestMethod.POST)
	public ModelAndView save(HttpServletRequest request) {
		AccountsModel p = accountService.save(request);
		List<AccountsModel> t = accountService.getAll();
		return new ModelAndView("view/marketing_team/accounts/show_account", "AccountsModel", t);

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
	@RequestMapping(value = "/accountreport", method = RequestMethod.GET)
	public ModelAndView getAll() {
		List<AccountsModel> t = accountService.getAll();
		return new ModelAndView("view/marketing_team/accounts/show_account", "AccountsModel", t);

	}

	@Override
	public ModelAndView getById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

}
