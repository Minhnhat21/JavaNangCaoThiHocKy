package com.minhnhat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.minhnhat.entity.Student;
import com.minhnhat.exception.StudentNotFoundException;
import com.minhnhat.service.StudentService;

@Controller
@RequestMapping(path ="/home")
public class HomeController {
	
	private final StudentService studentService;

    @Autowired
    public HomeController(StudentService studentService) {
        this.studentService = studentService;
    }
    
    @GetMapping("/")
	private String initPage(Model model) {
		model.addAttribute("hello", "HelloWorld");
		return "home-page";
	}
	
	
    @GetMapping("/api/search")
    public HttpEntity<Student> searchResultsExam(@RequestParam(value = "key", required = false) Long key) throws StudentNotFoundException {
        return new HttpEntity<>(studentService.studentResults(key));
    }

    @GetMapping("/api/rank")
    public HttpEntity<Integer> rankList(@RequestParam(value = "key", required = false) Long key) {
        return new HttpEntity<>(studentService.rankingOfStudent(key));
    }
}
