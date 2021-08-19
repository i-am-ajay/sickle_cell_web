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
@Table(name="bio_chemical_test")
public class BioChemicalTest {
	@Id
	private String regNo;
	
	@OneToOne
	@JoinColumn(name="patient_reg_no")
	@MapsId
	PatientInformation patientInfoByReg;
	
	private double ferritin;
	private double LDH;
	private double vitaminB12;
	private double folate;
	@Column(name="serum_bilirubin")
	private double serumBilirubin;
	@Column(name="asparate_amnio_transferase")
	private double asparateAmniotransferase;
	@Column(name="alania_amnio_trans_ferase")
	private double alaninaAmniotransferase;
	@Column(name="serum_alkaline_phosphate")
	private double serumAlkalinePhosphate;
	@Column(name="serum_calcium")
	private double serumCalcium;
	@Column(name="serum_calcium_ionized")
	private double serumCalciumIonized;
	@Column(name="serum_phosphorus")
	private double serumPhosphorus;
	@Column(name="s_creatinine")
	private double sCreatinine;
	private double t4;
	private double tsh;
	@Column(name="cortiosole_early_morning")
	private double cortisoleEarlyMorning;
	@Column(name="cortiosole_stimulates")
	private double cortisoleStimulates;
	@Column(name="blood_sugar_fasting")
	private double bloodSugarFasting;
	@Column(name="blood_sugar_post_meal")
	private double bloodSugarPostMeal;
	private String ecg;
	private String cardiography;
	@Column(name="any_other")
	private String anyOther;
	
	public double getFerritin() {
		return ferritin;
	}
	public void setFerritin(double ferritin) {
		this.ferritin = ferritin;
	}
	public double getLDH() {
		return LDH;
	}
	public void setLDH(double lDH) {
		LDH = lDH;
	}
	public double getVitaminB12() {
		return vitaminB12;
	}
	public void setVitaminB12(double vitaminB12) {
		this.vitaminB12 = vitaminB12;
	}
	public double getFolate() {
		return folate;
	}
	public void setFolate(double folate) {
		this.folate = folate;
	}
	public double getSerumBilirubin() {
		return serumBilirubin;
	}
	public void setSerumBilirubin(double serumBilirubin) {
		this.serumBilirubin = serumBilirubin;
	}
	public double getAsparateAmniotransferase() {
		return asparateAmniotransferase;
	}
	public void setAsparateAmniotransferase(double asparateAmniotransferase) {
		this.asparateAmniotransferase = asparateAmniotransferase;
	}
	public double getAlaninaAmniotransferase() {
		return alaninaAmniotransferase;
	}
	public void setAlaninaAmniotransferase(double alaninaAmniotransferase) {
		this.alaninaAmniotransferase = alaninaAmniotransferase;
	}
	public double getSerumAlkalinePhosphate() {
		return serumAlkalinePhosphate;
	}
	public void setSerumAlkalinePhosphate(double serumAlkalinePhosphate) {
		this.serumAlkalinePhosphate = serumAlkalinePhosphate;
	}
	public double getSerumCalcium() {
		return serumCalcium;
	}
	public void setSerumCalcium(double serumCalcium) {
		this.serumCalcium = serumCalcium;
	}
	public double getSerumCalciumIonized() {
		return serumCalciumIonized;
	}
	public void setSerumCalciumIonized(double serumCalciumIonized) {
		this.serumCalciumIonized = serumCalciumIonized;
	}
	public double getSerumPhosphorus() {
		return serumPhosphorus;
	}
	public void setSerumPhosphorus(double serumPhosphorus) {
		this.serumPhosphorus = serumPhosphorus;
	}
	public double getsCreatinine() {
		return sCreatinine;
	}
	public void setsCreatinine(double sCreatinine) {
		this.sCreatinine = sCreatinine;
	}
	public double getT4() {
		return t4;
	}
	public void setT4(double t4) {
		this.t4 = t4;
	}
	public double getTsh() {
		return tsh;
	}
	public void setTsh(double tsh) {
		this.tsh = tsh;
	}
	public double getCortisoleEarlyMorning() {
		return cortisoleEarlyMorning;
	}
	public void setCortisoleEarlyMorning(double cortisoleEarlyMorning) {
		this.cortisoleEarlyMorning = cortisoleEarlyMorning;
	}
	public double getCortisoleStimulates() {
		return cortisoleStimulates;
	}
	public void setCortisoleStimulates(double cortisoleStimulates) {
		this.cortisoleStimulates = cortisoleStimulates;
	}
	public double getBloodSugarFasting() {
		return bloodSugarFasting;
	}
	public void setBloodSugarFasting(double bloodSugarFasting) {
		this.bloodSugarFasting = bloodSugarFasting;
	}
	public double getBloodSugarPostMeal() {
		return bloodSugarPostMeal;
	}
	public void setBloodSugarPostMeal(double bloodSugarPostMeal) {
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
}
