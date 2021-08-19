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
	private double wbc;
	private double hb;
	private double mcv;
	private double mch;
	private double mchc;
	@Column(name="rbs_count")
	private double rbsCount;
	private double rdw;
	private double plts;
	
	@Column(name="rectic_count")
	private double recticCount;
	
	@Column(name="red_cell_morphology")
	private String redCellMorphology;	
	// sickle cell
	@Column(name="sickling_test")
	private boolean sicklingTest;
	// previous true then
	@Column(name="sickling_test_result")
	private boolean sicklingTestResult;
	private double hba;
	private double hbf;
	private double hba2;
	private double hbs;
	
	// impression
	@Column(name="hb_retention_time")
	private double hbRetentionTime;
	
	@Column(name="hplc_based_detection")
	private boolean hplcBasedDetection;
	
	@Column(name="hplc_detection_result")
	private String hplcDetectionResult;
	
	@Column(name="hph_inclusion")
	private double hbhInclusion;
	
	@Column(name="unstable_hemoglobin")
	private double unstableHemoglobin;
	
	public double getWbc() {
		return wbc;
	}
	public void setWbc(double wbc) {
		this.wbc = wbc;
	}
	public double getHb() {
		return hb;
	}
	public void setHb(double hb) {
		this.hb = hb;
	}
	public double getMcv() {
		return mcv;
	}
	public void setMcv(double mcv) {
		this.mcv = mcv;
	}
	public double getMch() {
		return mch;
	}
	public void setMch(double mch) {
		this.mch = mch;
	}
	public double getMchc() {
		return mchc;
	}
	public void setMchc(double mchc) {
		this.mchc = mchc;
	}
	public double getRbsCount() {
		return rbsCount;
	}
	public void setRbsCount(double rbsCount) {
		this.rbsCount = rbsCount;
	}
	public double getRdw() {
		return rdw;
	}
	public void setRdw(double rdw) {
		this.rdw = rdw;
	}
	public double getPlts() {
		return plts;
	}
	public void setPlts(double plts) {
		this.plts = plts;
	}
	public double getRecticCount() {
		return recticCount;
	}
	public void setRecticCount(double recticCount) {
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
	public double getHba() {
		return hba;
	}
	public void setHba(double hba) {
		this.hba = hba;
	}
	public double getHbf() {
		return hbf;
	}
	public void setHbf(double hbf) {
		this.hbf = hbf;
	}
	public double getHba2() {
		return hba2;
	}
	public void setHba2(double hba2) {
		this.hba2 = hba2;
	}
	public double getHbs() {
		return hbs;
	}
	public void setHbs(double hbs) {
		this.hbs = hbs;
	}
	public double getHbRetentionTime() {
		return hbRetentionTime;
	}
	public void setHbRetentionTime(double hbRetentionTime) {
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
	public double getHbhInclusion() {
		return hbhInclusion;
	}
	public void setHbhInclusion(double hbhInclusion) {
		this.hbhInclusion = hbhInclusion;
	}
	public double getUnstableHemoglobin() {
		return unstableHemoglobin;
	}
	public void setUnstableHemoglobin(double unstableHemoglobin) {
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
}
