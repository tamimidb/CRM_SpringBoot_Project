package com.crm.controllers.impl;

import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.crm.common.ICommonController;



public interface ILeadFeedbackController extends ICommonController{
	public ModelAndView getById(String id);

	ModelAndView create(Model model);
}
