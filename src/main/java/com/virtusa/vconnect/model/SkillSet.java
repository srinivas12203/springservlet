package com.virtusa.vconnect.model;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class SkillSet  implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String technology;

	public String getTechnology() {
		return technology;
	}

	public void setTechnology(String technology) {
		this.technology = technology;
	}

}
