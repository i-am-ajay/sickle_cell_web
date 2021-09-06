package com.sgrh.component;

import javax.persistence.Column;
import javax.persistence.ConstraintMode;
import javax.persistence.Embeddable;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.RequestScope;

import com.sgrh.component.lookup.EducationCode;
import com.sgrh.component.lookup.Lookup;
import com.sgrh.component.lookup.MonthlyIncomeCode;
import com.sgrh.component.lookup.NonTribalCode;
import com.sgrh.component.lookup.OccupationCode;
import com.sgrh.component.lookup.ReligionCode;


@Component
@RequestScope
@Embeddable
public class SocioDemographic {
	
	@Column(name="patient_education")
	private String patientEducationStatus;
	
	@Column(name="patient_occupation")
	private String patientOccupation;
	
	@OneToOne
	@JoinColumn(name="monthly_income_code", foreignKey= @ForeignKey(name="none",value=ConstraintMode.NO_CONSTRAINT))
	private Lookup monthlyIncome;
	
	@Column(name="tribal")
	private boolean tribal;
	
	@OneToOne
	@JoinColumn(name="non_tribal_code", foreignKey= @ForeignKey(name="none",value=ConstraintMode.NO_CONSTRAINT))
	private Lookup nonTribal;
	
	@OneToOne
	@JoinColumn(name="religion_code", foreignKey= @ForeignKey(name="none",value=ConstraintMode.NO_CONSTRAINT))
	private Lookup religion;
	
	private String caste;
	
	public boolean getTribal() {
		return tribal;
	}
	public void setTribal(boolean tribal) {
		this.tribal = tribal;
	}
	
	public String getCaste() {
		return caste;
	}
	public void setCaste(String caste) {
		this.caste = caste;
	}
	
	public Lookup getMonthlyIncome() {
		return monthlyIncome;
	}
	public void setMonthlyIncome(Lookup monthlyIncome) {
		this.monthlyIncome = monthlyIncome;
	}
	public Lookup getNonTribal() {
		return nonTribal;
	}
	public void setNonTribal(Lookup nonTribal) {
		this.nonTribal = nonTribal;
	}
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
	public Lookup getReligion() {
		return religion;
	}
	public void setReligion(Lookup religion) {
		this.religion = religion;
	}
}
