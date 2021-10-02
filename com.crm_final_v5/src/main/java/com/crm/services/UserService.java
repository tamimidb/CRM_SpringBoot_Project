package com.crm.services;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crm.dao.UserDAO;
import com.crm.models.User;



@Service(value = "userService")
public class UserService {
	@Autowired
	private UserDAO userDAO;

	public User registerUser(HttpServletRequest request) {
		User u = new User();
		u.setUsername(request.getParameter("username"));
		u.setPassword(request.getParameter("password"));
		u.setDepertment(request.getParameter("depertment"));
//		u.setPhone(request.getParameter("phone"));
	
		return userDAO.save(u);
	}

	public boolean loginUser(HttpServletRequest request) {
		User u = new User();
		u.setUsername(request.getParameter("username"));
		u.setPassword(request.getParameter("password"));
		u.setDepertment(request.getParameter("depertment"));
//		u.setPhone(request.getParameter("phone"));
		return userDAO.login(u);
	}
}
