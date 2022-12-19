package com.minhnhat.service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.minhnhat.entity.EExamSubject;
import com.minhnhat.entity.Score;
import com.minhnhat.entity.Student;
import com.minhnhat.exception.StudentNotFoundException;
import com.minhnhat.payload.request.StudentRequest;
import com.minhnhat.payload.response.PageInfo;
import com.minhnhat.repository.ExamSubjectRepository;
import com.minhnhat.repository.MajorsRegisterRepository;
import com.minhnhat.repository.ScoreRepository;
import com.minhnhat.repository.StudentRepository;
import com.minhnhat.util.AppUtils;

@Service
public class StudentService {
	
	@Autowired
    private final StudentRepository studentRepository;
    private final ScoreRepository scoreRepository;
    private final MajorsRegisterRepository majorsRegisterRepository;
    private final ExamSubjectRepository examSubjectRepository;

   

    public StudentService(StudentRepository studentRepository, ScoreRepository scoreRepository,
			MajorsRegisterRepository majorsRegisterRepository, ExamSubjectRepository examSubjectRepository) {
		super();
		this.studentRepository = studentRepository;
		this.scoreRepository = scoreRepository;
		this.majorsRegisterRepository = majorsRegisterRepository;
		this.examSubjectRepository = examSubjectRepository;

	}


	public PageInfo<Student> getStudents(Integer page, Integer limit) {
        Pageable pageable = AppUtils.buildPageRequest(page, limit);
        Page<Student> studentPage = studentRepository.findAll(pageable);
        return AppUtils.buildPageResponse(studentPage);
    }


	public Student getStudentById(Integer id) throws StudentNotFoundException {
        return studentRepository.findById(id).orElseThrow(()
                -> new StudentNotFoundException("Not found", "Student with " + id + "not found"));
    }

    public Student addNewStudent(StudentRequest studentRequest) {
        Student newStudent = new Student();
        newStudent.setCitizenIdentity(studentRequest.getCitizenIdentity());
        newStudent.setFullName(studentRequest.getFullName());
        newStudent.setAddress(studentRequest.getAddress());
        newStudent.setEmail(studentRequest.getEmail());
        newStudent.setDob(studentRequest.getDob());
        newStudent.setPriorityPoint(studentRequest.getPriorityPoint());
        newStudent.setGender(studentRequest.isGender());
        newStudent.setBirthPlace(studentRequest.getBirthPlace());
        newStudent.setNational(studentRequest.getNational());
        newStudent.setPhoneNumber(studentRequest.getPhoneNumber());
        newStudent.setReligion(studentRequest.getReligion());
        
        String major = studentRequest.getMajorsName();
        newStudent.setMajorsRegister(majorsRegisterRepository.findMajorsRegisterByMajorsName(major));
        studentRepository.save(newStudent);
  
        inputExamScore(newStudent, studentRequest.getScore1(), studentRequest.getScore2(), studentRequest.getScore3(), studentRequest.getExamSubject());
        return studentRepository.save(newStudent);
    }
    

    public void inputExamScore(Student studentScore, Float score_1,Float score_2,Float score_3, List<String> subjectStr) {

        Score score1 = new Score();
        Score score2 = new Score();
        Score score3 = new Score();

        Set<Score> subjectList = new HashSet<>();

        score1.setStudent(studentScore);
        score1.setExamSubject(examSubjectRepository.findExamSubjectByEExamSubject(EExamSubject.valueOf(subjectStr.get(0))));
        score1.setTestScore(score_1);

        score2.setStudent(studentScore);
        score2.setExamSubject(examSubjectRepository.findExamSubjectByEExamSubject(EExamSubject.valueOf(subjectStr.get(1))));
        score2.setTestScore(score_2);

        score3.setStudent(studentScore);
        score3.setExamSubject(examSubjectRepository.findExamSubjectByEExamSubject(EExamSubject.valueOf(subjectStr.get(2))));
        score3.setTestScore(score_3);

        studentScore.setTotalScore(score1.getTestScore() + score2.getTestScore() + score3.getTestScore() + studentScore.getPriorityPoint());

        if(studentScore.getTotalScore() >= studentScore.getMajorsRegister().getBasicPoint()) {
            studentScore.setPass(true);
        } else {
            studentScore.setPass(false);
        }

        subjectList.add(score1);
        subjectList.add(score2);
        subjectList.add(score3);

        scoreRepository.saveAll(subjectList);
        studentRepository.save(studentScore);
    }

    public Student updateStudent(Long citizenID, StudentRequest student) {
        Student studentUpdate = studentRepository.findStudentByCitizenIdentity(citizenID);
        studentUpdate.setFullName(student.getFullName());
        studentUpdate.setGender(student.isGender());
        studentUpdate.setDob(student.getDob());
        studentUpdate.setPriorityPoint(student.getPriorityPoint());
        studentUpdate.setEmail(student.getEmail());
        studentUpdate.setAddress(student.getAddress());
		
        studentUpdate.setBirthPlace(student.getBirthPlace());
        studentUpdate.setNational(student.getNational());
        studentUpdate.setReligion(student.getReligion());
        studentUpdate.setPhoneNumber(student.getPhoneNumber());
       
        return studentRepository.save(studentUpdate);
    }
    
  

    //Delete student by ID
    @Transactional
    public void deleteStudentByID(Long citizenID) {
    	Student studentUpdate = studentRepository.findStudentByCitizenIdentity(citizenID);
    	studentRepository.delete(studentUpdate);;
    }

    //Search student by fullname and majors register
    public PageInfo<Student> studentsSearchList(Integer page, Integer limit, String keyName, String keyMajors) {
        Pageable pageable = AppUtils.buildPageRequest(page, limit);
        Page<Student> studentPage;

        if(keyMajors.length() == 0) {
           studentPage = studentRepository.findStudentByFullName(pageable, keyName);
        }
        studentPage = studentRepository.findItems(pageable, keyName, keyMajors);

        return AppUtils.buildPageResponse(studentPage);
    }

    //Search student by majors register
    public List<Student> studentsSearchListByMajorsName(String keyMajors) {
       if(keyMajors.isEmpty()) {
           return studentRepository.findAll();
       }
        return studentRepository.findStudentByMajorsRegister(keyMajors);
    }

    //Search student by
    public Student studentResults(Long  citizenIdentity) {
        Student student = studentRepository.findStudentByCitizenIdentity(citizenIdentity);
    	return student;
    }

    public int rankingOfStudent(Long citizenIdentity) {
        List<Student> sortListStudent = studentRepository.findByOrderByTotalScoreDesc();
        int index = sortListStudent.indexOf(studentRepository.findStudentByCitizenIdentity(citizenIdentity));
        return index + 1;
    }
    
    public Student getStudentByCitizenID(Long citizenIdentity) {
    	Student s = studentRepository.findStudentByCitizenIdentity(citizenIdentity);
    	return s;
    }
	
	

}
