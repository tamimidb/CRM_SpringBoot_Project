package com.crm.services;




import java.util.List;


import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.crm.common.ICommonService;
import com.crm.dao.TaskDAO;
import com.crm.models.Activities;
import com.crm.models.Campaign;
import com.crm.models.LeadFeedback;
import com.crm.models.Product;
import com.crm.models.Task;






@Service(value = "taskService")
public class TaskService implements ICommonService<Task>{

	@Autowired
    TaskDAO taskDAO;


    
	public final String EntityImagePath = "app-assets/images/";
	
//    public Lead save1(HttpServletRequest request, MultipartFile photo) throws IOException{
//    	saveFile(photo, "name12.jpg", EntityImagePath); //photo, photo_name, photo_location
//        //Map<String, String[]> map = request.getParameterMap();
//      
//        return null;
//
//    }
 
	
    public List <Task> getAll() {
        return taskDAO.getAll();
    }

 

//    public Lead update(HttpServletRequest request) {
//        String name = request.getParameter("name");
//        Lead p = new Lead();
//        p.setId(Integer.valueOf(request.getParameter("id")));
//        p.setName(name);
//        p.setQuantity(Integer.valueOf(request.getParameter("qty")));
//        p.setPrice(Double.valueOf(request.getParameter("price")));
//        return leadDAO.update(p);
//    }

	@Override
	public Task save(HttpServletRequest request) {
		 Task task = new Task();
	        task.setTaskOwner(request.getParameter("crmFirstName"));
	        task.setTaskSubject(request.getParameter("taskSubject"));
	        task.setTaskDueDate(request.getParameter("taskDueDate"));
	        task.setRelatedPerson(request.getParameter("leadFirstName"));
	        task.setTaskStatus(request.getParameter("taskStatus"));
	        task.setTaskPriority(request.getParameter("taskPriority"));
	        task.setTaskDescription(request.getParameter("taskDescription"));
	    
	        
	        taskDAO.save(task);
	        return task;
	}



	@Override
	public Task update(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public Task edit(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(String id) {
		System.out.println("service");
	    Task p = taskDAO.getById(Integer.valueOf(id));
        return taskDAO.delete(p);
	}





	public Task getById(String id) {
		// TODO Auto-generated method stub
		return null;
	}



	public List<LeadFeedback> getAllfeed() {
		List<LeadFeedback> lfeed= taskDAO.getAllfeed();
		return lfeed;
	}



	public List<Activities> getAllActivities() {
		return taskDAO.getAllActivities();
	}



	public Activities saveAcitivites(HttpServletRequest request) {
		Activities task = new Activities();
        task.setLeadName(request.getParameter("leadName"));
        task.setType(request.getParameter("type"));
        task.setIsueeName(request.getParameter("isueeName"));
        task.setActivitiesSubject(request.getParameter("activitiesSubject"));
        task.setActivitiesDueDate(request.getParameter("activitiesDueDate"));   
        task.setActivitiesStatus(request.getParameter("activitiesStatus"));
        task.setActivitiesPriority(request.getParameter("activitiesPriority"));
        task.setActivitiesDescription(request.getParameter("activitiesDescription"));
       
        taskDAO.save(task);
        return task;
	}







	

}
