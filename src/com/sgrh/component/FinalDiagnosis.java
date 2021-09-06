package com.sgrh.component;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.RequestScope;

/**
 * @author gaa8664
 *
 */
@Component
@RequestScope
@Entity
@Table(name="final_diagnosis")
public class FinalDiagnosis {
	
	@Id
	private String regNo;
	
	@OneToOne
	@JoinColumn(name="patient_reg_no")
	@MapsId
	PatientInformation patientInfoByReg;
	
	@Column(name="disease_type")
	private String diseaseType;
	
	@Column(name="other_disease")
	private String otherDisease;
	
	@Column(name="iron_overload_complication")
	private boolean ironOverloadComplication;
	
	@Column(name="iron_overload_details")
	private String ironOverloadDetails;
	
	@Column(name="impression_about_managment")
	private String impressionAboutManagment;
	
	public String getDiseaseType() {
		return diseaseType;
	}
	public void setDiseaseType(String diseaseType) {
		this.diseaseType = diseaseType;
	}
	public String getOtherDisease() {
		return otherDisease;
	}
	public void setOtherDisease(String otherDisease) {
		this.otherDisease = otherDisease;
	}
	public boolean isIronOverloadComplication() {
		return ironOverloadComplication;
	}
	public void setIronOverloadComplication(boolean ironOverloadComplication) {
		this.ironOverloadComplication = ironOverloadComplication;
	}
	public String getIronOverloadDetails() {
		return ironOverloadDetails;
	}
	public void setIronOverloadDetails(String ironOverloadDetails) {
		this.ironOverloadDetails = ironOverloadDetails;
	}
	public String getImpressionAboutManagment() {
		return impressionAboutManagment;
	}
	public void setImpressionAboutManagment(String impressionAboutManagment) {
		this.impressionAboutManagment = impressionAboutManagment;
	}
	public PatientInformation getPatientInfoByReg() {
		return patientInfoByReg;
	}
	public void setPatientInfoByReg(PatientInformation patientInfoByReg) {
		this.patientInfoByReg = patientInfoByReg;
	}
	public String getRegNo() {
		return regNo;
	}
	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}
	
}
