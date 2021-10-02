package com.crm.controllers.impl;

import org.springframework.web.servlet.ModelAndView;

import com.crm.common.ICommonController;



public interface ILeadController extends ICommonController{
	public ModelAndView getById(String id);
}
