package com.crm.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.crm.common.ICommonDAO;
import com.crm.models.ContactsModel;
import com.crm.models.Lead;
import com.crm.models.Product;
import com.crm.models.Task;
import com.crm.models.Campaign;
import com.crm.models.Deal;
import com.crm.models.LeadFeedback;


@Repository(value = "leadFeedbackDAO")
@Transactional
public class LeadFeedbackDAO implements ICommonDAO<LeadFeedback>{

    @Autowired
    private EntityManager entityManager;
    
    private Session getSession() {
        return entityManager.unwrap(Session.class);
    }

    @Override
    public LeadFeedback save(LeadFeedback con){
    	System.out.println("save");
    	getSession().save(con);
    	getSession().flush();
        return con;
    }
    
    @Override
    public List<LeadFeedback> getAll(){
    	
    	String sql = "from lead_feedback";
        List<LeadFeedback> lfeed = getSession().createQuery(sql).list();
        return lfeed;
    }

	@Override
	public LeadFeedback getById(int pid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public LeadFeedback update(LeadFeedback t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(LeadFeedback t) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Campaign> getAllCamp() {
		String sql = "from campaigns";
        List<Campaign> camp = getSession().createQuery(sql).list();
		return camp;
	}

	public List<Product> getAllProduct() {
		String sql = "from product";
        List<Product> p = getSession().createQuery(sql).list();
		return p;
	}


	   public List<?> getAveragefeedback(){
	    	String sql = "select id, selectedName, avg(rating) from lead_feedback where feedback_type = 'Campaign' group by selectedName";
	        List<?> lfeed = getSession().createQuery(sql).list();
	        return lfeed;
	    }

	public List<?> getAverageProfeedback() {
		String sql = "select id, selectedName, avg(rating) from lead_feedback where feedback_type = 'product' group by selectedName";
        List<?> lfeed = getSession().createQuery(sql).list();
        return lfeed;
	}


	
}
