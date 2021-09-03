package com.sgrh.component;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.RequestScope;

@Component
@RequestScope
@Entity
@Table(name="patient_information")
public class PatientInformation {
	@Id
	@Column(name="registration_number")
	private String registrationNumber;
	
	@Column(name="patient_name")
	private String patientName;
	
	@Column(name="adhar_numbrer")
	private String adharNumber;
	
	private String gender;
	
	@Autowired
	@Embedded
	private Relation father;
	
	@Autowired
	@Embedded
	@AttributeOverrides({
		@AttributeOverride(column = @Column(name="mother_name"), name = "relationName"),
		@AttributeOverride(column=@Column(name="mother_adhar"),name="relationAdharNumber"),
		@AttributeOverride(column=@Column(name="mother_education"),name="relationEducation"),
		@AttributeOverride(column=@Column(name="mother_occupation"),name="relationOccupation")
	})
	private Relation mother;
	
	@Autowired
	@Embedded
	private Address permanentAddress;
	
	@Autowired
	@Embedded
	private Contact patientContact;
	
	@Autowired
	@Embedded
	private SocioDemographic socioDemo;
	
	@Autowired
	@Embedded
	private PatientMedicalRecord record;
	
	@Autowired
	@OneToOne(mappedBy="patientInfoByReg")
	private Examination patientExamination;
	
	@Autowired
	@OneToOne(mappedBy="patientInfoByReg")
	private Complications complications;
	
	@Autowired
	@OneToOne(mappedBy="patientInfoByReg")
	private LabHematInvestigation hematInvestigation;
	
	@Autowired
	@OneToOne(mappedBy="patientInfoByReg")
	private LabMolecularStudies molecularStudies;
	
	@Autowired
	@OneToOne(mappedBy="patientInfoByReg")
	private BioChemicalTest bioChemicalTest;
	
	@Autowired
	@OneToOne(mappedBy="patientInfoByReg")
	private TreatmentDetail treatmentDetails;
	
	@Autowired
	@OneToOne(mappedBy="patientInfoByReg")
	private FinalDiagnosis finalDiagnosis;
	
	public String getPatientName() {
		return patientName;
	}
	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}
	public String getAdharNumber() {
		return adharNumber;
	}
	public void setAdharNumber(String adharNumber) {
		this.adharNumber = adharNumber;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Relation getFather() {
		return father;
	}
	public void setFather(Relation father) {
		this.father = father;
	}
	public Relation getMother() {
		return mother;
	}
	public void setMother(Relation mother) {
		this.mother = mother;
	}
	public Address getPermanentAddress() {
		return permanentAddress;
	}
	public void setPermanentAddress(Address permanentAddress) {
		this.permanentAddress = permanentAddress;
	}
	public Contact getPatientContact() {
		return patientContact;
	}
	public void setPatientContact(Contact patientContact) {
		this.patientContact = patientContact;
	}
	public SocioDemographic getSocioDemo() {
		return socioDemo;
	}
	public void setSocioDemo(SocioDemographic socioDemo) {
		this.socioDemo = socioDemo;
	}
	public Examination getPatientExamination() {
		return patientExamination;
	}
	public void setPatientExamination(Examination patientExamination) {
		this.patientExamination = patientExamination;
	}
	public Complications getComplications() {
		return complications;
	}
	public void setComplications(Complications complications) {
		this.complications = complications;
	}
	public LabHematInvestigation getHematInvestigation() {
		return hematInvestigation;
	}
	public void setHematInvestigation(LabHematInvestigation hematInvestigation) {
		this.hematInvestigation = hematInvestigation;
	}
	public LabMolecularStudies getMolecularStudies() {
		return molecularStudies;
	}
	public void setMolecularStudies(LabMolecularStudies molecularStudies) {
		this.molecularStudies = molecularStudies;
	}
	public BioChemicalTest getBioChemicalTest() {
		return bioChemicalTest;
	}
	public void setBioChemicalTest(BioChemicalTest bioChemicalTest) {
		this.bioChemicalTest = bioChemicalTest;
	}
	public TreatmentDetail getTreatmentDetails() {
		return treatmentDetails;
	}
	public void setTreatmentDetails(TreatmentDetail treatmentDetails) {
		this.treatmentDetails = treatmentDetails;
	}
	public FinalDiagnosis getFinalDiagnosis() {
		return finalDiagnosis;
	}
	public void setFinalDiagnosis(FinalDiagnosis finalDiagnosis) {
		this.finalDiagnosis = finalDiagnosis;
	}
	public String getRegistrationNumber() {
		return registrationNumber;
	}
	public void setRegistrationNumber(String registrationNumber) {
		this.registrationNumber = registrationNumber;
	}
	public PatientMedicalRecord getRecord() {
		return record;
	}
	public void setRecord(PatientMedicalRecord record) {
		this.record = record;
	}
	
	
}
