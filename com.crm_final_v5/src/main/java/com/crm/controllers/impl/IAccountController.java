package com.crm.controllers.impl;


import org.springframework.web.servlet.ModelAndView;

import com.crm.common.ICommonController;



public interface IAccountController extends ICommonController{
	public ModelAndView getById(String id);


}
