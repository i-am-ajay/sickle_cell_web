package com.sgrh.component;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.RequestScope;

@Component
@RequestScope
@Embeddable
public class SocioDemographic {
	@Column(name="patient_education_status")
	private String patientEducationStatus;
	
	@Column(name="patient_occupation")
	private String patientOccupation;
	
	@Column(name="monthy_income")
	private Integer monthlyIncome;
	
	@Column(name="tribal")
	private boolean tribal;
	
	@Column(name="non_tribal")
	private String nonTribal;
	private String religion;
	private String caste;
	public String getPatientEducationStatus() {
		return patientEducationStatus;
	}
	public void setPatientEducationStatus(String patientEducationStatus) {
		this.patientEducationStatus = patientEducationStatus;
	}
	public String getPatientOccupation() {
		return patientOccupation;
	}
	public void setPatientOccupation(String patientOccupation) {
		this.patientOccupation = patientOccupation;
	}
	public Integer getMonthlyIncome() {
		return monthlyIncome;
	}
	public void setMonthlyIncome(Integer monthlyIncome) {
		this.monthlyIncome = monthlyIncome;
	}
	public boolean getTribal() {
		return tribal;
	}
	public void setTribal(boolean tribal) {
		this.tribal = tribal;
	}
	public String getNonTribal() {
		return nonTribal;
	}
	public void setNonTribal(String nonTribal) {
		this.nonTribal = nonTribal;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public String getCaste() {
		return caste;
	}
	public void setCaste(String caste) {
		this.caste = caste;
	}
}
