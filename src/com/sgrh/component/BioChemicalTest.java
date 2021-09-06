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
@Table(name="bio_chemical_test")
public class BioChemicalTest {
	@Id
	private String regNo;
	
	@OneToOne
	@JoinColumn(name="patient_reg_no")
	@MapsId
	PatientInformation patientInfoByReg;
	
	private Double ferritin;
	private Double ldh;
	private Double vitaminB12;
	private Double folate;
	@Column(name="serum_bilirubin_total")
	private Double serumBilirubinTotal;
	
	@Column(name="serum_bilirubin_conjugated")
	private Double serumBilirubinConjugated;
	
	@Column(name="asparate_amnio_transferase_alt")
	private Double asparateAmniotransferaseAlt;
	
	@Column(name="asparate_amnio_transferase_sgop")
	private Double asparateAmniotransferaseSgop;
	
	@Column(name="alania_amnio_trans_ferase_alt")
	private Double alaninaAmniotransferaseAlt;
	
	@Column(name="alania_amnio_trans_ferase_sgpt")
	private Double alaninaAmniotransferaseSGPT;
	
	@Column(name="serum_alkaline_phosphate")
	private Double serumAlkalinePhosphate;
	@Column(name="serum_calcium")
	private Double serumCalcium;
	@Column(name="serum_calcium_ionized")
	private Double serumCalciumIonized;
	@Column(name="serum_phosphorus")
	private Double serumPhosphorus;
	@Column(name="s_creatinine")
	private Double sCreatinine;
	private Double t4;
	private Double tsh;
	@Column(name="cortiosole_early_morning")
	private Double cortisoleEarlyMorning;
	@Column(name="cortiosole_stimulates")
	private Double cortisoleStimulates;
	@Column(name="blood_sugar_fasting")
	private Double bloodSugarFasting;
	@Column(name="blood_sugar_post_meal")
	private Double bloodSugarPostMeal;
	private String ecg;
	private String cardiography;
	@Column(name="any_other")
	private String anyOther;
	
	public Double getFerritin() {
		return ferritin;
	}
	public void setFerritin(Double ferritin) {
		this.ferritin = ferritin;
	}
	public Double getLdh() {
		return ldh;
	}
	public void setLdh(Double ldh) {
		this.ldh = ldh;
	}
	public Double getVitaminB12() {
		return vitaminB12;
	}
	public void setVitaminB12(Double vitaminB12) {
		this.vitaminB12 = vitaminB12;
	}
	public Double getFolate() {
		return folate;
	}
	public void setFolate(Double folate) {
		this.folate = folate;
	}
	
	public Double getSerumAlkalinePhosphate() {
		return serumAlkalinePhosphate;
	}
	public void setSerumAlkalinePhosphate(Double serumAlkalinePhosphate) {
		this.serumAlkalinePhosphate = serumAlkalinePhosphate;
	}
	public Double getSerumCalcium() {
		return serumCalcium;
	}
	public void setSerumCalcium(Double serumCalcium) {
		this.serumCalcium = serumCalcium;
	}
	public Double getSerumCalciumIonized() {
		return serumCalciumIonized;
	}
	public void setSerumCalciumIonized(Double serumCalciumIonized) {
		this.serumCalciumIonized = serumCalciumIonized;
	}
	public Double getSerumPhosphorus() {
		return serumPhosphorus;
	}
	public void setSerumPhosphorus(Double serumPhosphorus) {
		this.serumPhosphorus = serumPhosphorus;
	}
	public Double getsCreatinine() {
		return sCreatinine;
	}
	public void setsCreatinine(Double sCreatinine) {
		this.sCreatinine = sCreatinine;
	}
	public Double getT4() {
		return t4;
	}
	public void setT4(Double t4) {
		this.t4 = t4;
	}
	public Double getTsh() {
		return tsh;
	}
	public void setTsh(Double tsh) {
		this.tsh = tsh;
	}
	public Double getCortisoleEarlyMorning() {
		return cortisoleEarlyMorning;
	}
	public void setCortisoleEarlyMorning(Double cortisoleEarlyMorning) {
		this.cortisoleEarlyMorning = cortisoleEarlyMorning;
	}
	public Double getCortisoleStimulates() {
		return cortisoleStimulates;
	}
	public void setCortisoleStimulates(Double cortisoleStimulates) {
		this.cortisoleStimulates = cortisoleStimulates;
	}
	public Double getBloodSugarFasting() {
		return bloodSugarFasting;
	}
	public void setBloodSugarFasting(Double bloodSugarFasting) {
		this.bloodSugarFasting = bloodSugarFasting;
	}
	public Double getBloodSugarPostMeal() {
		return bloodSugarPostMeal;
	}
	public void setBloodSugarPostMeal(Double bloodSugarPostMeal) {
		this.bloodSugarPostMeal = bloodSugarPostMeal;
	}
	public String getEcg() {
		return ecg;
	}
	public void setEcg(String ecg) {
		this.ecg = ecg;
	}
	public String getCardiography() {
		return cardiography;
	}
	public void setCardiography(String cardiography) {
		this.cardiography = cardiography;
	}
	public String getAnyOther() {
		return anyOther;
	}
	public void setAnyOther(String anyOther) {
		this.anyOther = anyOther;
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
	public Double getSerumBilirubinTotal() {
		return serumBilirubinTotal;
	}
	public void setSerumBilirubinTotal(Double serumBilirubinTotal) {
		this.serumBilirubinTotal = serumBilirubinTotal;
	}
	public Double getSerumBilirubinConjugated() {
		return serumBilirubinConjugated;
	}
	public void setSerumBilirubinConjugated(Double serumBilirubinConjugated) {
		this.serumBilirubinConjugated = serumBilirubinConjugated;
	}
	public Double getAsparateAmniotransferaseAlt() {
		return asparateAmniotransferaseAlt;
	}
	public void setAsparateAmniotransferaseAlt(Double asparateAmniotransferaseAlt) {
		this.asparateAmniotransferaseAlt = asparateAmniotransferaseAlt;
	}
	public Double getAsparateAmniotransferaseSgop() {
		return asparateAmniotransferaseSgop;
	}
	public void setAsparateAmniotransferaseSgop(Double asparateAmniotransferaseSgop) {
		this.asparateAmniotransferaseSgop = asparateAmniotransferaseSgop;
	}
	public Double getAlaninaAmniotransferaseAlt() {
		return alaninaAmniotransferaseAlt;
	}
	public void setAlaninaAmniotransferaseAlt(Double alaninaAmniotransferaseAlt) {
		this.alaninaAmniotransferaseAlt = alaninaAmniotransferaseAlt;
	}
	public Double getAlaninaAmniotransferaseSGPT() {
		return alaninaAmniotransferaseSGPT;
	}
	public void setAlaninaAmniotransferaseSGPT(Double alaninaAmniotransferaseSGPT) {
		this.alaninaAmniotransferaseSGPT = alaninaAmniotransferaseSGPT;
	}
	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}
	
}
