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


@Repository(value = "leadDAO")
@Transactional
public class LeadDAO implements ICommonDAO<Lead>{

    @Autowired
    private EntityManager entityManager;
    
    private Session getSession() {
        return entityManager.unwrap(Session.class);
    }


    public Lead save(Lead p){
    	getSession().save(p);
    	getSession().flush();
        return p;
    }
    

    public List<Lead> getAll(){
    	String sql = "from leads";
        List<Lead> leads = getSession().createQuery(sql).list();
        return leads;
    }

    public Lead getById(String id) {
        String sql = "from leads where id = '" + id + "'";
        List<Lead> empList = getSession().createQuery(sql).list();
        return empList.get(0);

    }

    public Lead update(Lead p) {
        String hql = "update leads set name = '"+p.getId()+"',   where id = '"+p.getId()+"'";
        Query q = getSession().createQuery(hql);
        q.executeUpdate();
        getSession().flush();
        return p;
    }


    public int delete(Lead p) {
    	String sql = "delete leads where id = '"+p.getId()+"'";
        int delete = getSession().createQuery(sql).executeUpdate();
        return delete;
    }


	@Override
	public Lead getById(int pid) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
