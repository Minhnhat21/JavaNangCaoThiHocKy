package com.minhnhat.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.minhnhat.entity.ExamSubject;
import com.minhnhat.entity.ExamSubjectService;
import com.minhnhat.entity.MajorsRegister;
import com.minhnhat.entity.Student;
import com.minhnhat.exception.StudentNotFoundException;
import com.minhnhat.payload.request.StudentRequest;
import com.minhnhat.payload.response.PageInfo;
import com.minhnhat.payload.response.StudentInformationResponse;
import com.minhnhat.service.MajorRegisterService;
import com.minhnhat.service.StudentService;

import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@Controller
@RequestMapping(path = "/admin")
public class AdminController {
	
	@GetMapping(path = "/home")
	public String initPage(Model model) {
		return "admin-page";
	}
	
	@GetMapping(path = "/table")
	public String managerStudentPage(Model model) {
		return "admin-manager-student";
	}
	
	private final StudentService studentService;
    private final ExamSubjectService examSubjectService;
    private final MajorRegisterService majorRegisterService;

    @Autowired
    public AdminController(StudentService studentService, ExamSubjectService examSubjectService, MajorRegisterService majorRegisterService) {
        this.studentService = studentService;
        this.examSubjectService = examSubjectService;
        this.majorRegisterService = majorRegisterService;
    }


    @GetMapping("/q")
    public HttpEntity<PageInfo<Student>> getStudents(@ApiParam("Page") @RequestParam(value = "page", required = false) Integer page,
                                                     @ApiParam("Limit") @RequestParam(value = "limit", required = false) Integer limit) {
        return new HttpEntity<>(studentService.getStudents(page,limit));
    }

	@ApiOperation("get details student by ID")
    @GetMapping("/{id}")
	public HttpEntity<Student> getStudentByID(
			@ApiParam("student ID") @PathVariable("id") Integer id) throws StudentNotFoundException {
        return new HttpEntity<>(studentService.getStudentById(id));
    }
	
	@GetMapping("/cccd/{cccd}")
	public HttpEntity<Student> getStudentByCCCD(
			@ApiParam("student Indentity") @PathVariable("cccd") Long id) throws StudentNotFoundException {
        return new HttpEntity<>(studentService.getStudentByCitizenID(id));
    }

    @GetMapping("/subject")
	/* @PreAuthorize("hasRole('ADMIN')") */
    public HttpEntity<List<ExamSubject>> getAll() {
        return new HttpEntity<>(examSubjectService.getAllExamSubject());
    }

    @GetMapping("/majors")
	/* @PreAuthorize("hasRole('ADMIN')") */
    public HttpEntity<List<MajorsRegister>> getAllMajors() {
        return new HttpEntity<>(majorRegisterService.getMajorsList());
    }

    //Register new student
    @PostMapping("/register")
    public HttpEntity<Student> registerStudent(@Valid @RequestBody StudentRequest studentRequest) {
        return new HttpEntity<>(studentService.addNewStudent(studentRequest));
    }


    //Update Student
    @PutMapping("/{cccd}")
    public HttpEntity<Student> updateStudent(@PathVariable("cccd") Long citizenID, @RequestBody StudentRequest studentRequest) {
        return new HttpEntity<>(studentService.updateStudent(citizenID,studentRequest));
    }

    @DeleteMapping("{cccd}")
    public ResponseEntity<?> deleteStudentByID(@PathVariable("cccd") Long id) {
        studentService.deleteStudentByID(id);
        return ResponseEntity.ok().build();
    }

    //Search
    @GetMapping("/search")
    public HttpEntity<PageInfo<Student>> searchResultsExam(@ApiParam("Page") @RequestParam(value = "page", required = false) Integer page,
                                                       @ApiParam("Limit") @RequestParam(value = "limit", required = false) Integer limit,
                                                        @RequestParam(value = "nameKey", required = false) String nameKey,
                                                       @RequestParam(value = "majorKey", required = false) String majorKey) {
        return new HttpEntity<>(studentService.studentsSearchList(page, limit,nameKey, majorKey));
    }

    //Search
    @GetMapping("/search/majors")
    public HttpEntity<List<Student>> searchResultsMajors(@RequestParam(value = "majorKey", required = false) String majorKey) {
        return new HttpEntity<>(studentService.studentsSearchListByMajorsName(majorKey));
    }
}
