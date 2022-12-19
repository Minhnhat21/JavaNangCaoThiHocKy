package com.minhnhat.entity;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minhnhat.repository.ExamSubjectRepository;

@Service
public class ExamSubjectService {

    @Autowired
    private ExamSubjectRepository examSubjectRepository;

    public ExamSubjectService(ExamSubjectRepository examSubjectRepository) {
        this.examSubjectRepository = examSubjectRepository;
    }

    public List<ExamSubject> getAllExamSubject() {
        return examSubjectRepository.findAll();
    }
}
