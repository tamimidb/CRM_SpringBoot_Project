package com.crm.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.crm.common.ICommonController;
import com.crm.models.Activities;
import com.crm.models.Campaign;
import com.crm.models.Feedback;
import com.crm.models.LeadFeedback;
import com.crm.models.Task;

import com.crm.services.TaskService;

@RestController
@RequestMapping(value = "/task")
public class TaskController implements ICommonController {

	@Autowired
	TaskService taskService;

	@Override
	@RequestMapping(value = "/taskcreate", method = RequestMethod.GET)
	public ModelAndView create() {
		return new ModelAndView("task/task_create");
	}

	@RequestMapping(value = "/tasksave", method = RequestMethod.POST)
	public ModelAndView save(HttpServletRequest request) {
		System.out.println("hit");
		Task p = taskService.save(request);
		List<Task> t = taskService.getAll();
		return new ModelAndView("task/task_report", "Task", t);
	}

//    @Override
//    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
//    public ModelAndView edit(@PathVariable String id){
//    	Task p = taskService.getById(id);
//        return new ModelAndView("product/edit", "p", p);
//    }
//    
	@Override
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView update(HttpServletRequest request) {
		Task p = taskService.update(request);
		return new ModelAndView("product/show");
	}

	@Override
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable String id) {
		int delete = taskService.delete(id);
		List<Task> t = taskService.getAll();
		return new ModelAndView("task/task_report", "Task", t);
	}

	@Override
	@RequestMapping(value = "/taskreport", method = RequestMethod.GET)
	public ModelAndView getAll() {
		List<Task> t = taskService.getAll();
		return new ModelAndView("task/task_report", "Task", t);
	}

	@Override
	public ModelAndView edit(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	//activities site
	
	@RequestMapping(value = "/activitiesCreate", method = RequestMethod.GET)
	public ModelAndView create1(Model model) {
		List<LeadFeedback> lfeed = taskService.getAllfeed();
		model.addAttribute("LeadFeedback", lfeed);
		return new ModelAndView("activities/activities_create");
	}
	
	
	@RequestMapping(value = "/activitiesSave", method = RequestMethod.POST)
	public ModelAndView save1(HttpServletRequest request) {
		Activities p = taskService.saveAcitivites(request);
		List<Activities> activities = taskService.getAllActivities();
		return new ModelAndView("/activities/activities_report", "Activities", activities);
	
	}
	
	
	@RequestMapping(value = "/activitiesReport", method = RequestMethod.GET)
	public ModelAndView getAllActivities() {
		List<Activities> activities = taskService.getAllActivities();
		return new ModelAndView("/activities/activities_report", "Activities", activities);
	}
}
