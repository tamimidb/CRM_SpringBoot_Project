package com.crm.controllers.impl;

import org.springframework.web.servlet.ModelAndView;

import com.crm.common.ICommonController;



public interface IContactsController extends ICommonController{
	public ModelAndView getById(String id);
}
