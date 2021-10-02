package com.crm.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.crm.models.Lead;
import com.crm.services.LeadService;

@Controller
public class Dashboard_templete {

	@Autowired
	LeadService leadService;
	
	@GetMapping("/")
	public String home() {
		return "index";
	}
	
	@GetMapping("#")
	public String home3() {
		return "index";
	}
	
	@GetMapping("/index")
	public String home1() {
		return "index";
	}
	@GetMapping("/feed")
	public String feed() {
		return "/lead/lead_feedback";
	}
	
	@GetMapping("/service")
	public String home11() {
		return "service/customer_service/case_report";
	}
	@GetMapping("/showcamp")
	public String camp() {
		return "view/marketing_team/campaign/show_camp";
	}
	
	@GetMapping("/leads")
	public String home111() {
		return "leads";
	}
	@GetMapping("/form")
	public String home12() {
		return "leads/form";
	}
	
	
	
	@GetMapping("/product")
	public String getAll() {
		List<Lead> l = leadService.getAll();
		return "index";
	}
	
	
	
	@GetMapping("/lead/otp")
	public String product2() {
		return "/lead/otp";
	}
		

	

	
}
