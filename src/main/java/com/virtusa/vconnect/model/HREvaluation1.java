package com.virtusa.vconnect.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class HREvaluation1{
	@Id
	@GeneratedValue
	private int id;
private String candidateName;
private String jobDomain;
private String interviewer;
private String department;
private String appearance;
private String bodyLanguage;
private String eyeContact;
private String responsibility;
private String dedication;
private String learning;
private String confidence;
private String decision;
private String leadership;
private String timeManaging;
private String riskTaking;
private String creativity;
private String hire;



public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getHire() {
	return hire;
}
public void setHire(String hire) {
	this.hire = hire;
}
public String getCreativity() {
	return creativity;
}
public void setCreativity(String creativity) {
	this.creativity = creativity;
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
public String getInterviewer() {
	return interviewer;
}
public void setInterviewer(String interviewer) {
	this.interviewer = interviewer;
}
public String getDepartment() {
	return department;
}
public void setDepartment(String department) {
	this.department = department;
}
public String getAppearance() {
	return appearance;
}
public void setAppearance(String appearance) {
	this.appearance = appearance;
}
public String getBodyLanguage() {
	return bodyLanguage;
}
public void setBodyLanguage(String bodyLanguage) {
	this.bodyLanguage = bodyLanguage;
}
public String getEyeContact() {
	return eyeContact;
}
public void setEyeContact(String eyeContact) {
	this.eyeContact = eyeContact;
}
public String getResponsibility() {
	return responsibility;
}
public void setResponsibility(String responsibility) {
	this.responsibility = responsibility;
}
public String getDedication() {
	return dedication;
}
public void setDedication(String dedication) {
	this.dedication = dedication;
}
public String getLearning() {
	return learning;
}
public void setLearning(String learning) {
	this.learning = learning;
}
public String getConfidence() {
	return confidence;
}
public void setConfidence(String confidence) {
	this.confidence = confidence;
}
public String getDecision() {
	return decision;
}
public void setDecision(String decision) {
	this.decision = decision;
}
public String getLeadership() {
	return leadership;
}
public void setLeadership(String leadership) {
	this.leadership = leadership;
}
public String getTimeManaging() {
	return timeManaging;
}
public void setTimeManaging(String timeManaging) {
	this.timeManaging = timeManaging;
}
public String getRiskTaking() {
	return riskTaking;
}
public void setRiskTaking(String riskTaking) {
	this.riskTaking = riskTaking;
}

}
