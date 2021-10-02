package com.crm.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.crm.common.ICommonDAO;
import com.crm.models.Product;


@Repository(value = "productDAO")
@Transactional
public class ProductDAO implements ICommonDAO<Product>{

    @Autowired
    private EntityManager entityManager;
    
    private Session getSession() {
        return entityManager.unwrap(Session.class);
    }


    public Product save(Product p){
    	System.out.println("dao");
    	getSession().save(p);
    	getSession().flush();
        return p;
    }
    

    public List<Product> getAll(){
    	System.out.println("con");
    	String sql = "from product";
        List<Product> products = getSession().createQuery(sql).list();
        return products;
    }

    public Product getById(int id) {
        String sql = "from product where id = '" + id + "'";
        List<Product> empList = getSession().createQuery(sql).list();
        return empList.get(0);

    }

//    public Product update(Product p) {
//        String hql = "update product set name = '"+p.getName()+"', quantity = '"+p.getQuantity()+"', price = '"+p.getPrice()+"'  where id = '"+p.getId()+"'";
//        Query q = getSession().createQuery(hql);
//        q.executeUpdate();
//        getSession().flush();
//        return p;
//    }


    public int delete(Product p) {
    	String sql = "delete product where id = '"+p.getId()+"'";
        int delete = getSession().createQuery(sql).executeUpdate();
        return delete;
    }


	@Override
	public Product update(Product t) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
