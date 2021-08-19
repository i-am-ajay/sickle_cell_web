package com.sgrh.component;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.RequestScope;

@Component
@RequestScope
@Entity
public class Examination {
	
	@Id
	private String regNo;
	
	@OneToOne
	@JoinColumn(name="patient_reg_no")
	@MapsId
	PatientInformation patientInfoByReg;
	
	@Column(name="presentation_age_year")
	private int presentationAgeInYear;
	
	@Column(name="prestion_age_month")
	private int presentationAgeInMonth;
	
	@Column(name="age_dignosis")
	private int ageAtDignosis;
	
	@Column(name="presenting_pallor")
	private boolean presentingPallor;
	
	@Column(name="presenting_yelloness")
	private boolean presentingYellowness;
	
	@Column(name="presenting_recurrent_fever")
	private boolean presentingRecurrentFever;
	
	@Column(name="presenting_distension_abdomen")
	private boolean presentingDistensionOfAbdomen;
	
	@Column(name="presenting_lethargy")
	private boolean presentingLethargy;
	
	@Column(name="presenting_fatigue")
	private boolean presentingFatigue;
	
	@Column(name="current_age_year")
	private int currentAgeYear;
	
	@Column(name="current_age_month")
	private int currentAgeMonth;
	
	// Family History
	
	// Current Symptoms
	@Column(name="current_dyspnoea")
	private boolean currentDyspnoea;
	
	@Column(name="current_abdominal_pain")
	private boolean currentAbdominalPain;
	
	@Column(name="current_chest_pain")
	private boolean currentChestPain;
	
	@Column(name="current_bond_join_pain")
	private boolean currentBoneAndJointPain;
	
	@Column(name="current_jaundice")
	private boolean currentJaundice;
	
	@Column(name="current_any_other")
	private boolean currentAnyOther;
	
	@Column(name="other_symptoms")
	private String otherSymptoms;
	
	// At the time of examination
	private double height; // ? Z score
	private double weight;
	
	@Column(name="exam_hemolyctic_facies")
	private boolean examHemolycticfacies;
	
	@Column(name="exam_pallor")
	private boolean examPallor;
	
	@Column(name="exam_jaundice")
	private boolean examJaundice;
	
	@Column(name="exam_endema")
	private boolean examEndema;
	
	@Column(name="exam_leg_ulcer")
	private boolean examLegUlcer;
	
	@Column(name="hepatomegaly")
	private boolean hepatomegaly;
	
	@Column(name="splenomegaly")
	private boolean splenomegaly;
	
	@Column(name="any_abnormalities")
	private boolean anyAbnormalities;
	
	@Column(name="abnormnalities_detail")
	private String abnormalitiesDetail;

	public int getPresentationAgeInYear() {
		return presentationAgeInYear;
	}

	public void setPresentationAgeInYear(int presentationAgeInYear) {
		this.presentationAgeInYear = presentationAgeInYear;
	}

	public int getPresentationAgeInMonth() {
		return presentationAgeInMonth;
	}

	public void setPresentationAgeInMonth(int presentationAgeInMonth) {
		this.presentationAgeInMonth = presentationAgeInMonth;
	}

	public int getAgeAtDignosis() {
		return ageAtDignosis;
	}

	public void setAgeAtDignosis(int ageAtDignosis) {
		this.ageAtDignosis = ageAtDignosis;
	}

	public boolean isPresentingPallor() {
		return presentingPallor;
	}

	public void setPresentingPallor(boolean presentingPallor) {
		this.presentingPallor = presentingPallor;
	}

	public boolean isPresentingYellowness() {
		return presentingYellowness;
	}

	public void setPresentingYellowness(boolean presentingYellowness) {
		this.presentingYellowness = presentingYellowness;
	}

	public boolean isPresentingRecurrentFever() {
		return presentingRecurrentFever;
	}

	public void setPresentingRecurrentFever(boolean presentingRecurrentFever) {
		this.presentingRecurrentFever = presentingRecurrentFever;
	}

	public boolean isPresentingDistensionOfAbdomen() {
		return presentingDistensionOfAbdomen;
	}

	public void setPresentingDistensionOfAbdomen(boolean presentingDistensionOfAbdomen) {
		this.presentingDistensionOfAbdomen = presentingDistensionOfAbdomen;
	}

	public boolean isPresentingLethargy() {
		return presentingLethargy;
	}

	public void setPresentingLethargy(boolean presentingLethargy) {
		this.presentingLethargy = presentingLethargy;
	}

	public boolean isPresentingFatigue() {
		return presentingFatigue;
	}

	public void setPresentingFatigue(boolean presentingFatigue) {
		this.presentingFatigue = presentingFatigue;
	}

	public int getCurrentAgeYear() {
		return currentAgeYear;
	}

	public void setCurrentAgeYear(int currentAgeYear) {
		this.currentAgeYear = currentAgeYear;
	}

	public int getCurrentAgeMonth() {
		return currentAgeMonth;
	}

	public void setCurrentAgeMonth(int currentAgeMonth) {
		this.currentAgeMonth = currentAgeMonth;
	}

	public boolean isCurrentDyspnoea() {
		return currentDyspnoea;
	}

	public void setCurrentDyspnoea(boolean currentDyspnoea) {
		this.currentDyspnoea = currentDyspnoea;
	}

	public boolean isCurrentAbdominalPain() {
		return currentAbdominalPain;
	}

	public void setCurrentAbdominalPain(boolean currentAbdominalPain) {
		this.currentAbdominalPain = currentAbdominalPain;
	}

	public boolean isCurrentChestPain() {
		return currentChestPain;
	}

	public void setCurrentChestPain(boolean currentChestPain) {
		this.currentChestPain = currentChestPain;
	}

	public boolean isCurrentBoneAndJointPain() {
		return currentBoneAndJointPain;
	}

	public void setCurrentBoneAndJointPain(boolean currentBoneAndJointPain) {
		this.currentBoneAndJointPain = currentBoneAndJointPain;
	}

	public boolean isCurrentJaundice() {
		return currentJaundice;
	}

	public void setCurrentJaundice(boolean currentJaundice) {
		this.currentJaundice = currentJaundice;
	}

	public boolean isCurrentAnyOther() {
		return currentAnyOther;
	}

	public void setCurrentAnyOther(boolean currentAnyOther) {
		this.currentAnyOther = currentAnyOther;
	}

	public String getOtherSymptoms() {
		return otherSymptoms;
	}

	public void setOtherSymptoms(String otherSymptoms) {
		this.otherSymptoms = otherSymptoms;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public boolean isExamHemolycticfacies() {
		return examHemolycticfacies;
	}

	public void setExamHemolycticfacies(boolean examHemolycticfacies) {
		this.examHemolycticfacies = examHemolycticfacies;
	}

	public boolean isExamPallor() {
		return examPallor;
	}

	public void setExamPallor(boolean examPallor) {
		this.examPallor = examPallor;
	}

	public boolean isExamJaundice() {
		return examJaundice;
	}

	public void setExamJaundice(boolean examJaundice) {
		this.examJaundice = examJaundice;
	}

	public boolean isExamEndema() {
		return examEndema;
	}

	public void setExamEndema(boolean examEndema) {
		this.examEndema = examEndema;
	}

	public boolean isExamLegUlcer() {
		return examLegUlcer;
	}

	public void setExamLegUlcer(boolean examLegUlcer) {
		this.examLegUlcer = examLegUlcer;
	}

	public boolean isHepatomegaly() {
		return hepatomegaly;
	}

	public void setHepatomegaly(boolean hepatomegaly) {
		this.hepatomegaly = hepatomegaly;
	}

	public boolean isSplenomegaly() {
		return splenomegaly;
	}

	public void setSplenomegaly(boolean splenomegaly) {
		this.splenomegaly = splenomegaly;
	}

	public boolean isAnyAbnormalities() {
		return anyAbnormalities;
	}

	public void setAnyAbnormalities(boolean anyAbnormalities) {
		this.anyAbnormalities = anyAbnormalities;
	}

	public String getAbnormalitiesDetail() {
		return abnormalitiesDetail;
	}

	public void setAbnormalitiesDetail(String abnormalitiesDetail) {
		this.abnormalitiesDetail = abnormalitiesDetail;
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
}
