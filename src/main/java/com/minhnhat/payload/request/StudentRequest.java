package com.minhnhat.payload.request;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Column;
import javax.validation.constraints.*;

//@Getter
//@Setter
public class StudentRequest {

    @NotNull
    private Long citizenIdentity;

    @NotBlank
    private  String fullName;

    @Email(message = "Email không hợp lệ")
    private String email;

    private LocalDate dob;

    @NotNull
    private boolean gender;

    @NotNull
    private String address;

    @NotNull
    private float priorityPoint;
    
    @NotNull
    private String birthPlace;

    @NotNull
    private String national;

    @NotNull
    private String religion;

    @NotNull
    private String phoneNumber;

    @NotBlank
    private String majorsName;

    private Float score1;
    private Float score2;
    private Float score3;

    private List<String> examSubject;

	public Long getCitizenIdentity() {
		return citizenIdentity;
	}

	public void setCitizenIdentity(Long citizenIdentity) {
		this.citizenIdentity = citizenIdentity;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public LocalDate getDob() {
		return dob;
	}

	public void setDob(LocalDate dob) {
		this.dob = dob;
	}

	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public float getPriorityPoint() {
		return priorityPoint;
	}

	public void setPriorityPoint(float priorityPoint) {
		this.priorityPoint = priorityPoint;
	}

	public String getMajorsName() {
		return majorsName;
	}

	public void setMajorsName(String majorsName) {
		this.majorsName = majorsName;
	}

	public Float getScore1() {
		return score1;
	}

	public void setScore1(Float score1) {
		this.score1 = score1;
	}

	public Float getScore2() {
		return score2;
	}

	public void setScore2(Float score2) {
		this.score2 = score2;
	}

	public Float getScore3() {
		return score3;
	}

	public void setScore3(Float score3) {
		this.score3 = score3;
	}

	public List<String> getExamSubject() {
		return examSubject;
	}

	public void setExamSubject(List<String> examSubject) {
		this.examSubject = examSubject;
	}

	public String getBirthPlace() {
		return birthPlace;
	}

	public void setBirthPlace(String birthPlace) {
		this.birthPlace = birthPlace;
	}

	public String getNational() {
		return national;
	}

	public void setNational(String national) {
		this.national = national;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	
    
    

}