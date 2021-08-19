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
@Table(name="lab_molecular_studies")
public class LabMolecularStudies {
	@Id
	private String regNo;
	
	@OneToOne
	@JoinColumn(name="patient_reg_no")
	@MapsId
	PatientInformation patientInfoByReg;
	
	@Column(name="sickle_cell_disease")
	private boolean sickleCellDisease;
	@Column(name="sickle_cell_disease_type")
	private String sickleCellDiseaseType;
	@Column(name="other_variants")
	private String otherVariants;
	@Column(name="alpha_thal_test")
	private boolean alphaThalTest;
	@Column(name="alpha_thal_test_result")
	private String alphaThalTestResult;
	private String hbh;
	@Column(name="beta_thal")
	private boolean betaThal;
	@Column(name="beta_thal_test_result")
	private String betaThalTestResult;
	@Column(name="interpretation")
	private String interpretation;
	private String hpfh;
	@Column(name="delta_beta_thal")
	private String deltaBetaThal;
	@Column(name="current_investigation_year")
	private int currentInvestigationYear;
	@Column(name="current_investigation_month")
	private int currentInvestigationMonth;
	private double meanPerTransfusion;
	@Column(name="mean_per_transfusion")
	private double postTransfusion;
	// hiv/hbsag/hcv test
	private String hiv;
	private String hbsag;
	private String hcv;
	
	
	
	public boolean isSickleCellDisease() {
		return sickleCellDisease;
	}
	public void setSickleCellDisease(boolean sickleCellDisease) {
		this.sickleCellDisease = sickleCellDisease;
	}
	public String getSickleCellDiseaseType() {
		return sickleCellDiseaseType;
	}
	public void setSickleCellDiseaseType(String sickleCellDiseaseType) {
		this.sickleCellDiseaseType = sickleCellDiseaseType;
	}
	public String getOtherVariants() {
		return otherVariants;
	}
	public void setOtherVariants(String otherVariants) {
		this.otherVariants = otherVariants;
	}
	public boolean isAlphaThalTest() {
		return alphaThalTest;
	}
	public void setAlphaThalTest(boolean alphaThalTest) {
		this.alphaThalTest = alphaThalTest;
	}
	public String getAlphaThalTestResult() {
		return alphaThalTestResult;
	}
	public void setAlphaThalTestResult(String alphaThalTestResult) {
		this.alphaThalTestResult = alphaThalTestResult;
	}
	public String getHbh() {
		return hbh;
	}
	public void setHbh(String hbh) {
		this.hbh = hbh;
	}
	public boolean isBetaThal() {
		return betaThal;
	}
	public void setBetaThal(boolean betaThal) {
		this.betaThal = betaThal;
	}
	public String getBetaThalTestResult() {
		return betaThalTestResult;
	}
	public void setBetaThalTestResult(String betaThalTestResult) {
		this.betaThalTestResult = betaThalTestResult;
	}
	public String getInterpretation() {
		return interpretation;
	}
	public void setInterpretation(String interpretation) {
		this.interpretation = interpretation;
	}
	public String getHpfh() {
		return hpfh;
	}
	public void setHpfh(String hpfh) {
		this.hpfh = hpfh;
	}
	public String getDeltaBetaThal() {
		return deltaBetaThal;
	}
	public void setDeltaBetaThal(String deltaBetaThal) {
		this.deltaBetaThal = deltaBetaThal;
	}
	public int getCurrentInvestigationYear() {
		return currentInvestigationYear;
	}
	public void setCurrentInvestigationYear(int currentInvestigationYear) {
		this.currentInvestigationYear = currentInvestigationYear;
	}
	public int getCurrentInvestigationMonth() {
		return currentInvestigationMonth;
	}
	public void setCurrentInvestigationMonth(int currentInvestigationMonth) {
		this.currentInvestigationMonth = currentInvestigationMonth;
	}
	public double getMeanPerTransfusion() {
		return meanPerTransfusion;
	}
	public void setMeanPerTransfusion(double meanPerTransfusion) {
		this.meanPerTransfusion = meanPerTransfusion;
	}
	public double getPostTransfusion() {
		return postTransfusion;
	}
	public void setPostTransfusion(double postTransfusion) {
		this.postTransfusion = postTransfusion;
	}
	public String getHiv() {
		return hiv;
	}
	public void setHiv(String hiv) {
		this.hiv = hiv;
	}
	public String getHbsag() {
		return hbsag;
	}
	public void setHbsag(String hbsag) {
		this.hbsag = hbsag;
	}
	public String getHcv() {
		return hcv;
	}
	public void setHcv(String hcv) {
		this.hcv = hcv;
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
