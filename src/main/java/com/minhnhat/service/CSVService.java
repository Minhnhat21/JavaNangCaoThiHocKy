package com.minhnhat.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.minhnhat.entity.Score;
import com.minhnhat.entity.Student;
import com.minhnhat.helper.CSVHelper;
import com.minhnhat.repository.ExamSubjectRepository;
import com.minhnhat.repository.MajorsRegisterRepository;
import com.minhnhat.repository.ScoreRepository;
import com.minhnhat.repository.StudentRepository;

@Service
public class CSVService {
    @Autowired
    private final StudentRepository studentRepository;
    private final ScoreRepository scoreRepository;
 
    public final CSVHelper csvHelper;

    public CSVService(StudentRepository studentRepository, ScoreRepository scoreRepository, MajorsRegisterRepository majorsRegisterRepository, ExamSubjectRepository examSubjectRepository, CSVHelper csvHelper) {
        this.studentRepository = studentRepository;
        this.scoreRepository = scoreRepository;
        this.csvHelper = csvHelper;
    }

    public void save(MultipartFile file) throws IOException {
        try {
            InputStream is = file.getInputStream();
            List<Student> students = new ArrayList<Student>();
            List<Score> scoreSet = new ArrayList<Score>();

            csvHelper.csvToStudents(is, students, scoreSet);

            studentRepository.saveAll(students);
            scoreRepository.saveAll(scoreSet);
        } catch (IOException e) {
            throw new RuntimeException("fail to store csv data: " + e.getMessage());
        }


    }

    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }
}
