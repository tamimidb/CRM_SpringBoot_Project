package com.crm.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.crm.controllers.impl.ICampaignController;
import com.crm.models.ContactsModel;
import com.crm.models.Campaign;
import com.crm.services.CampaignService;

@Controller
@RequestMapping(value = "/marketing")
public class CampaignController implements ICampaignController {

	@Autowired
	CampaignService campaignService;

	@Override
	@GetMapping("/campaigncreate")
	public ModelAndView create() {
		return new ModelAndView("view/marketing_team/campaign/create_camp");

	}

	@Override
	@PostMapping("/campaignsave")
	public ModelAndView save(HttpServletRequest request) {
		Campaign p = campaignService.save(request);
		List<Campaign> t = campaignService.getAll();
		return new ModelAndView("view/marketing_team/campaign/show_camp", "campaign", t);

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
	@GetMapping("/campaignreport")
	public ModelAndView getAll() {
		List<Campaign> t = campaignService.getAll();
		return new ModelAndView("view/marketing_team/campaign/show_camp", "campaign", t);

	}

	@Override
	public ModelAndView getById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

}
