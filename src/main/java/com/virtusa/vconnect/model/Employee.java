package com.virtusa.vconnect.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

@Entity
@Table(name="Employee_Inforamtion")
public class Employee implements Serializable{
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

@Id
	private  int employeeId;
	
	private String employeeRole;
	
	private String status;

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@ManyToMany
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<Job> job;
	
	@Embedded
	public BasicDetails basicDetails;

	
	public List<Job> getJob() {
		return job;
	}

	public void setJob(List<Job> job) {
		this.job = job;
	}

	@Embedded
	public PersonalDetails personalDetails;
	
	@Embedded
	public EducationalDetails educationalDetails;
	
    @Embedded
	public  SkillSet skillSet;
    
    @Embedded
    public ExperienceDetails experienceDetails;

	public ExperienceDetails getExperienceDetails() {
		return experienceDetails;
	}

	public void setExperienceDetails(ExperienceDetails experienceDetails) {
		this.experienceDetails = experienceDetails;
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	
	public String getEmployeeRole() {
		return employeeRole;
	}

	public void setEmployeeRole(String employeeRole) {
		this.employeeRole = employeeRole;
	}

	public BasicDetails getBasicDetails() {
		return basicDetails;
	}

	public void setBasicDetails(BasicDetails basicDetails) {
		this.basicDetails = basicDetails;
	}

	public PersonalDetails getPersonalDetails() {
		return personalDetails;
	}

	public void setPersonalDetails(PersonalDetails personalDetails) {
		this.personalDetails = personalDetails;
	}

	public EducationalDetails getEducationalDetails() {
		return educationalDetails;
	}

	public void setEducationalDetails(EducationalDetails educationalDetails) {
		this.educationalDetails = educationalDetails;
	}

	public SkillSet getSkillSet() {
		return skillSet;
	}

	public void setSkillSet(SkillSet skillSet) {
		this.skillSet = skillSet;
	}
	
	
}
