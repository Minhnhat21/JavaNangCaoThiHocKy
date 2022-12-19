package com.minhnhat.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.minhnhat.entity.Student;
import com.minhnhat.entity.account.User;
import com.minhnhat.service.StudentService;

@Controller
@RequestMapping(path = "/student")
public class StudentController {
	
	private final StudentService studentService;
	
	
	public StudentController(StudentService studentService) {
		super();
		this.studentService = studentService;
	}

	/* @RequestMapping(value = {"/student/home" }, method = RequestMethod.GET) */
	@GetMapping(path = "/home")
	public String initPage(Model model, HttpSession session) {
		User user = (User) session.getAttribute("User");
		Student student = studentService.findStudentByUserId(user.getId());
		model.addAttribute("student",student);
		return "student-page";
	}
	
//	@RequestMapping(value = {"/student/home/score" }, method = RequestMethod.GET)
	@GetMapping(path = "/scoreTable")
	public String pageScore(Model model, HttpSession session) {
//		User user = (User) session.getAttribute("User");
//		Student student = studentService.findStudentByUserId(user.getId());
//		model.addAttribute("student",student);		
		model.addAttribute("message","Xin lỗi, chức năng này chưa hoàn thiện");
		return "studentScorePage";
	}
	
}
