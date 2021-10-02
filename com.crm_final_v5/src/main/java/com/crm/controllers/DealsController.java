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
import com.crm.controllers.impl.IDealController;
import com.crm.models.AccountsModel;
import com.crm.models.ContactsModel;
import com.crm.models.Deal;
import com.crm.services.AccountService;
import com.crm.services.DealService;

@Controller
@RequestMapping(value = "/sales")
public class DealsController implements IDealController {

	@Autowired
	DealService dealService;

	@Override
	@RequestMapping(value = "/dealcreate", method = RequestMethod.GET)
	public ModelAndView create() {
		return new ModelAndView("view/sales_team/deals/create_deals");

	}

	@Override
	@RequestMapping(value = "/dealsave", method = RequestMethod.POST)
	public ModelAndView save(HttpServletRequest request) {
		Deal p = dealService.save(request);
		List<Deal> t = dealService.getAll();
		return new ModelAndView("view/sales_team/deals/show_deals", "deal", t);

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
	@RequestMapping(value = "/dealreport", method = RequestMethod.GET)
	public ModelAndView getAll() {
		List<Deal> t = dealService.getAll();
		return new ModelAndView("view/sales_team/deals/show_deals", "deal", t);

	}

	@Override
	public ModelAndView getById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

}
