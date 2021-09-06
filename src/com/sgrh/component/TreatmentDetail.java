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
	private Integer ageOfSplenectomyYear;
	
	@Column(name="age_splenectomy_month")
	private Integer ageOfSplenectomyMonth;
	
	@Column(name="age_presentation_year")
	private Integer agePresentationYear;
	
	@Column(name="age_presentation_month")
	private Integer agePresentationMonth;
	
	private boolean tranfusion;
	
	@Column(name="first_transfusion_year")
	private Integer firstTransfusionYear;
	
	@Column(name="first_transfusion_month")
	private Integer firstTransfusionMonth;
	
	@Column(name="frequencye_per_month")
	private Integer frequencyPerMonth;
	
	@Column(name="frequencey_peryear")
	private Integer frequencyPerYear;
	
	@Column(name="hydroxy_urea")
	private boolean hydroxyUrea;
	
	private Integer hydroxyUreaDose;
	
	private Integer hydroxyUreaDurationYear;
	private Integer hydroxyUreaDurationMonth;
	
	@Column(name="pre_hydroxy_urea")
	private Double preHydroxyurea;
	
	@Column(name="post_hydroxy_urea")
	private Double postHydroxyurea;
	
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
	
	@Column(name="chelation")
	private boolean chelationField;
	
	// previous true then
	@Column(name="chelation_agent")
	private String chelationAgent;
	
	@Column(name="chelation_dosage_year")
	private Integer chelationDosageYear;
	
	@Column(name="chelation_dosage_month")
	private Integer chelationDosageMonth;
	
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

	public Integer getAgeOfSplenectomyYear() {
		return ageOfSplenectomyYear;
	}

	public void setAgeOfSplenectomyYear(Integer ageOfSplenectomyYear) {
		this.ageOfSplenectomyYear = ageOfSplenectomyYear;
	}

	public Integer getAgeOfSplenectomyMonth() {
		return ageOfSplenectomyMonth;
	}

	public void setAgeOfSplenectomyMonth(Integer ageOfSplenectomyMonth) {
		this.ageOfSplenectomyMonth = ageOfSplenectomyMonth;
	}

	public Integer getAgePresentationYear() {
		return agePresentationYear;
	}

	public void setAgePresentationYear(Integer agePresentationYear) {
		this.agePresentationYear = agePresentationYear;
	}

	public Integer getAgePresentationMonth() {
		return agePresentationMonth;
	}

	public void setAgePresentationMonth(Integer agePresentationMonth) {
		this.agePresentationMonth = agePresentationMonth;
	}

	public boolean isTranfusion() {
		return tranfusion;
	}

	public void setTranfusion(boolean tranfusion) {
		this.tranfusion = tranfusion;
	}

	public Integer getFirstTransfusionYear() {
		return firstTransfusionYear;
	}

	public void setFirstTransfusionYear(Integer firstTransfusionYear) {
		this.firstTransfusionYear = firstTransfusionYear;
	}

	public Integer getFirstTransfusionMonth() {
		return firstTransfusionMonth;
	}

	public void setFirstTransfusionMonth(Integer firstTransfusionMonth) {
		this.firstTransfusionMonth = firstTransfusionMonth;
	}

	public Integer getFrequencyPerMonth() {
		return frequencyPerMonth;
	}

	public void setFrequencyPerMonth(Integer frequencyPerMonth) {
		this.frequencyPerMonth = frequencyPerMonth;
	}

	public Integer getFrequencyPerYear() {
		return frequencyPerYear;
	}

	public void setFrequencyPerYear(Integer frequencyPerYear) {
		this.frequencyPerYear = frequencyPerYear;
	}

	public boolean isHydroxyUrea() {
		return hydroxyUrea;
	}

	public void setHydroxyUrea(boolean hydroxyUrea) {
		this.hydroxyUrea = hydroxyUrea;
	}

	public Integer getHydroxyUreaDose() {
		return hydroxyUreaDose;
	}

	public void setHydroxyUreaDose(Integer hydroxyUreaDose) {
		this.hydroxyUreaDose = hydroxyUreaDose;
	}

	public Integer getHydroxyUreaDurationYear() {
		return hydroxyUreaDurationYear;
	}

	public void setHydroxyUreaDurationYear(Integer hydroxyUreaDurationYear) {
		this.hydroxyUreaDurationYear = hydroxyUreaDurationYear;
	}

	public Integer getHydroxyUreaDurationMonth() {
		return hydroxyUreaDurationMonth;
	}

	public void setHydroxyUreaDurationMonth(Integer hydroxyUreaDurationMonth) {
		this.hydroxyUreaDurationMonth = hydroxyUreaDurationMonth;
	}

	public Double getPreHydroxyurea() {
		return preHydroxyurea;
	}

	public void setPreHydroxyurea(Double preHydroxyurea) {
		this.preHydroxyurea = preHydroxyurea;
	}

	public Double getPostHydroxyurea() {
		return postHydroxyurea;
	}

	public void setPosHydroxyurea(Double postHydroxyurea) {
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

	public boolean isChelationField() {
		return chelationField;
	}

	public void setChelationField(boolean chelationField) {
		this.chelationField = chelationField;
	}

	public String getChelationAgent() {
		return chelationAgent;
	}

	public void setChelationAgent(String chelationAgent) {
		this.chelationAgent = chelationAgent;
	}

	public Integer getChelationDosageYear() {
		return chelationDosageYear;
	}

	public void setChelationDosageYear(Integer chelationDosageYear) {
		this.chelationDosageYear = chelationDosageYear;
	}

	public Integer getChelationDosageMonth() {
		return chelationDosageMonth;
	}

	public void setChelationDosageMonth(Integer chelationDosageMonth) {
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

	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}

	public void setPostHydroxyurea(Double postHydroxyurea) {
		this.postHydroxyurea = postHydroxyurea;
	}
	
}
