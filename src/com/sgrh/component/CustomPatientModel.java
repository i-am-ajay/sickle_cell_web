package com.sgrh.component;

import com.sgrh.component.lookup.ReligionCode;

public class CustomPatientModel {
	private PatientInformation patientInformation;
	private ReligionCode religionCode;
	
	public PatientInformation getPatientInformation() {
		return patientInformation;
	}
	public void setPatientInformation(PatientInformation patientInformation) {
		this.patientInformation = patientInformation;
	}
	public ReligionCode getReligionCode() {
		return religionCode;
	}
	public void setReligionCode(ReligionCode religionCode) {
		this.religionCode = religionCode;
	}
	
	
}
