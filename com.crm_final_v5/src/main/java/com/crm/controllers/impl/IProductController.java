package com.crm.controllers.impl;

import org.springframework.web.servlet.ModelAndView;

import com.crm.common.ICommonController;



public interface IProductController extends ICommonController{
	public ModelAndView getById(String id);
}
