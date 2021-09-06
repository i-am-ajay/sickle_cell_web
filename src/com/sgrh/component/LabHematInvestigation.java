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
@Table(name="lab_hemat_investigation")
public class LabHematInvestigation {
	@Id
	private String regNo;
	
	@OneToOne
	@JoinColumn(name="patient_reg_no")
	@MapsId
	PatientInformation patientInfoByReg;
	// At the time of diagnosis
	// Hemat test at diagnosis
	private Double wbc;
	private Double hb;
	private Double mcv;
	private Double mch;
	private Double mchc;
	@Column(name="rbs_count")
	private Double rbsCount;
	private Double rdw;
	private Double plts;
	
	@Column(name="rectic_count")
	private Double recticCount;
	
	@Column(name="red_cell_morphology")
	private String redCellMorphology;	
	// sickle cell
	@Column(name="sickling_test")
	private boolean sicklingTest;
	// previous true then
	@Column(name="sickling_test_result")
	private boolean sicklingTestResult;
	private Double hba;
	private Double hbf;
	private Double hba2;
	private Double hbs;
	
	private String impression;
	
	// impression
	@Column(name="hb_retention_time")
	private Double hbRetentionTime;
	
	@Column(name="hplc_based_detection")
	private boolean hplcBasedDetection;
	
	@Column(name="hplc_detection_result")
	private String hplcDetectionResult;
	
	@Column(name="hph_inclusion")
	private String hbhInclusion;
	
	@Column(name="unstable_hemoglobin")
	private Double unstableHemoglobin;
	
	public Double getWbc() {
		return wbc;
	}
	public void setWbc(Double wbc) {
		this.wbc = wbc;
	}
	public Double getHb() {
		return hb;
	}
	public void setHb(Double hb) {
		this.hb = hb;
	}
	public Double getMcv() {
		return mcv;
	}
	public void setMcv(Double mcv) {
		this.mcv = mcv;
	}
	public Double getMch() {
		return mch;
	}
	public void setMch(Double mch) {
		this.mch = mch;
	}
	public Double getMchc() {
		return mchc;
	}
	public void setMchc(Double mchc) {
		this.mchc = mchc;
	}
	public Double getRbsCount() {
		return rbsCount;
	}
	public void setRbsCount(Double rbsCount) {
		this.rbsCount = rbsCount;
	}
	public Double getRdw() {
		return rdw;
	}
	public void setRdw(Double rdw) {
		this.rdw = rdw;
	}
	public Double getPlts() {
		return plts;
	}
	public void setPlts(Double plts) {
		this.plts = plts;
	}
	public Double getRecticCount() {
		return recticCount;
	}
	public void setRecticCount(Double recticCount) {
		this.recticCount = recticCount;
	}
	public String getRedCellMorphology() {
		return redCellMorphology;
	}
	public void setRedCellMorphology(String redCellMorphology) {
		this.redCellMorphology = redCellMorphology;
	}
	public boolean isSicklingTest() {
		return sicklingTest;
	}
	public void setSicklingTest(boolean sicklingTest) {
		this.sicklingTest = sicklingTest;
	}
	public boolean isSicklingTestResult() {
		return sicklingTestResult;
	}
	public void setSicklingTestResult(boolean sicklingTestResult) {
		this.sicklingTestResult = sicklingTestResult;
	}
	public Double getHba() {
		return hba;
	}
	public void setHba(Double hba) {
		this.hba = hba;
	}
	public Double getHbf() {
		return hbf;
	}
	public void setHbf(Double hbf) {
		this.hbf = hbf;
	}
	public Double getHba2() {
		return hba2;
	}
	public void setHba2(Double hba2) {
		this.hba2 = hba2;
	}
	public Double getHbs() {
		return hbs;
	}
	public void setHbs(Double hbs) {
		this.hbs = hbs;
	}
	public Double getHbRetentionTime() {
		return hbRetentionTime;
	}
	public void setHbRetentionTime(Double hbRetentionTime) {
		this.hbRetentionTime = hbRetentionTime;
	}
	public boolean isHplcBasedDetection() {
		return hplcBasedDetection;
	}
	public void setHplcBasedDetection(boolean hplcBasedDetection) {
		this.hplcBasedDetection = hplcBasedDetection;
	}
	public String getHplcDetectionResult() {
		return hplcDetectionResult;
	}
	public void setHplcDetectionResult(String hplcDetectionResult) {
		this.hplcDetectionResult = hplcDetectionResult;
	}
	public String getHbhInclusion() {
		return hbhInclusion;
	}
	public void setHbhInclusion(String hbhInclusion) {
		this.hbhInclusion = hbhInclusion;
	}
	public Double getUnstableHemoglobin() {
		return unstableHemoglobin;
	}
	public void setUnstableHemoglobin(Double unstableHemoglobin) {
		this.unstableHemoglobin = unstableHemoglobin;
	}
	public PatientInformation getPatientInfoByReg() {
		return patientInfoByReg;
	}
	public void setPatientInfoByReg(PatientInformation patientInfoByReg) {
		this.patientInfoByReg = patientInfoByReg;
	}
	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}
	public String getImpression() {
		return impression;
	}
	public void setImpression(String impression) {
		this.impression = impression;
	}
	public String getRegNo() {
		return regNo;
	}
	
	
}
