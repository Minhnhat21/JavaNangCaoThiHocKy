package com.minhnhat.service;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minhnhat.entity.account.Role;
import com.minhnhat.entity.account.User;
import com.minhnhat.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private final UserRepository userRepository;
	
	
	public UserService(UserRepository userRepository) {
		super();
		this.userRepository = userRepository;
	}


	public String checkAuth(String username, String pass) {
		String role = "";
		if(userRepository.checkUs(username, pass) == true) {
			List<User> listUser = userRepository.findUserByRoleName(username);
			User myUser = listUser.get(0);
			List<Role> roles = myUser.getRoles();
			if(roles.size() == 1) {
				role = String.valueOf(roles.get(0).getName());
			}
		}
		return role;
		
	}
	
	public User getUser(String username, String pass) {
		User myUser = new User();
		if(userRepository.checkUs(username, pass) == true) {
			List<User> listUser = userRepository.findUserByRoleName(username);
			myUser = listUser.get(0);	
		}
		return myUser;
	}

}
