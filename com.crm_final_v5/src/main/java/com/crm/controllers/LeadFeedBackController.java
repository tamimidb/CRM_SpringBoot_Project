package com.crm.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.crm.controllers.impl.IAccountController;
import com.crm.controllers.impl.ILeadFeedbackController;
import com.crm.models.AccountsModel;
import com.crm.models.Campaign;
import com.crm.models.ContactsModel;
import com.crm.models.Feedback;
import com.crm.models.LeadFeedback;
import com.crm.models.Product;
import com.crm.services.AccountService;
import com.crm.services.DealService;
import com.crm.services.LeadFeedbackService;

@Controller
@RequestMapping(value = "/marketing")
public class LeadFeedBackController implements ILeadFeedbackController {

	@Autowired
	LeadFeedbackService leadFeedbackService;

	@Override
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public ModelAndView create(Model model) {
		List<Campaign> camp = leadFeedbackService.getAllCamp();
		model.addAttribute("camp", camp);
		List<Product> p = leadFeedbackService.getAllProduct();
		model.addAttribute("Product", p);
		return new ModelAndView("/lead/lead_feedback");

	}

	@Override
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(HttpServletRequest request) {
		LeadFeedback p = leadFeedbackService.save(request);
		List<LeadFeedback> t = leadFeedbackService.getAll();
		return new ModelAndView("/lead/thanks", "lead_feedback", t);

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
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public ModelAndView getAll() {
		List<LeadFeedback> t = leadFeedbackService.getAll();
		return new ModelAndView("/lead/lead_feedback_report", "lead_feedback", t);

	}
	
	@RequestMapping(value = "/showcampavgrating", method = RequestMethod.GET)
	public ModelAndView getAllAvg() {
		List<?> t = leadFeedbackService.getAllAvg();
		List<Feedback> fb = new ArrayList<Feedback>();
		for (int i = 0; i < t.size(); i++) {
			Object[] o = (Object[]) t.get(i);
			Feedback f = new Feedback();
			f.setSelectedName((String) o[1]);
			f.setRating((Double) o[2]);
			fb.add(f);
		}
		
		return new ModelAndView("/lead/lead_avg_campaign_feedback_report", "fb", fb);
	}

	@Override
	public ModelAndView getById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView create() {
		// TODO Auto-generated method stub
		return null;
	}
	

	
	@GetMapping("/otp")
	public String home12() {
		return "lead/lead_otp";
	}
	@RequestMapping(value = "/showproavgrating", method = RequestMethod.GET)
	public ModelAndView getAllProAvg() {
		List<?> t = leadFeedbackService.getAllProAvg();
		List<Feedback> fb = new ArrayList<Feedback>();
		for (int i = 0; i < t.size(); i++) {
			Object[] o = (Object[]) t.get(i);
			Feedback f = new Feedback();
			f.setSelectedName((String) o[1]);
			f.setRating((Double) o[2]);
			fb.add(f);
		}
		
		return new ModelAndView("/lead/lead_avg_product_feedback_report", "fb", fb);
	}


}
