package com.sgrh.component;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.RequestScope;

import com.sgrh.component.lookup.EducationCode;


@Component
@RequestScope
@Embeddable
public class SocioDemographic {
	
	@OneToOne
	@JoinColumn(name="education_status")
	private EducationCode patientEducationStatus;
	
	
	private String patientOccupation;
	
	
	private String monthlyIncome;
	
	@Column(name="tribal")
	private boolean tribal;
	
	@Column(name="non_tribal")
	private String nonTribal;
	
	private String religion;
	
	private String caste;
	
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
	
	public String getCaste() {
		return caste;
	}
	public void setCaste(String caste) {
		this.caste = caste;
	}
	
	public EducationCode getPatientEducationStatus() {
		return patientEducationStatus;
	}
	public void setPatientEducationStatus(EducationCode patientEducationStatus) {
		this.patientEducationStatus = patientEducationStatus;
	}
	public String getPatientOccupation() {
		return patientOccupation;
	}
	public void setPatientOccupation(String patientOccupation) {
		this.patientOccupation = patientOccupation;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public String getMonthlyIncome() {
		return monthlyIncome;
	}
	public void setMonthlyIncome(String monthlyIncome) {
		this.monthlyIncome = monthlyIncome;
	}
}
