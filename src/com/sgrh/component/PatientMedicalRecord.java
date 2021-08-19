package com.sgrh.component;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import org.springframework.context.annotation.Scope;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.RequestScope;

@Component
@RequestScope
@Embeddable
public class PatientMedicalRecord {
	private boolean consent;
	private boolean assent;
	
	@Column(name="hospital_name")
	private String hospitalName;
	
	@Column(name="icmr_id", unique=true)
	private String icmrId;
	private String referred;
	private String diagnosis;
	private String finalDiagnosis;
	@Column(name="date_record")
	@DateTimeFormat(iso=ISO.DATE)
	private LocalDate dateofRecord;
	
	@Column(name="date_clinical_examination")
	@DateTimeFormat(iso=ISO.DATE)
	private LocalDate dateofClinicalExamination;
	
	public boolean getConsent() {
		return consent;
	}
	public void setConsent(boolean consent) {
		this.consent = consent;
	}
	public boolean getAssent() {
		return assent;
	}
	public void setAssent(boolean assent) {
		this.assent = assent;
	}
	public String getHospitalName() {
		return hospitalName;
	}
	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}
	
	public String getIcmrId() {
		return icmrId;
	}
	public void setIcmrId(String icmrId) {
		this.icmrId = icmrId;
	}
	public String getReferred() {
		return referred;
	}
	public void setReferred(String referred) {
		this.referred = referred;
	}
	public String getDiagnosis() {
		return diagnosis;
	}
	public void setDiagnosis(String diagnosis) {
		this.diagnosis = diagnosis;
	}
	public LocalDate getDateofRecord() {
		return dateofRecord;
	}
	public void setDateofRecord(LocalDate dateofRecord) {
		this.dateofRecord = dateofRecord;
	}
	public LocalDate getDateofClinicalExamination() {
		return dateofClinicalExamination;
	}
	public void setDateofClinicalExamination(LocalDate dateofClinicalExamination) {
		this.dateofClinicalExamination = dateofClinicalExamination;
	}
	public String getFinalDiagnosis() {
		return finalDiagnosis;
	}
	public void setFinalDiagnosis(String finalDiagnosis) {
		this.finalDiagnosis = finalDiagnosis;
	}
}
