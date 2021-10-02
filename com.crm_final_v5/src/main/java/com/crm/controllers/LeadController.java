package com.crm.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.crm.common.ICommonController;
import com.crm.models.Lead;
import com.crm.models.Product;
import com.crm.services.LeadService;
import com.crm.services.ProductService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@RestController
@RequestMapping(value = "/lead")
public class LeadController implements ICommonController {

	@Autowired
	LeadService leadService;

	@Override
	@RequestMapping(value = "/leadcreate", method = RequestMethod.GET)
	public ModelAndView create() {
		return new ModelAndView("lead/lead_create");
	}

	@RequestMapping(value = "/leadsave", method = RequestMethod.POST)
	public ModelAndView save(HttpServletRequest request) {
		Lead p = leadService.save(request);
		List<Lead> l = leadService.getAll();
		return new ModelAndView("lead/lead_report", "Lead", l);
	}

	@Override
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable String id) {
		Lead p = leadService.getById(id);
		return new ModelAndView("product/edit", "p", p);
	}

	@Override
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView update(HttpServletRequest request) {
		Lead p = leadService.update(request);
		return new ModelAndView("product/show");
	}

	@Override
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable String id) {
		int delete = leadService.delete(id);
		return new ModelAndView("product/show");
	}

	@Override
	@RequestMapping(value = "/leadreport", method = RequestMethod.GET)
	public ModelAndView getAll() {
		List<Lead> l = leadService.getAll();
		return new ModelAndView("lead/lead_report", "Lead", l);
	}

}
