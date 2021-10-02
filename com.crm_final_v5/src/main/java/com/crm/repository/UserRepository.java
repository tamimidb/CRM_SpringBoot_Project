package com.crm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
//import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Repository;

import com.crm.models.Lead;



@Repository
public interface UserRepository extends JpaRepository<Lead,Integer>{
	@Query("select u from lead u where u.lead_email = :lead_email ")
	public Lead getUserByUserNameLead(@Param("leadEmail") String leadEmaiString);
}
