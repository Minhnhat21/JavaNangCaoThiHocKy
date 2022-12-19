package com.minhnhat.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.minhnhat.entity.EExamSubject;
import com.minhnhat.entity.ExamSubject;

@Repository
public interface ExamSubjectRepository extends JpaRepository<ExamSubject, Integer> {
    @Query(value = "select s from ExamSubject s where(:eExamSubject = s.eExamSubject)")
    ExamSubject findExamSubjectByEExamSubject(EExamSubject eExamSubject);
}
