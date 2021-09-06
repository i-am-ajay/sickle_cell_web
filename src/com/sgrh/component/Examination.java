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
	private Integer presentationAgeInYear;
	
	@Column(name="prestion_age_month")
	private Integer presentationAgeInMonth;
	
	@Column(name="age_dignosis_year")
	private Integer ageAtDignosisYear;
	
	@Column(name="age_dignosis_month")
	private Integer ageAtDignosisMonth;
	
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
	private Integer currentAgeYear;
	
	@Column(name="current_age_month")
	private Integer currentAgeMonth;
	
	// Family History
	@Column(name="similar_effected_sibling")
	private boolean similarEffectedSibling;
	
	@Column(name="effected_family_member")
	private boolean effectedFamilyMember;
	
	@Column(name="family_member_details")
	private String familyMemberDetails;
	
	// Current Symptoms
	@Column(name="current_fatigue")
	private boolean currentFatigue;
	
	@Column(name="current_recurrent_fever")
	private boolean currentRecurrentFever;
	
	@Column(name="current_pallor")
	private boolean currentPallor;
	
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
	
	
	@Column(name="other_symptoms")
	private String currentOtherSymptoms;
	
	// At the time of examination
	private Double height; // ? Z score
	private Double heightZscore; 
	private Double weight;
	private Double weightZscore;
	
	@Column(name="exam_hemolyctic_facies")
	private boolean examHemolycticfacies;
	
	@Column(name="exam_pallor")
	private boolean examPallor;
	
	@Column(name="exam_jaundice")
	private boolean examJaundice;
	
	@Column(name="exam_edema")
	private boolean examEdema;
	
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

	public Integer getPresentationAgeInYear() {
		return presentationAgeInYear;
	}

	public void setPresentationAgeInYear(Integer presentationAgeInYear) {
		this.presentationAgeInYear = presentationAgeInYear;
	}

	public Integer getPresentationAgeInMonth() {
		return presentationAgeInMonth;
	}

	public void setPresentationAgeInMonth(Integer presentationAgeInMonth) {
		this.presentationAgeInMonth = presentationAgeInMonth;
	}
	
	public Integer getAgeAtDignosisYear() {
		return ageAtDignosisYear;
	}

	public void setAgeAtDignosisYear(Integer ageAtDignosisYear) {
		this.ageAtDignosisYear = ageAtDignosisYear;
	}

	public Integer getAgeAtDignosisMonth() {
		return ageAtDignosisMonth;
	}

	public void setAgeAtDignosisMonth(Integer ageAtDignosisMonth) {
		this.ageAtDignosisMonth = ageAtDignosisMonth;
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

	public String getCurrentOtherSymptoms() {
		return currentOtherSymptoms;
	}

	public void setCurrentOtherSymptoms(String currentOtherSymptoms) {
		this.currentOtherSymptoms = currentOtherSymptoms;
	}

	public Double getHeight() {
		return height;
	}

	public void setHeight(Double height) {
		this.height = height;
	}

	public Double getHeightZscore() {
		return heightZscore;
	}

	public void setHeightZscore(Double heightZscore) {
		this.heightZscore = heightZscore;
	}

	public Double getWeight() {
		return weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public Double getWeightZscore() {
		return weightZscore;
	}

	public void setWeightZscore(Double weightZscore) {
		this.weightZscore = weightZscore;
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

	public boolean isExamEdema() {
		return examEdema;
	}

	public void setExamEdema(boolean examEdema) {
		this.examEdema = examEdema;
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

	public void setCurrentAgeYear(Integer currentAgeYear) {
		this.currentAgeYear = currentAgeYear;
	}

	public void setCurrentAgeMonth(Integer currentAgeMonth) {
		this.currentAgeMonth = currentAgeMonth;
	}

	public Integer getCurrentAgeYear() {
		return currentAgeYear;
	}

	public Integer getCurrentAgeMonth() {
		return currentAgeMonth;
	}

	public boolean isSimilarEffectedSibling() {
		return similarEffectedSibling;
	}

	public void setSimilarEffectedSibling(boolean similarEffectedSibling) {
		this.similarEffectedSibling = similarEffectedSibling;
	}

	public boolean isEffectedFamilyMember() {
		return effectedFamilyMember;
	}

	public void setEffectedFamilyMember(boolean effectedFamilyMember) {
		this.effectedFamilyMember = effectedFamilyMember;
	}

	public String getFamilyMemberDetails() {
		return familyMemberDetails;
	}

	public void setFamilyMemberDetails(String familyMemberDetails) {
		this.familyMemberDetails = familyMemberDetails;
	}

	public boolean isCurrentFatigue() {
		return currentFatigue;
	}

	public void setCurrentFatigue(boolean currentFatigue) {
		this.currentFatigue = currentFatigue;
	}

	public boolean isCurrentRecurrentFever() {
		return currentRecurrentFever;
	}

	public void setCurrentRecurrentFever(boolean currentRecurrentFever) {
		this.currentRecurrentFever = currentRecurrentFever;
	}

	public boolean isCurrentPallor() {
		return currentPallor;
	}

	public void setCurrentPallor(boolean currentPallor) {
		this.currentPallor = currentPallor;
	}

	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}
	
	
}
