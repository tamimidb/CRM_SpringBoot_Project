package com.crm.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.crm.common.ICommonDAO;
import com.crm.models.Lead;
import com.crm.models.Product;
import com.crm.models.Task;
import com.crm.models.Campaign;


@Repository(value = "campaignDAO")
@Transactional
public class CampaignDAO implements ICommonDAO<Campaign>{

    @Autowired
    private EntityManager entityManager;
    
    private Session getSession() {
        return entityManager.unwrap(Session.class);
    }

    @Override
    public Campaign save(Campaign t){
    	getSession().save(t);
    	getSession().flush();
        return t;
    }
    
    @Override
    public List<Campaign> getAll(){
    	String sql = "from campaigns";
        List<Campaign> campaign = getSession().createQuery(sql).list();
        return campaign;
    }



	

	@Override
	public Campaign getById(int pid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Campaign update(Campaign t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(Campaign t) {
		String sql = "delete campaigns where id = '"+t.getId()+"'";
        int delete = getSession().createQuery(sql).executeUpdate();
        return delete;
	}


	
}
