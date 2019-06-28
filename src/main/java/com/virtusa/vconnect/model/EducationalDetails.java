package com.virtusa.vconnect.model;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class EducationalDetails implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String sscSchoolName; 
	private int  sscPercentage ;
	private String intermediateCollegeName ;
	private int intermediatePercentage ;
	private String uGCollegeName ;
	private int uGpercentage ;
	private String pGCollegeName;
	private int pGPercentage; 
	
	public String getSscSchoolName() {
		return sscSchoolName;
	}
	public void setSscSchoolName(String sscSchoolName) {
		this.sscSchoolName = sscSchoolName;
	}
	public int getSscPercentage() {
		return sscPercentage;
	}
	public void setSscPercentage(int sscPercentage) {
		this.sscPercentage = sscPercentage;
	}
	public String getIntermediateCollegeName() {
		return intermediateCollegeName;
	}
	public void setIntermediateCollegeName(String intermediateCollegeName) {
		this.intermediateCollegeName = intermediateCollegeName;
	}
	public int getIntermediatePercentage() {
		return intermediatePercentage;
	}
	public void setIntermediatePercentage(int intermediatePercentage) {
		this.intermediatePercentage = intermediatePercentage;
	}
	public String getuGCollegeName() {
		return uGCollegeName;
	}
	public void setuGCollegeName(String uGCollegeName) {
		this.uGCollegeName = uGCollegeName;
	}
	public int getuGpercentage() {
		return uGpercentage;
	}
	public void setuGpercentage(int uGpercentage) {
		this.uGpercentage = uGpercentage;
	}
	public String getpGCollegeName() {
		return pGCollegeName;
	}
	public void setpGCollegeName(String pGCollegeName) {
		this.pGCollegeName = pGCollegeName;
	}
	public int getpGPercentage() {
		return pGPercentage;
	}
	public void setpGPercentage(int pGPercentage) {
		this.pGPercentage = pGPercentage;
	}
	
}
