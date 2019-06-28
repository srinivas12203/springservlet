package com.virtusa.vconnect.model;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Job {


@Id
private int jobId;
private String jobDomain,jobDesignation,location;
@DateTimeFormat
private Date interviewDate;
private String venueDetails;
private String Trpannel;
private String Hrpannel;
private String projectName;
private String projectManager;
private int vacancies;
private int no_applicant;
public int getVacancies() {
	return vacancies;
}
public void setVacancies(int vacancies) {
	this.vacancies = vacancies;
}
public int getNo_applicant() {
	return no_applicant;
}
public void setNo_applicant(int no_applicant) {
	this.no_applicant = no_applicant;
}
public String getProjectName() {
	return projectName;
}
public void setProjectName(String projectName) {
	this.projectName = projectName;
}
public String getProjectManager() {
	return projectManager;
}
public void setProjectManager(String projectManager) {
	this.projectManager = projectManager;
}
public String getTrpannel() {
	return Trpannel;
}
public void setTrpannel(String trpannel) {
	Trpannel = trpannel;
}
public String getHrpannel() {
	return Hrpannel;
}
public void setHrpannel(String hrpannel) {
	Hrpannel = hrpannel;
}
public Date getInterviewDate() {
	return interviewDate;
}
public void setInterviewDate(Date interviewDate) {
	this.interviewDate = interviewDate;
}


public String getVenueDetails() {
	return venueDetails;
}
public void setVenueDetails(String venueDetails) {
	this.venueDetails = venueDetails;
}
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
public String getJobDesignation() {
	return jobDesignation;
}
public void setJobDesignation(String jobDesignation) {
	this.jobDesignation = jobDesignation;
}
public String getLocation() {
	return location;
}
public void setLocation(String location) {
	this.location = location;
}

@ManyToMany
@LazyCollection(LazyCollectionOption.FALSE)
List<Employee> employee;
public List<Employee> getEmployee() {
	return employee;
}
public void setEmployee(List<Employee> employee) {
	this.employee = employee;
}
/*public String getJobDescription() {
	return jobDescription;
}
public void setJobDescription(String jobDescription) {
	this.jobDescription = jobDescription;
}
*/
}
