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
public class Complications {
	@Id
	private String regNo;
	
	@OneToOne
	@JoinColumn(name="patient_reg_no")
	@MapsId
	PatientInformation patientInfoByReg;
	
	@Column(name="pain_ful_crisis")
	private boolean painFulCrisis;
	public String getRegNo() {
		return regNo;
	}
	@Column(name="crisis_requiring_hospitalization")
	private Integer crisisRequiringHospitalization;
	@Column(name="crisis_in_last_12months")
	private Integer crisisInLast12Months;
	@Column(name="acute_chest_syndrom")
	private Boolean acuteChestSyndrom;
	@Column(name="o2_support")
	private Boolean o2Support;
	@Column(name="o2_support_type")
	private String O2SupportType;
	
	@Column(name="exchange_transfusion")
	private Boolean exchangeTransfusion;
	@Column(name="hydroxy_urea")
	private Boolean hydroxyurea;
	@Column(name="hyper_hemolytic_crisis")
	private Boolean hyperHemolyticCrisis;
	@Column(name="num_of_pain_crisis_before_hydroxyurea")
	private Integer numOfPainCrisisBeforeHydroxyUrea;
	@Column(name="num_of_pain_crisis_after_hydroxy_urea")
	private Integer numOfPainCrisisAfterHydroxyUrea;
	
	// Neurological
	@Column(name="neuro_logical_abnormalities")
	private boolean neurologicalAbnormalities;
	// previous true then
	private boolean stroke;
	@Column(name="neuro_imaging")
	private Boolean neuroimaging;
	private Boolean ct;
	@Column(name="ct_details")
	private String ctDetails;
	
	private Boolean mri;
	@Column(name="mri_details")
	private String mriDetails;
	
	@Column(name="rec_blood_transfusion")
	private Boolean recBloodTransfusion;
	@Column(name="rec_echange_transfusion")
	private Boolean recExchangeTransfusion;
	@Column(name="hbs_level")
	private double hbsLevel;
	private Boolean seizures;
	@Column(name="cognitive_dysfunction")
	private Boolean cognitiveDysfunction;
	@Column(name="any_other_deficits")
	private Boolean anyOtherDeficits;
	
	// doppler
	@Column(name="transactional_doppler")
	private boolean transactionalDoppler;
	@Column(name="is_chemic_attack")
	private Boolean ischemicAttack;
	@Column(name="neuropathic_pain")
	private Boolean neuropathicPain;
	@Column(name="other_neurological_abnormalities")
	private Boolean otherNeurologicalAbnormalities;
	@Column(name="neurological_abnormalities_details")
	private String neurologicalAbnormalitiesDetails;
	
	// renal
	@Column(name="renal_involvement")
	private boolean renalInvolvement;
	
	@Column(name="facial_puffiness")
	private Boolean facialPuffiness;
	
	@Column(name="decreased_urine_output")
	private Boolean decreasedUrineOutput;
	
	@Column(name="blood_in_urine")
	private Boolean bloodInUrine;
	
	@Column(name="other_symptoms")
	private String otherSymptoms;
	
	@Column(name="urin_protein")
	private Boolean urineProtein;
	@Column(name="blood_urea")
	private String bloodUrea;
	@Column(name="serum_creatnine")
	private String serumCreatnine;
	@Column(name="serum_albumin")
	private String serumAlbumin;
	
	private Boolean dialysis;
	@Column(name = "ace_inchibitors")
	private Boolean aceInhibitors;
	private Boolean swelling;
	
	// leg ulcer
	@Column(name="leg_ulcer")
	private boolean legUlcer;
	
	@Column(name="hepatobillary_involvement")
	private boolean hepatobillaryInvolvement;
	// previous true then
	private Boolean gallstone;
	// previous true then
	private Boolean cholecystectomy;
	@Column(name="sBilirubini_total")
	private double sBilirubinTotal;
	@Column(name="sBilirubin_direct")
	private double sBilirubinDirect;
	@Column(name="hepatitis_BAntigen")
	private Boolean hepatitisBAntigen; // P or N
	@Column(name="anti_HAV")
	private Boolean antiHAV; 
	@Column(name="anti_HCV")
	private Boolean antiHCV;
	@Column(name="hepatic_encephalopathy")
	private Boolean hepaticEncephalopathy;
	
	private boolean priapism;
	// privious true then
	@Column(name="managed_at_home")
	private Boolean managedAtHome;
	@Column(name="managed_at_hospital")
	private Boolean managedAtHospital;
	@Column(name="intracavernosal_aspiration")
	private Boolean intracavernosalAspiration;
	@Column(name="alpha_agonist")
	private Boolean alphaAgonist;
	@Column(name="exchange_transfusino")
	private Boolean exchangeTranfusion;
	@Column(name="surgical_shunt")
	private Boolean surgicalShunt;
	@Column(name="erectile_dysfunction")
	private Boolean erectileDysfunction;
	
	@Column(name="resolution_of_priapism")
	private double resolutionOfPriapism;
	// next section
	@Column(name="splenic_cusis")
	private boolean splenicCusis;
	// previous true then
	
	@Column(name="spl_blood_transfusion")
	private Boolean splBloodTransfusion;
	
	// next section
	@Column(name="aplastic_cusis")
	private boolean aplasticCusis;
	// previous true then
	@Column(name="apl_blood_transfusion")
	private Boolean aplBloodTransfusion;
	
	// next section
	@Column(name="cardiac_involvement")
	private boolean cardiacInvolvement;
	// previous true then
	private Boolean cardiomegaly;
	@Column(name="left_ventricular")
	private Boolean leftVentricular;
	@Column(name="pulmonary_hypertenstion")
	private Boolean pulmonaryHypertension;
	@Column(name="decreased_lvef")
	private Boolean decreasedLVEF;
	@Column(name="lvef_type")
	private String lvefType;
	
	// next section
	@Column(name="eye_involvement")
	private boolean eyeInvolvement;
	// previous true then
	@Column(name="sickle_retinopathy")
	private Boolean sickleRetinopathy;
	
	@Column(name="neovascularization")
	private Boolean neovascularization;
	@Column(name="vitreous_hemorrphage")
	private Boolean vitreousHemorrphage;
	@Column(name="retinal_detachment")
	private Boolean retinalDetachment;
	@Column(name="retinal_breaks")
	private Boolean retinalBreaks;
	// next section
	@Column(name="iron_overloaded")
	private boolean ironOverloaded;
	// previous true then
	@Column(name="iron_overloaded_type")
	private String ironOverloadedType;
	// next section
	@Column(name="history_of_infection")
	private boolean historyOfInfection;
	// previous true then
	@Column(name="hospital_addmission")
	private Boolean hospitalAddmission;
	@Column(name="blood_culture")
	private Boolean bloodCulture;
	// previous true then
	@Column(name="blood_culture_pos_neg")
	private Boolean bloodCulturePosOrNeg;
	// previous true then
	private String organism;
	
	// Vaccination
	private Boolean vaccination;
	// previous true then
	@Column(name="hib_vaccine")
	private Boolean hibVaccine;
	@Column(name="pheumococaal_vaccine")
	private Boolean pheumococcalVaccine;
	@Column(name="meningococcal_vaccine")
	private Boolean meningococcalVaccine;
	@Column(name="typoid_vaccine")
	private Boolean typhoidVaccine;
	@Column(name="flu_vaccine")
	private Boolean fluVaccine;
	@Column(name="infection_type")
	private String typeOfInfection;
	public PatientInformation getPatientInfoByReg() {
		return patientInfoByReg;
	}
	public void setPatientInfoByReg(PatientInformation patientInfoByReg) {
		this.patientInfoByReg = patientInfoByReg;
	}
	
	public Integer getCrisisRequiringHospitalization() {
		return crisisRequiringHospitalization;
	}
	public void setCrisisRequiringHospitalization(Integer crisisRequiringHospitalization) {
		this.crisisRequiringHospitalization = crisisRequiringHospitalization;
	}
	public Integer getCrisisInLast12Months() {
		return crisisInLast12Months;
	}
	public void setCrisisInLast12Months(Integer crisisInLast12Months) {
		this.crisisInLast12Months = crisisInLast12Months;
	}
	public Boolean getAcuteChestSyndrom() {
		return acuteChestSyndrom;
	}
	public void setAcuteChestSyndrom(Boolean acuteChestSyndrom) {
		this.acuteChestSyndrom = acuteChestSyndrom;
	}
	public Boolean getO2Support() {
		return o2Support;
	}
	public void setO2Support(Boolean o2Support) {
		this.o2Support = o2Support;
	}
	public String getO2SupportType() {
		return O2SupportType;
	}
	public void setO2SupportType(String o2SupportType) {
		O2SupportType = o2SupportType;
	}
	public Boolean getExchangeTransfusion() {
		return exchangeTransfusion;
	}
	public void setExchangeTransfusion(Boolean exchangeTransfusion) {
		this.exchangeTransfusion = exchangeTransfusion;
	}
	public Boolean getHydroxyurea() {
		return hydroxyurea;
	}
	public void setHydroxyurea(Boolean hydroxyurea) {
		this.hydroxyurea = hydroxyurea;
	}
	public Boolean getHyperHemolyticCrisis() {
		return hyperHemolyticCrisis;
	}
	public void setHyperHemolyticCrisis(Boolean hyperHemolyticCrisis) {
		this.hyperHemolyticCrisis = hyperHemolyticCrisis;
	}
	public Integer getNumOfPainCrisisBeforeHydroxyUrea() {
		return numOfPainCrisisBeforeHydroxyUrea;
	}
	public void setNumOfPainCrisisBeforeHydroxyUrea(Integer numOfPainCrisisBeforeHydroxyUrea) {
		this.numOfPainCrisisBeforeHydroxyUrea = numOfPainCrisisBeforeHydroxyUrea;
	}
	public Integer getNumOfPainCrisisAfterHydroxyUrea() {
		return numOfPainCrisisAfterHydroxyUrea;
	}
	public void setNumOfPainCrisisAfterHydroxyUrea(Integer numOfPainCrisisAfterHydroxyUrea) {
		this.numOfPainCrisisAfterHydroxyUrea = numOfPainCrisisAfterHydroxyUrea;
	}
	
	public Boolean getNeuroimaging() {
		return neuroimaging;
	}
	public void setNeuroimaging(Boolean neuroimaging) {
		this.neuroimaging = neuroimaging;
	}
	public Boolean getCt() {
		return ct;
	}
	public void setCt(Boolean ct) {
		this.ct = ct;
	}
	public String getCtDetails() {
		return ctDetails;
	}
	public void setCtDetails(String ctDetails) {
		this.ctDetails = ctDetails;
	}
	public Boolean getMri() {
		return mri;
	}
	public void setMri(Boolean mri) {
		this.mri = mri;
	}
	public String getMriDetails() {
		return mriDetails;
	}
	public void setMriDetails(String mriDetails) {
		this.mriDetails = mriDetails;
	}
	public Boolean getRecBloodTransfusion() {
		return recBloodTransfusion;
	}
	public void setRecBloodTransfusion(Boolean recBloodTransfusion) {
		this.recBloodTransfusion = recBloodTransfusion;
	}
	public Boolean getRecExchangeTransfusion() {
		return recExchangeTransfusion;
	}
	public void setRecExchangeTransfusion(Boolean recExchangeTransfusion) {
		this.recExchangeTransfusion = recExchangeTransfusion;
	}
	public double getHbsLevel() {
		return hbsLevel;
	}
	public void setHbsLevel(double hbsLevel) {
		this.hbsLevel = hbsLevel;
	}
	public Boolean getSeizures() {
		return seizures;
	}
	public void setSeizures(Boolean seizures) {
		this.seizures = seizures;
	}
	public Boolean getCognitiveDysfunction() {
		return cognitiveDysfunction;
	}
	public void setCognitiveDysfunction(Boolean cognitiveDysfunction) {
		this.cognitiveDysfunction = cognitiveDysfunction;
	}
	public Boolean getAnyOtherDeficits() {
		return anyOtherDeficits;
	}
	public void setAnyOtherDeficits(Boolean anyOtherDeficits) {
		this.anyOtherDeficits = anyOtherDeficits;
	}
	
	public Boolean getIschemicAttack() {
		return ischemicAttack;
	}
	public void setIschemicAttack(Boolean ischemicAttack) {
		this.ischemicAttack = ischemicAttack;
	}
	public Boolean getNeuropathicPain() {
		return neuropathicPain;
	}
	public void setNeuropathicPain(Boolean neuropathicPain) {
		this.neuropathicPain = neuropathicPain;
	}
	public Boolean getOtherNeurologicalAbnormalities() {
		return otherNeurologicalAbnormalities;
	}
	public void setOtherNeurologicalAbnormalities(Boolean otherNeurologicalAbnormalities) {
		this.otherNeurologicalAbnormalities = otherNeurologicalAbnormalities;
	}
	public String getNeurologicalAbnormalitiesDetails() {
		return neurologicalAbnormalitiesDetails;
	}
	public void setNeurologicalAbnormalitiesDetails(String neurologicalAbnormalitiesDetails) {
		this.neurologicalAbnormalitiesDetails = neurologicalAbnormalitiesDetails;
	}
	
	public Boolean getFacialPuffiness() {
		return facialPuffiness;
	}
	public void setFacialPuffiness(Boolean facialPuffiness) {
		this.facialPuffiness = facialPuffiness;
	}
	public Boolean getDecreasedUrineOutput() {
		return decreasedUrineOutput;
	}
	public void setDecreasedUrineOutput(Boolean decreasedUrineOutput) {
		this.decreasedUrineOutput = decreasedUrineOutput;
	}
	public Boolean getBloodInUrine() {
		return bloodInUrine;
	}
	public void setBloodInUrine(Boolean bloodInUrine) {
		this.bloodInUrine = bloodInUrine;
	}
	public String getOtherSymptoms() {
		return otherSymptoms;
	}
	public void setOtherSymptoms(String otherSymptoms) {
		this.otherSymptoms = otherSymptoms;
	}
	public Boolean getUrineProtein() {
		return urineProtein;
	}
	public void setUrineProtein(Boolean urineProtein) {
		this.urineProtein = urineProtein;
	}
	public String getBloodUrea() {
		return bloodUrea;
	}
	public void setBloodUrea(String bloodUrea) {
		this.bloodUrea = bloodUrea;
	}
	public String getSerumCreatnine() {
		return serumCreatnine;
	}
	public void setSerumCreatnine(String serumCreatnine) {
		this.serumCreatnine = serumCreatnine;
	}
	public String getSerumAlbumin() {
		return serumAlbumin;
	}
	public void setSerumAlbumin(String serumAlbumin) {
		this.serumAlbumin = serumAlbumin;
	}
	public Boolean getDialysis() {
		return dialysis;
	}
	public void setDialysis(Boolean dialysis) {
		this.dialysis = dialysis;
	}
	public Boolean getAceInhibitors() {
		return aceInhibitors;
	}
	public void setAceInhibitors(Boolean aceInhibitors) {
		this.aceInhibitors = aceInhibitors;
	}
	public Boolean getSwelling() {
		return swelling;
	}
	public void setSwelling(Boolean swelling) {
		this.swelling = swelling;
	}
	
	
	public Boolean getGallstone() {
		return gallstone;
	}
	public void setGallstone(Boolean gallstone) {
		this.gallstone = gallstone;
	}
	public Boolean getCholecystectomy() {
		return cholecystectomy;
	}
	public void setCholecystectomy(Boolean cholecystectomy) {
		this.cholecystectomy = cholecystectomy;
	}
	public double getsBilirubinTotal() {
		return sBilirubinTotal;
	}
	public void setsBilirubinTotal(double sBilirubinTotal) {
		this.sBilirubinTotal = sBilirubinTotal;
	}
	public double getsBilirubinDirect() {
		return sBilirubinDirect;
	}
	public void setsBilirubinDirect(double sBilirubinDirect) {
		this.sBilirubinDirect = sBilirubinDirect;
	}
	public Boolean getHepatitisBAntigen() {
		return hepatitisBAntigen;
	}
	public void setHepatitisBAntigen(Boolean hepatitisBAntigen) {
		this.hepatitisBAntigen = hepatitisBAntigen;
	}
	public Boolean getAntiHAV() {
		return antiHAV;
	}
	public void setAntiHAV(Boolean antiHAV) {
		this.antiHAV = antiHAV;
	}
	public Boolean getAntiHCV() {
		return antiHCV;
	}
	public void setAntiHCV(Boolean antiHCV) {
		this.antiHCV = antiHCV;
	}
	public Boolean getHepaticEncephalopathy() {
		return hepaticEncephalopathy;
	}
	public void setHepaticEncephalopathy(Boolean hepaticEncephalopathy) {
		this.hepaticEncephalopathy = hepaticEncephalopathy;
	}
	
	public Boolean getManagedAtHome() {
		return managedAtHome;
	}
	public void setManagedAtHome(Boolean managedAtHome) {
		this.managedAtHome = managedAtHome;
	}
	public Boolean getManagedAtHospital() {
		return managedAtHospital;
	}
	public void setManagedAtHospital(Boolean managedAtHospital) {
		this.managedAtHospital = managedAtHospital;
	}
	public Boolean getIntracavernosalAspiration() {
		return intracavernosalAspiration;
	}
	public void setIntracavernosalAspiration(Boolean intracavernosalAspiration) {
		this.intracavernosalAspiration = intracavernosalAspiration;
	}
	public Boolean getAlphaAgonist() {
		return alphaAgonist;
	}
	public void setAlphaAgonist(Boolean alphaAgonist) {
		this.alphaAgonist = alphaAgonist;
	}
	public Boolean getExchangeTranfusion() {
		return exchangeTranfusion;
	}
	public void setExchangeTranfusion(Boolean exchangeTranfusion) {
		this.exchangeTranfusion = exchangeTranfusion;
	}
	public Boolean getSurgicalShunt() {
		return surgicalShunt;
	}
	public void setSurgicalShunt(Boolean surgicalShunt) {
		this.surgicalShunt = surgicalShunt;
	}
	public Boolean getErectileDysfunction() {
		return erectileDysfunction;
	}
	public void setErectileDysfunction(Boolean erectileDysfunction) {
		this.erectileDysfunction = erectileDysfunction;
	}
	public double getResolutionOfPriapism() {
		return resolutionOfPriapism;
	}
	public void setResolutionOfPriapism(double resolutionOfPriapism) {
		this.resolutionOfPriapism = resolutionOfPriapism;
	}
	
	public Boolean getSplBloodTransfusion() {
		return splBloodTransfusion;
	}
	public void setSplBloodTransfusion(Boolean splBloodTransfusion) {
		this.splBloodTransfusion = splBloodTransfusion;
	}
	
	public Boolean getAplBloodTransfusion() {
		return aplBloodTransfusion;
	}
	public void setAplBloodTransfusion(Boolean aplBloodTransfusion) {
		this.aplBloodTransfusion = aplBloodTransfusion;
	}
	
	public Boolean getCardiomegaly() {
		return cardiomegaly;
	}
	public void setCardiomegaly(Boolean cardiomegaly) {
		this.cardiomegaly = cardiomegaly;
	}
	public Boolean getLeftVentricular() {
		return leftVentricular;
	}
	public void setLeftVentricular(Boolean leftVentricular) {
		this.leftVentricular = leftVentricular;
	}
	public Boolean getPulmonaryHypertension() {
		return pulmonaryHypertension;
	}
	public void setPulmonaryHypertension(Boolean pulmonaryHypertension) {
		this.pulmonaryHypertension = pulmonaryHypertension;
	}
	public Boolean getDecreasedLVEF() {
		return decreasedLVEF;
	}
	public void setDecreasedLVEF(Boolean decreasedLVEF) {
		this.decreasedLVEF = decreasedLVEF;
	}
	public String getLvefType() {
		return lvefType;
	}
	public void setLvefType(String lvefType) {
		this.lvefType = lvefType;
	}
	
	public Boolean getSickleRetinopathy() {
		return sickleRetinopathy;
	}
	public void setSickleRetinopathy(Boolean sickleRetinopathy) {
		this.sickleRetinopathy = sickleRetinopathy;
	}
	public Boolean getNeovascularization() {
		return neovascularization;
	}
	public void setNeovascularization(Boolean neovascularization) {
		this.neovascularization = neovascularization;
	}
	public Boolean getVitreousHemorrphage() {
		return vitreousHemorrphage;
	}
	public void setVitreousHemorrphage(Boolean vitreousHemorrphage) {
		this.vitreousHemorrphage = vitreousHemorrphage;
	}
	public Boolean getRetinalDetachment() {
		return retinalDetachment;
	}
	public void setRetinalDetachment(Boolean retinalDetachment) {
		this.retinalDetachment = retinalDetachment;
	}
	public Boolean getRetinalBreaks() {
		return retinalBreaks;
	}
	public void setRetinalBreaks(Boolean retinalBreaks) {
		this.retinalBreaks = retinalBreaks;
	}
	
	public String getIronOverloadedType() {
		return ironOverloadedType;
	}
	public void setIronOverloadedType(String ironOverloadedType) {
		this.ironOverloadedType = ironOverloadedType;
	}
	
	public Boolean getHospitalAddmission() {
		return hospitalAddmission;
	}
	public void setHospitalAddmission(Boolean hospitalAddmission) {
		this.hospitalAddmission = hospitalAddmission;
	}
	public Boolean getBloodCulture() {
		return bloodCulture;
	}
	public void setBloodCulture(Boolean bloodCulture) {
		this.bloodCulture = bloodCulture;
	}
	public Boolean getBloodCulturePosOrNeg() {
		return bloodCulturePosOrNeg;
	}
	public void setBloodCulturePosOrNeg(Boolean bloodCulturePosOrNeg) {
		this.bloodCulturePosOrNeg = bloodCulturePosOrNeg;
	}
	public String getOrganism() {
		return organism;
	}
	public void setOrganism(String organism) {
		this.organism = organism;
	}
	public Boolean getVaccination() {
		return vaccination;
	}
	public void setVaccination(Boolean vaccination) {
		this.vaccination = vaccination;
	}
	public Boolean getHibVaccine() {
		return hibVaccine;
	}
	public void setHibVaccine(Boolean hibVaccine) {
		this.hibVaccine = hibVaccine;
	}
	public Boolean getPheumococcalVaccine() {
		return pheumococcalVaccine;
	}
	public void setPheumococcalVaccine(Boolean pheumococcalVaccine) {
		this.pheumococcalVaccine = pheumococcalVaccine;
	}
	public Boolean getMeningococcalVaccine() {
		return meningococcalVaccine;
	}
	public void setMeningococcalVaccine(Boolean meningococcalVaccine) {
		this.meningococcalVaccine = meningococcalVaccine;
	}
	public Boolean getTyphoidVaccine() {
		return typhoidVaccine;
	}
	public void setTyphoidVaccine(Boolean typhoidVaccine) {
		this.typhoidVaccine = typhoidVaccine;
	}
	public Boolean getFluVaccine() {
		return fluVaccine;
	}
	public void setFluVaccine(Boolean fluVaccine) {
		this.fluVaccine = fluVaccine;
	}
	public String getTypeOfInfection() {
		return typeOfInfection;
	}
	public void setTypeOfInfection(String typeOfInfection) {
		this.typeOfInfection = typeOfInfection;
	}
	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}
	public boolean isPainFulCrisis() {
		return painFulCrisis;
	}
	public void setPainFulCrisis(boolean painFulCrisis) {
		this.painFulCrisis = painFulCrisis;
	}
	public boolean isNeurologicalAbnormalities() {
		return neurologicalAbnormalities;
	}
	public void setNeurologicalAbnormalities(boolean neurologicalAbnormalities) {
		this.neurologicalAbnormalities = neurologicalAbnormalities;
	}
	public boolean isRenalInvolvement() {
		return renalInvolvement;
	}
	public void setRenalInvolvement(boolean renalInvolvement) {
		this.renalInvolvement = renalInvolvement;
	}
	public boolean isLegUlcer() {
		return legUlcer;
	}
	public void setLegUlcer(boolean legUlcer) {
		this.legUlcer = legUlcer;
	}
	public boolean isHepatobillaryInvolvement() {
		return hepatobillaryInvolvement;
	}
	public void setHepatobillaryInvolvement(boolean hepatobillaryInvolvement) {
		this.hepatobillaryInvolvement = hepatobillaryInvolvement;
	}
	public boolean isPriapism() {
		return priapism;
	}
	public void setPriapism(boolean priapism) {
		this.priapism = priapism;
	}
	public boolean isSplenicCusis() {
		return splenicCusis;
	}
	public void setSplenicCusis(boolean splenicCusis) {
		this.splenicCusis = splenicCusis;
	}
	public boolean isAplasticCusis() {
		return aplasticCusis;
	}
	public void setAplasticCusis(boolean aplasticCusis) {
		this.aplasticCusis = aplasticCusis;
	}
	public boolean isCardiacInvolvement() {
		return cardiacInvolvement;
	}
	public void setCardiacInvolvement(boolean cardiacInvolvement) {
		this.cardiacInvolvement = cardiacInvolvement;
	}
	public boolean isEyeInvolvement() {
		return eyeInvolvement;
	}
	public void setEyeInvolvement(boolean eyeInvolvement) {
		this.eyeInvolvement = eyeInvolvement;
	}
	public boolean isIronOverloaded() {
		return ironOverloaded;
	}
	public void setIronOverloaded(boolean ironOverloaded) {
		this.ironOverloaded = ironOverloaded;
	}
	public boolean isHistoryOfInfection() {
		return historyOfInfection;
	}
	public void setHistoryOfInfection(boolean historyOfInfection) {
		this.historyOfInfection = historyOfInfection;
	}
	public boolean isStroke() {
		return stroke;
	}
	public void setStroke(boolean stroke) {
		this.stroke = stroke;
	}
	public boolean isTransactionalDoppler() {
		return transactionalDoppler;
	}
	public void setTransactionalDoppler(boolean transactionalDoppler) {
		this.transactionalDoppler = transactionalDoppler;
	}
}