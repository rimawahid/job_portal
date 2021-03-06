package com.spring.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.UserDAO;
import com.spring.model.Category;
import com.spring.model.User;


@Service(value = "UserService")
public class UserService {
	@Autowired
	UserDAO userDAO;
	
	/*
	 * public User save(HttpServletRequest request){ String firstname =
	 * request.getParameter("firstName"); User user = new User();
	 * user.setFirstName(firstname);
	 * user.setLastName(request.getParameter("lastName"));
	 * user.setPassword(request.getParameter("password"));
	 * user.setRole(request.getParameter("role"));
	 * user.setCountry(request.getParameter("country")); return userDAO.save(user);
	 * };
	 */
	
	public User save(User u){
        return userDAO.save(u);
    }
	
	public User findByUsernameAndPassword(String email) {
		return userDAO.findByUsernameAndPassword(email);
	}
	
	public List<User> findByClient(String role) {
		return userDAO.findByClient(role);
	}
	
	public List<User> findByFreelancer(String role) {
		return userDAO.findByFreelancer(role);
	}
	
	 public User delete(int pid) {
		 User user = userDAO.getProductById(pid);
	        return userDAO.delete(user);
	    }
}
