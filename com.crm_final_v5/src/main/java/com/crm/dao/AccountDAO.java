package com.crm.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.crm.common.ICommonDAO;
import com.crm.models.AccountsModel;
import com.crm.models.Lead;
import com.crm.models.Product;
import com.crm.models.Task;


@Repository(value = "accountDAO")
@Transactional
public class AccountDAO implements ICommonDAO<AccountsModel>{

    @Autowired
    private EntityManager entityManager;
    
    private Session getSession() {
        return entityManager.unwrap(Session.class);
    }

    @Override
    public AccountsModel save(AccountsModel t){
    	getSession().save(t);
    	getSession().flush();
        return t;
    }
    
    @Override
    public List<AccountsModel> getAll(){
    
    	String sql = "from accounts";
        List<AccountsModel> account = getSession().createQuery(sql).list();
        return account;
    	
    }



  

	@Override
	public AccountsModel getById(int pid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AccountsModel update(AccountsModel t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(AccountsModel t) {
		String sql = "delete accounts where id = '"+t.getId()+"'";
        int delete = getSession().createQuery(sql).executeUpdate();
        return delete;
	}

	
	
}
