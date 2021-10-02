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
import com.crm.models.Deal;


@Repository(value = "dealDAO")
@Transactional
public class DealDAO implements ICommonDAO<Deal>{

    @Autowired
    private EntityManager entityManager;
    
    private Session getSession() {
        return entityManager.unwrap(Session.class);
    }

    @Override
    public Deal save(Deal p){
    	getSession().save(p);
    	getSession().flush();
        return p;
    }
    
    @Override
    public List<Deal> getAll(){
    	String sql = "from deals";
        List<Deal> deal = getSession().createQuery(sql).list();
        return deal;
    }




	@Override
	public int delete(Deal t) {
		String sql = "delete deals where id = '"+t.getId()+"'";
        int delete = getSession().createQuery(sql).executeUpdate();
        return delete;
	}

	@Override
	public Deal getById(int pid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Deal update(Deal t) {
		// TODO Auto-generated method stub
		return null;
	}



	
}
