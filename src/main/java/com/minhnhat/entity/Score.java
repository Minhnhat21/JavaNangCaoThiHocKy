package com.minhnhat.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import org.hibernate.annotations.Cascade;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "score")
//@Getter
//@Setter
public class Score extends BaseEntity{


    private Float testScore;

    @ManyToOne()
    @JoinColumn(name = "student_id")
    private Student student;

    @OneToOne
    @JoinColumn(name = "exam_subject_id")
    private ExamSubject examSubject;

    public Score(Float testScore, Student student) {
        this.testScore = testScore;
        this.student = student;
    }

	public Score() {
		// TODO Auto-generated constructor stub
	}

	public Float getTestScore() {
		return testScore;
	}

	public void setTestScore(Float testScore) {
		this.testScore = testScore;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public ExamSubject getExamSubject() {
		return examSubject;
	}

	public void setExamSubject(ExamSubject examSubject) {
		this.examSubject = examSubject;
	}
	
	
}
