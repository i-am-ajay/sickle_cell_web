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
	@Column
	private String alphaThalOtherResult;
	private boolean hbhDone;
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
	private Integer currentInvestigationYear;
	@Column(name="current_investigation_month")
	private Integer currentInvestigationMonth;
	private Double meanPerTransfusion;
	@Column(name="mean_per_transfusion")
	private Double postTransfusion;
	// hiv/hbsag/hcv test
	private boolean hiv;
	private boolean hbsag;
	private boolean hcv;
	
	
	
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
	
	public Integer getCurrentInvestigationYear() {
		return currentInvestigationYear;
	}
	public void setCurrentInvestigationYear(Integer currentInvestigationYear) {
		this.currentInvestigationYear = currentInvestigationYear;
	}
	public Integer getCurrentInvestigationMonth() {
		return currentInvestigationMonth;
	}
	public void setCurrentInvestigationMonth(Integer currentInvestigationMonth) {
		this.currentInvestigationMonth = currentInvestigationMonth;
	}
	public Double getMeanPerTransfusion() {
		return meanPerTransfusion;
	}
	public void setMeanPerTransfusion(Double meanPerTransfusion) {
		this.meanPerTransfusion = meanPerTransfusion;
	}
	public Double getPostTransfusion() {
		return postTransfusion;
	}
	public void setPostTransfusion(Double postTransfusion) {
		this.postTransfusion = postTransfusion;
	}
	
	public boolean isHiv() {
		return hiv;
	}
	public void setHiv(boolean hiv) {
		this.hiv = hiv;
	}
	public boolean isHbsag() {
		return hbsag;
	}
	public void setHbsag(boolean hbsag) {
		this.hbsag = hbsag;
	}
	public boolean isHcv() {
		return hcv;
	}
	public void setHcv(boolean hcv) {
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
	public String getAlphaThalOtherResult() {
		return alphaThalOtherResult;
	}
	public void setAlphaThalOtherResult(String alphaThalOtherResult) {
		this.alphaThalOtherResult = alphaThalOtherResult;
	}
	public boolean isHbhDone() {
		return hbhDone;
	}
	public void setHbhDone(boolean hbhDone) {
		this.hbhDone = hbhDone;
	}
	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}
}
