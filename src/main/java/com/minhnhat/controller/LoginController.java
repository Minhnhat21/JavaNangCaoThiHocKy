package com.minhnhat.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.minhnhat.entity.account.Role;
import com.minhnhat.entity.account.User;
import com.minhnhat.service.StudentService;
import com.minhnhat.service.UserService;

@Controller
@RequestMapping(path = "/login")
public class LoginController {
	
	private final UserService userService;
	
	
	
	public LoginController(UserService userService) {
		super();
		this.userService = userService;
	}

	@GetMapping(path = "/")
	public String loginPage() {
		return "login-page";
	}
	
	
	@GetMapping(path = "/signin")
	public String signin(@RequestParam String username,
						@RequestParam String password) {
		String redirectURL = "";
		String strRole = userService.checkAuth(username,password);
		if(strRole.trim().equals("ROLE_ADMIN")) {
			redirectURL = "redirect:/admin/home";
		} else if(strRole.trim().equals("ROLE_USER")) {
			redirectURL = "redirect:/student/home";
		} else {
			redirectURL = "redirect:/login/";
		}
		return redirectURL;
	}
	
	@GetMapping(path = "/register")
	public String register(@RequestParam String username,
			@RequestParam String password, HttpSession session) {
		String redirectURL = "";
		String strRole = userService.checkAuth(username,password);
		User myUser = userService.getUser(username, password);
		if(myUser != null) {
			session.setAttribute("User", myUser);
			if(strRole.trim().equals("ROLE_ADMIN")) {
				redirectURL = "redirect:/admin/home";
			} else if(strRole.trim().equals("ROLE_USER")) {
				session.setAttribute("User", myUser);
				redirectURL = "redirect:/student/home";
			}
		} else 
			redirectURL = "redirect:/login/";
		return redirectURL;
	}
}
