package com.virtusa.vconnect.model;

import java.io.File;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
@Entity
public class Candidate {
	@Id
	@GeneratedValue
	private int candidateId;
	private String firstName;
	public String getPreviousCompany() {
		return previousCompany;
	}
	public void setPreviousCompany(String previousCompany) {
		this.previousCompany = previousCompany;
	}

	private String lastName;
	private String gender;
	private  String previousCompany;
	private String skillset;
	private String location;
	private String country;
	private String Hrpannel;
	private String Trpannel;
	public String getHrpannel() {
		return Hrpannel;
	}
	public void setHrpannel(String hrpannel) {
		Hrpannel = hrpannel;
	}
	public String getTrpannel() {
		return Trpannel;
	}
	public void setTrpannel(String trpannel) {
		Trpannel = trpannel;
	}

	private String jobDesignation;
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public int getExperience() {
		return experience;
	}
	public void setExperience(int experience) {
		this.experience = experience;
	}

	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getJobDesignation() {
		return jobDesignation;
	}
	public void setJobDesignation(String jobDesignation) {
		this.jobDesignation = jobDesignation;
	}
	public String getSkillset() {
		return skillset;
	}
	public void setSkillset(String skillset) {
		this.skillset = skillset;
	}

	private int experience;
	private String emailId;
	private long mobileNumber;
	private File resume;
	private String status;
	private int jobId;
	public int getJobId() {
		return jobId;
	}
	public void setJobId(int jobId) {
		this.jobId = jobId;
	}
	public String getJobDomain() {
		return jobDomain;
	}
	public void setJobDomain(String jobDomain) {
		this.jobDomain = jobDomain;
	}
	private String jobDomain;
	
	public int getCandidateId() {
		return candidateId;
	}
	public void setCandidateId(int candidateId) {
		this.candidateId = candidateId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public long getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public File getResume() {
		return resume;
	}
	public void setResume(File resume) {
		this.resume = resume;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
}
