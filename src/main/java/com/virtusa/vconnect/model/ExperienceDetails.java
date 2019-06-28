package com.virtusa.vconnect.model;

import java.io.Serializable;

import javax.persistence.Embeddable;


@Embeddable

public class ExperienceDetails implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String recentProject;
	private int yearOfExperience;
	public String getRecentProject() {
		return recentProject;
	}
	public void setRecentProject(String recentProject) {
		this.recentProject = recentProject;
	}
	public int getYearOfExperience() {
		return yearOfExperience;
	}
	public void setYearOfExperience(int yearOfExperience) {
		this.yearOfExperience = yearOfExperience;
	}

	
}
