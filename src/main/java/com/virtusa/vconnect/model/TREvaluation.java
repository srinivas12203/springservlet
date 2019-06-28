package com.virtusa.vconnect.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class TREvaluation {
	@Id
	@GeneratedValue
	private int id;
	private String candidateName;
	private String jobDomain;
	private String department;
	private String interviewer;
	private String hire;
	private String knowledge;
	private String jobExperience;
	private String education;
	private String initiative;
	private String communication;
	private String confidence;
	private String strengths;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCandidateName() {
		return candidateName;
	}
	public void setCandidateName(String candidateName) {
		this.candidateName = candidateName;
	}
	public String getJobDomain() {
		return jobDomain;
	}
	public void setJobDomain(String jobDomain) {
		this.jobDomain = jobDomain;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getInterviewer() {
		return interviewer;
	}
	public void setInterviewer(String interviewer) {
		this.interviewer = interviewer;
	}
	public String getHire() {
		return hire;
	}
	public void setHire(String hire) {
		this.hire = hire;
	}
	public String getKnowledge() {
		return knowledge;
	}
	public void setKnowledge(String knowledge) {
		this.knowledge = knowledge;
	}
	public String getJobExperience() {
		return jobExperience;
	}
	public void setJobExperience(String jobExperience) {
		this.jobExperience = jobExperience;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getInitiative() {
		return initiative;
	}
	public void setInitiative(String initiative) {
		this.initiative = initiative;
	}
	public String getCommunication() {
		return communication;
	}
	public void setCommunication(String communication) {
		this.communication = communication;
	}
	public String getConfidence() {
		return confidence;
	}
	public void setConfidence(String confidence) {
		this.confidence = confidence;
	}
	public String getStrengths() {
		return strengths;
	}
	public void setStrengths(String strengths) {
		this.strengths = strengths;
	}
	

}
