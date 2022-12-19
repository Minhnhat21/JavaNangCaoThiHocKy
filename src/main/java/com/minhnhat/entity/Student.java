package com.minhnhat.entity;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.minhnhat.entity.account.User;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;


@Entity
@Table(name = "student")
//@Getter
//@Setter
public class Student{

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
	
	@NotNull
    @Column(name = "citizen_identity", unique = true)
    private Long citizenIdentity;

    @NotBlank
    @Column(name = "fullname")
    private  String fullName;

    @Email
    @Column(name = "email")
    private String email;

//    @NotNull
    @Column(name = "date_of_birth")
    private LocalDate dob;

    @Column(name = "gender")
    private boolean gender;

    @Column(name = "address")
    private String address;
    
    @Column(name = "birth_place")
    private String birthPlace;

    @Column(name = "national")
    private String national;

    @Column(name = "religion")
    private String religion;

    @Column(name = "phone_number")
    private String phoneNumber;

    @NotNull
    @Column(name = "priority_point")
    private float priorityPoint;
    @Column(name = "total_score")
    private float totalScore;

    private boolean isPass;

    @ManyToOne
    @JoinColumn(name = "majors_register_id")
    private MajorsRegister majorsRegister;

    @OneToMany(mappedBy = "student", cascade = CascadeType.ALL)
    @JsonIgnore
    private List<Score> scores;

    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;

    
 
    public Student() {
		super();
	}


	public Student(Long citizenIdentity, String fullName, String email, LocalDate dob, boolean gender, String address, float priorityPoint) {
        this.citizenIdentity = citizenIdentity;
        this.fullName = fullName;
        this.email = email;
        this.dob = dob;
        this.gender = gender;
        this.address = address;
        this.priorityPoint = priorityPoint;
    }
    
    

    public Student(@NotNull Long citizenIdentity, @NotBlank String fullName, @Email String email, LocalDate dob,
			boolean gender, String address, String birthPlace, String national, String religion, String phoneNumber,
			@NotNull float priorityPoint, float totalScore, boolean isPass, MajorsRegister majorsRegister,
			List<Score> scores, User user) {
		super();
		this.citizenIdentity = citizenIdentity;
		this.fullName = fullName;
		this.email = email;
		this.dob = dob;
		this.gender = gender;
		this.address = address;
		this.birthPlace = birthPlace;
		this.national = national;
		this.religion = religion;
		this.phoneNumber = phoneNumber;
		this.priorityPoint = priorityPoint;
		this.totalScore = totalScore;
		this.isPass = isPass;
		this.majorsRegister = majorsRegister;
		this.scores = scores;
		this.user = user;
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




	public float getTotalScore() {
		return totalScore;
	}




	public void setTotalScore(float totalScore) {
		this.totalScore = totalScore;
	}




	public boolean isPass() {
		return isPass;
	}




	public void setPass(boolean isPass) {
		this.isPass = isPass;
	}




	public MajorsRegister getMajorsRegister() {
		return majorsRegister;
	}




	public void setMajorsRegister(MajorsRegister majorsRegister) {
		this.majorsRegister = majorsRegister;
	}




	public List<Score> getScores() {
		return scores;
	}




	public void setScores(List<Score> scores) {
		this.scores = scores;
	}




	public User getUser() {
		return user;
	}




	public void setUser(User user) {
		this.user = user;
	}




	@Override
    public String toString() {
        return "Student{" +
                "citizenIdentity=" + citizenIdentity +
                ", fullName='" + fullName + '\'' +
                ", email='" + email + '\'' +
                ", dto=" + dob +
                ", gender=" + gender +
                ", address='" + address + '\'' +
                ", priorityPoint=" + priorityPoint +
                ", totalScore=" + totalScore +
                ", majorsRegister=" + majorsRegister +
                ", isPass=" + isPass +
                '}';
    }




}
