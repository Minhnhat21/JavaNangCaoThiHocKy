package com.minhnhat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(path = "/student")
public class StudentController {
	
	/* @RequestMapping(value = {"/student/home" }, method = RequestMethod.GET) */
	@GetMapping(path = "/home")
	public String initPage(Model model) {
		model.addAttribute("student","Nguyễn Hữu Minh Nhật");
		return "student-page";
	}
	
//	@RequestMapping(value = {"/student/home/score" }, method = RequestMethod.GET)
	@GetMapping(path = "/scoreTable")
	public String pageScore() {
		return "studentScorePage";
	}
	
}
