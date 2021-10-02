package com.crm.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.crm.common.ICommonDAO;
import com.crm.models.Activities;
import com.crm.models.Campaign;
import com.crm.models.Lead;
import com.crm.models.LeadFeedback;
import com.crm.models.Product;
import com.crm.models.Task;


@Repository(value = "TaskDAO")
@Transactional
public class TaskDAO implements ICommonDAO<Task>{

    @Autowired
    private EntityManager entityManager;
    
    private Session getSession() {
        return entityManager.unwrap(Session.class);
    }

    @Override
    public Task save(Task p){
    	getSession().save(p);
    	getSession().flush();
        return p;
    }
    
    @Override
    public List<Task> getAll(){
    	String sql = "from task";
        List<Task> task = getSession().createQuery(sql).list();
        return task;
    }





	@Override
	public Task getById(int pid) {
		// TODO Auto-generated method stub
		return null;
	}





	@Override
	public Task update(Task t) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int delete(Task t) {
		String sql = "delete task where id = '"+t.getId()+"'";
        int delete = getSession().createQuery(sql).executeUpdate();
        return delete;
	}

	
	//activities 
	public List<LeadFeedback> getAllfeed() {
		String sql = "from lead_feedback";
        List<LeadFeedback> lfeed = getSession().createQuery(sql).list();
		return lfeed;
	}

	public List<Activities> getAllActivities() {
		
		String sql = "from activities";
        List<Activities> lfeed = getSession().createQuery(sql).list();
        return lfeed;
	}

	public Activities save(Activities task) {
	
		getSession().save(task);
    	getSession().flush();
        return task;
		
	}
	
	
}
