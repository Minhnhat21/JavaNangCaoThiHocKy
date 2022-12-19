package com.minhnhat.payload.response;

import java.time.LocalDate;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

public class StudentInformationResponse {
	@NotNull
    private Long citizenIdentity;

    @NotBlank
    private  String fullName;

    @Email(message = "Email không hợp lệ")
    private String email;

    @NotNull
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
