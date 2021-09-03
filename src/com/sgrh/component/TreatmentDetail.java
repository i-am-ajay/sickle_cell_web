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

@Component
@RequestScope
@Entity
@Table(name="treatment_detail")
public class TreatmentDetail {
	@Id
	private String regNo;
	
	@OneToOne
	@JoinColumn(name="patient_reg_no")
	@MapsId
	PatientInformation patientInfoByReg;
	
	@Column(name="bone_marrow_tranplant")
	private String boneMarrowTransplantation;
	private boolean mbt;
	
	@Column(name="mbt_outcome")
	private String mbtOutcome;
	
	@Column(name="hyper_transfusion_therapy")
	private boolean hyperTransfusionTherapy;

	@Column(name="intermittentTransfusion")
	private boolean intermittentTransfusion;

	private boolean splenectomy;
	// previous true then
	
	@Column(name="age_splenectomy_year")
	private int ageOfSplenectomyYear;
	
	@Column(name="age_splenectomy_month")
	private int ageOfSplenectomyMonth;
	
	@Column(name="age_presentation_year")
	private int agePresentationYear;
	
	@Column(name="age_presentation_month")
	private int agePresentationMonth;
	
	private boolean tranfusion;
	
	@Column(name="first_transfusion_year")
	private int firstTransfusionYear;
	
	@Column(name="first_transfusion_month")
	private int firstTransfusionMonth;
	
	@Column(name="frequencye_per_month")
	private int frequencyPerMonth;
	
	@Column(name="frequencey_peryear")
	private int frequencyPerYear;
	
	@Column(name="hydroxy_urea")
	private boolean hydroxyUrea;
	
	private int hydroxyUreaDose;
	
	private int hydroxyUreaDurationYear;
	private int hydroxyUreaDurationMonth;
	
	@Column(name="pre_hydroxy_urea")
	private double preHydroxyurea;
	
	@Column(name="post_hydroxy_urea")
	private double postHydroxyurea;
	
	@Column(name="pre_hydroxy_urea_frequency")
	private String preHydroxyureaFrequency;
	
	@Column(name="post_hydroxy_urea_frequency")
	private String postHydroxyureaFrequency;
	@Column(name="hydroxy_urea_effect")
	private String hydroxyureaEffect;
	
	@Column(name="disease_modifying_drug_therapy")
	private boolean diseaseModifyingDrugTherapy;
	
	@Column(name="provide_therapy_details")
	private String provideTherapyDetails;
	
	private boolean chelation;
	// previous true then
	@Column(name="chelation_agent")
	private String chelationAgent;
	
	@Column(name="chelation_dosage_year")
	private int chelationDosageYear;
	
	@Column(name="chelation_dosage_month")
	private int chelationDosageMonth;
	
	@Column(name="any_other_medication")
	private String anyOtherMedication;

	public String getBoneMarrowTransplantation() {
		return boneMarrowTransplantation;
	}

	public void setBoneMarrowTransplantation(String boneMarrowTransplantation) {
		this.boneMarrowTransplantation = boneMarrowTransplantation;
	}

	public boolean isMbt() {
		return mbt;
	}

	public void setMbt(boolean mbt) {
		this.mbt = mbt;
	}

	public String getMbtOutcome() {
		return mbtOutcome;
	}

	public void setMbtOutcome(String mbtOutcome) {
		this.mbtOutcome = mbtOutcome;
	}

	public boolean isHyperTransfusionTherapy() {
		return hyperTransfusionTherapy;
	}

	public void setHyperTransfusionTherapy(boolean hyperTransfusionTherapy) {
		this.hyperTransfusionTherapy = hyperTransfusionTherapy;
	}

	public boolean isIntermittentTransfusion() {
		return intermittentTransfusion;
	}

	public void setIntermittentTransfusion(boolean intermittentTransfusion) {
		this.intermittentTransfusion = intermittentTransfusion;
	}

	public boolean isSplenectomy() {
		return splenectomy;
	}

	public void setSplenectomy(boolean splenectomy) {
		this.splenectomy = splenectomy;
	}

	public int getAgeOfSplenectomyYear() {
		return ageOfSplenectomyYear;
	}

	public void setAgeOfSplenectomyYear(int ageOfSplenectomyYear) {
		this.ageOfSplenectomyYear = ageOfSplenectomyYear;
	}

	public int getAgeOfSplenectomyMonth() {
		return ageOfSplenectomyMonth;
	}

	public void setAgeOfSplenectomyMonth(int ageOfSplenectomyMonth) {
		this.ageOfSplenectomyMonth = ageOfSplenectomyMonth;
	}

	public int getAgePresentationYear() {
		return agePresentationYear;
	}

	public void setAgePresentationYear(int agePresentationYear) {
		this.agePresentationYear = agePresentationYear;
	}

	public int getAgePresentationMonth() {
		return agePresentationMonth;
	}

	public void setAgePresentationMonth(int agePresentationMonth) {
		this.agePresentationMonth = agePresentationMonth;
	}

	public boolean isTranfusion() {
		return tranfusion;
	}

	public void setTranfusion(boolean tranfusion) {
		this.tranfusion = tranfusion;
	}

	public int getFirstTransfusionYear() {
		return firstTransfusionYear;
	}

	public void setFirstTransfusionYear(int firstTransfusionYear) {
		this.firstTransfusionYear = firstTransfusionYear;
	}

	public int getFirstTransfusionMonth() {
		return firstTransfusionMonth;
	}

	public void setFirstTransfusionMonth(int firstTransfusionMonth) {
		this.firstTransfusionMonth = firstTransfusionMonth;
	}

	public int getFrequencyPerMonth() {
		return frequencyPerMonth;
	}

	public void setFrequencyPerMonth(int frequencyPerMonth) {
		this.frequencyPerMonth = frequencyPerMonth;
	}

	public int getFrequencyPerYear() {
		return frequencyPerYear;
	}

	public void setFrequencyPerYear(int frequencyPerYear) {
		this.frequencyPerYear = frequencyPerYear;
	}

	public boolean isHydroxyUrea() {
		return hydroxyUrea;
	}

	public void setHydroxyUrea(boolean hydroxyUrea) {
		this.hydroxyUrea = hydroxyUrea;
	}

	public int getHydroxyUreaDose() {
		return hydroxyUreaDose;
	}

	public void setHydroxyUreaDose(int hydroxyUreaDose) {
		this.hydroxyUreaDose = hydroxyUreaDose;
	}

	public int getHydroxyUreaDurationYear() {
		return hydroxyUreaDurationYear;
	}

	public void setHydroxyUreaDurationYear(int hydroxyUreaDurationYear) {
		this.hydroxyUreaDurationYear = hydroxyUreaDurationYear;
	}

	public int getHydroxyUreaDurationMonth() {
		return hydroxyUreaDurationMonth;
	}

	public void setHydroxyUreaDurationMonth(int hydroxyUreaDurationMonth) {
		this.hydroxyUreaDurationMonth = hydroxyUreaDurationMonth;
	}

	public double getPreHydroxyurea() {
		return preHydroxyurea;
	}

	public void setPreHydroxyurea(double preHydroxyurea) {
		this.preHydroxyurea = preHydroxyurea;
	}

	public double getPostHydroxyurea() {
		return postHydroxyurea;
	}

	public void setPosHydroxyurea(double postHydroxyurea) {
		this.postHydroxyurea = postHydroxyurea;
	}

	public String getPreHydroxyureaFrequency() {
		return preHydroxyureaFrequency;
	}

	public void setPreHydroxyureaFrequency(String preHydroxyureaFrequency) {
		this.preHydroxyureaFrequency = preHydroxyureaFrequency;
	}

	public String getPostHydroxyureaFrequency() {
		return postHydroxyureaFrequency;
	}

	public void setPostHydroxyureaFrequency(String postHydroxyureaFrequency) {
		this.postHydroxyureaFrequency = postHydroxyureaFrequency;
	}

	public String getHydroxyureaEffect() {
		return hydroxyureaEffect;
	}

	public void setHydroxyureaEffect(String hydroxyureaEffect) {
		this.hydroxyureaEffect = hydroxyureaEffect;
	}

	public boolean isDiseaseModifyingDrugTherapy() {
		return diseaseModifyingDrugTherapy;
	}

	public void setDiseaseModifyingDrugTherapy(boolean diseaseModifyingDrugTherapy) {
		this.diseaseModifyingDrugTherapy = diseaseModifyingDrugTherapy;
	}

	public String getProvideTherapyDetails() {
		return provideTherapyDetails;
	}

	public void setProvideTherapyDetails(String provideTherapyDetails) {
		this.provideTherapyDetails = provideTherapyDetails;
	}

	public boolean isChelation() {
		return chelation;
	}

	public void setChelation(boolean chelation) {
		this.chelation = chelation;
	}

	public String getChelationAgent() {
		return chelationAgent;
	}

	public void setChelationAgent(String chelationAgent) {
		this.chelationAgent = chelationAgent;
	}

	public int getChelationDosageYear() {
		return chelationDosageYear;
	}

	public void setChelationDosageYear(int chelationDosageYear) {
		this.chelationDosageYear = chelationDosageYear;
	}

	public int getChelationDosageMonth() {
		return chelationDosageMonth;
	}

	public void setChelationDosageMonth(int chelationDosageMonth) {
		this.chelationDosageMonth = chelationDosageMonth;
	}

	public String getAnyOtherMedication() {
		return anyOtherMedication;
	}

	public void setAnyOtherMedication(String anyOtherMedication) {
		this.anyOtherMedication = anyOtherMedication;
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
