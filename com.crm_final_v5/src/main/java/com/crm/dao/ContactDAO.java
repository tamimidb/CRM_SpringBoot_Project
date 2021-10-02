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


@Repository(value = "contactDAO")
@Transactional
public class ContactDAO implements ICommonDAO<ContactsModel>{

    @Autowired
    private EntityManager entityManager;
    
    private Session getSession() {
        return entityManager.unwrap(Session.class);
    }

    @Override
    public ContactsModel save(ContactsModel p){
    	getSession().save(p);
    	getSession().flush();
        return p;
    }
    
    @Override
    public List<ContactsModel> getAll(){
    	String sql = "from contacts";
        List<ContactsModel> contact = getSession().createQuery(sql).list();
        return contact;
    }



	@Override
	public ContactsModel getById(int pid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ContactsModel update(ContactsModel t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(ContactsModel t) {
		String sql = "delete contacts where id = '"+t.getId()+"'";
        int delete = getSession().createQuery(sql).executeUpdate();
        return delete;
	}



	
}
