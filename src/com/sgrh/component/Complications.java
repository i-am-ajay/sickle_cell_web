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
	private int crisisRequiringHospitalization;
	@Column(name="crisis_in_last_12months")
	private int crisisInLast12Months;
	@Column(name="acute_chest_syndrom")
	private boolean acuteChestSyndrom;
	@Column(name="o2_support")
	private boolean o2Support;
	@Column(name="o2_support_type")
	private String O2SupportType;
	@Column(name="exchange_transfusion")
	private boolean exchangeTransfusion;
	@Column(name="hydroxy_urea")
	private boolean hydroxyurea;
	@Column(name="hyper_hemolytic_crisis")
	private boolean hyperHemolyticCrisis;
	@Column(name="num_of_pain_crisis_before_hydroxyurea")
	private int numOfPainCrisisBeforeHydroxyUrea;
	@Column(name="num_of_pain_crisis_after_hydroxy_urea")
	private int numOfPainCrisisAfterHydroxyUrea;
	
	// Neurological
	@Column(name="neuro_logical_abnormalities")
	private boolean neurologicalAbnormalities;
	// previous true then
	private boolean stroke;
	@Column(name="neuro_imaging")
	private boolean neuroimaging;
	private boolean ct;
	@Column(name="ct_details")
	private String ctDetails;
	
	private boolean mri;
	@Column(name="mri_details")
	private String mriDetails;
	
	@Column(name="rec_blood_transfusion")
	private boolean recBloodTransfusion;
	@Column(name="rec_echange_transfusion")
	private boolean recExchangeTransfusion;
	@Column(name="hbs_level")
	private double hbsLevel;
	private boolean seizures;
	@Column(name="cognitive_dysfunction")
	private boolean cognitiveDysfunction;
	@Column(name="any_other_deficits")
	private boolean anyOtherDeficits;
	
	// doppler
	@Column(name="transactional_doppler")
	private boolean transactionalDoppler;
	@Column(name="is_chemic_attack")
	private boolean ischemicAttack;
	@Column(name="neuropathic_pain")
	private boolean neuropathicPain;
	@Column(name="other_neurological_abnormalities")
	private boolean otherNeurologicalAbnormalities;
	@Column(name="neurological_abnormalities_details")
	private String neurologicalAbnormalitiesDetails;
	
	// renal
	@Column(name="renal_involvement")
	private boolean renalInvolvement;
	@Column(name="renal_involvement_type")
	private String renalInvolvementType;
	@Column(name="urin_protein")
	private boolean urineProtein;
	@Column(name="blood_urea")
	private boolean bloodUrea;
	@Column(name="serum_creatnine")
	private boolean serumCreatnine;
	@Column(name="serum_albumin")
	private boolean serumalbumin;
	
	private boolean dialysis;
	@Column(name = "ace_inchibitors")
	private boolean aceInhibitors;
	private boolean swelling;
	@Column(name="leg_ulcer")
	private boolean legUlcer;
	@Column(name="hepatobillary_involvement")
	private boolean hepatobillaryInvolvement;
	// previous true then
	private boolean gallstone;
	// previous true then
	private boolean cholecystectomy;
	@Column(name="sBilirubini_total")
	private double sBilirubinTotal;
	@Column(name="sBilirubin_total")
	private double sBilirubinDirect;
	@Column(name="hepatitis_BAntigen")
	private boolean hepatitisBAntigen; // P or N
	@Column(name="anti_HAV")
	private boolean antiHAV; 
	@Column(name="anti_HCV")
	private boolean antiHCV;
	@Column(name="hepatic_encephalopathy")
	private boolean hepaticEncephalopathy;
	
	private boolean priapism;
	// privious true then
	@Column(name="managed_at_home")
	private boolean managedAtHome;
	@Column(name="managed_at_hospital")
	private boolean managedAtHospital;
	@Column(name="intracavernosal_aspiration")
	private boolean intracavernosalAspiration;
	@Column(name="alpha_agonist")
	private boolean alphaAgonist;
	@Column(name="exchange_transfusino")
	private boolean exchangeTranfusion;
	@Column(name="surgical_shunt")
	private boolean surgicalShunt;
	@Column(name="erectile_dysfunction")
	private boolean erectileDysfunction;
	
	@Column(name="resolution_of_priapism")
	private double resolutionOfPriapism;
	// next section
	@Column(name="splenic_cusis")
	private boolean splenicCusis;
	// previous true then
	
	@Column(name="spl_blood_transfusion")
	private boolean splBloodTransfusion;
	
	// next section
	@Column(name="aplastic_cusis")
	private boolean aplasticCusis;
	// previous true then
	@Column(name="apl_blood_transfusion")
	private boolean aplBloodTransfusion;
	
	// next section
	@Column(name="cardiac_involvement")
	private boolean cardiacInvolvement;
	// previous true then
	private boolean cardiomegaly;
	@Column(name="left_ventricular")
	private boolean leftVentricular;
	@Column(name="pulmonary_hypertenstion")
	private boolean pulmonaryHypertension;
	@Column(name="decreased_lvef")
	private boolean decreasedLVEF;
	@Column(name="lvef_type")
	private String lvefType;
	
	// next section
	@Column(name="eye_involvement")
	private boolean eyeInvolvement;
	// previous true then
	@Column(name="sickle_retinopathy")
	private boolean sickleRetinopathy;
	
	@Column(name="neovascularization")
	private boolean neovascularization;
	@Column(name="vitreous_hemorrphage")
	private boolean vitreousHemorrphage;
	@Column(name="retinal_detachment")
	private boolean retinalDetachment;
	@Column(name="retinal_breaks")
	private boolean retinalBreaks;
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
	private boolean hospitalAddmission;
	@Column(name="blood_culture")
	private boolean bloodCulture;
	// previous true then
	@Column(name="blood_culture_pos_neg")
	private boolean bloodCulturePosOrNeg;
	// previous true then
	private String organism;
	
	// Vaccination
	private boolean vaccination;
	// previous true then
	@Column(name="hib_vaccine")
	private boolean hibVaccine;
	@Column(name="pheumococaal_vaccine")
	private boolean pheumococcalVaccine;
	@Column(name="meningococcal_vaccine")
	private boolean meningococcalVaccine;
	@Column(name="typoid_vaccine")
	private boolean typhoidVaccine;
	@Column(name="flu_vaccine")
	private boolean fluVaccine;
	@Column(name="infection_type")
	private String typeOfInfection;
	
	public boolean isPainFulCrisis() {
		return painFulCrisis;
	}
	public void setPainFulCrisis(boolean painFulCrisis) {
		this.painFulCrisis = painFulCrisis;
	}
	public int getCrisisRequiringHospitalization() {
		return crisisRequiringHospitalization;
	}
	public void setCrisisRequiringHospitalization(int crisisRequiringHospitalization) {
		this.crisisRequiringHospitalization = crisisRequiringHospitalization;
	}
	public int getCrisisInLast12Months() {
		return crisisInLast12Months;
	}
	public void setCrisisInLast12Months(int crisisInLast12Months) {
		this.crisisInLast12Months = crisisInLast12Months;
	}
	public boolean isAcuteChestSyndrom() {
		return acuteChestSyndrom;
	}
	public void setAcuteChestSyndrom(boolean acuteChestSyndrom) {
		this.acuteChestSyndrom = acuteChestSyndrom;
	}
	public boolean isO2Support() {
		return o2Support;
	}
	public void setO2Support(boolean o2Support) {
		this.o2Support = o2Support;
	}
	public String getO2SupportType() {
		return O2SupportType;
	}
	public void setO2SupportType(String o2SupportType) {
		O2SupportType = o2SupportType;
	}
	public boolean isExchangeTransfusion() {
		return exchangeTransfusion;
	}
	public void setExchangeTransfusion(boolean exchangeTransfusion) {
		this.exchangeTransfusion = exchangeTransfusion;
	}
	public boolean isHydroxyurea() {
		return hydroxyurea;
	}
	public void setHydroxyurea(boolean hydroxyurea) {
		this.hydroxyurea = hydroxyurea;
	}
	public boolean isHyperHemolyticCrisis() {
		return hyperHemolyticCrisis;
	}
	public void setHyperHemolyticCrisis(boolean hyperHemolyticCrisis) {
		this.hyperHemolyticCrisis = hyperHemolyticCrisis;
	}
	public int getNumOfPainCrisisBeforeHydroxyUrea() {
		return numOfPainCrisisBeforeHydroxyUrea;
	}
	public void setNumOfPainCrisisBeforeHydroxyUrea(int numOfPainCrisisBeforeHydroxyUrea) {
		this.numOfPainCrisisBeforeHydroxyUrea = numOfPainCrisisBeforeHydroxyUrea;
	}
	public int getNumOfPainCrisisAfterHydroxyUrea() {
		return numOfPainCrisisAfterHydroxyUrea;
	}
	public void setNumOfPainCrisisAfterHydroxyUrea(int numOfPainCrisisAfterHydroxyUrea) {
		this.numOfPainCrisisAfterHydroxyUrea = numOfPainCrisisAfterHydroxyUrea;
	}
	public boolean isNeurologicalAbnormalities() {
		return neurologicalAbnormalities;
	}
	public void setNeurologicalAbnormalities(boolean neurologicalAbnormalities) {
		this.neurologicalAbnormalities = neurologicalAbnormalities;
	}
	public boolean isStroke() {
		return stroke;
	}
	public void setStroke(boolean stroke) {
		this.stroke = stroke;
	}
	public boolean isNeuroimaging() {
		return neuroimaging;
	}
	public void setNeuroimaging(boolean neuroimaging) {
		this.neuroimaging = neuroimaging;
	}
	public boolean isCt() {
		return ct;
	}
	public void setCt(boolean ct) {
		this.ct = ct;
	}
	public String getCtDetails() {
		return ctDetails;
	}
	public void setCtDetails(String ctDetails) {
		this.ctDetails = ctDetails;
	}
	public boolean isMri() {
		return mri;
	}
	public void setMri(boolean mri) {
		this.mri = mri;
	}
	public String getMriDetails() {
		return mriDetails;
	}
	public void setMriDetails(String mriDetails) {
		this.mriDetails = mriDetails;
	}
	public boolean isRecBloodTransfusion() {
		return recBloodTransfusion;
	}
	public void setRecBloodTransfusion(boolean recBloodTransfusion) {
		this.recBloodTransfusion = recBloodTransfusion;
	}
	public boolean isRecExchangeTransfusion() {
		return recExchangeTransfusion;
	}
	public void setRecExchangeTransfusion(boolean recExchangeTransfusion) {
		this.recExchangeTransfusion = recExchangeTransfusion;
	}
	public double getHbsLevel() {
		return hbsLevel;
	}
	public void setHbsLevel(double hbsLevel) {
		this.hbsLevel = hbsLevel;
	}
	public boolean isSeizures() {
		return seizures;
	}
	public void setSeizures(boolean seizures) {
		this.seizures = seizures;
	}
	public boolean isCognitiveDysfunction() {
		return cognitiveDysfunction;
	}
	public void setCognitiveDysfunction(boolean cognitiveDysfunction) {
		this.cognitiveDysfunction = cognitiveDysfunction;
	}
	public boolean isAnyOtherDeficits() {
		return anyOtherDeficits;
	}
	public void setAnyOtherDeficits(boolean anyOtherDeficits) {
		this.anyOtherDeficits = anyOtherDeficits;
	}
	public boolean isTransactionalDoppler() {
		return transactionalDoppler;
	}
	public void setTransactionalDoppler(boolean transactionalDoppler) {
		this.transactionalDoppler = transactionalDoppler;
	}
	public boolean isIschemicAttack() {
		return ischemicAttack;
	}
	public void setIschemicAttack(boolean ischemicAttack) {
		this.ischemicAttack = ischemicAttack;
	}
	public boolean isNeuropathicPain() {
		return neuropathicPain;
	}
	public void setNeuropathicPain(boolean neuropathicPain) {
		this.neuropathicPain = neuropathicPain;
	}
	public boolean isOtherNeurologicalAbnormalities() {
		return otherNeurologicalAbnormalities;
	}
	public void setOtherNeurologicalAbnormalities(boolean otherNeurologicalAbnormalities) {
		this.otherNeurologicalAbnormalities = otherNeurologicalAbnormalities;
	}
	public String getNeurologicalAbnormalitiesDetails() {
		return neurologicalAbnormalitiesDetails;
	}
	public void setNeurologicalAbnormalitiesDetails(String neurologicalAbnormalitiesDetails) {
		this.neurologicalAbnormalitiesDetails = neurologicalAbnormalitiesDetails;
	}
	public boolean isRenalInvolvement() {
		return renalInvolvement;
	}
	public void setRenalInvolvement(boolean renalInvolvement) {
		this.renalInvolvement = renalInvolvement;
	}
	public String getRenalInvolvementType() {
		return renalInvolvementType;
	}
	public void setRenalInvolvementType(String renalInvolvementType) {
		this.renalInvolvementType = renalInvolvementType;
	}
	public boolean isUrineProtein() {
		return urineProtein;
	}
	public void setUrineProtein(boolean urineProtein) {
		this.urineProtein = urineProtein;
	}
	public boolean isBloodUrea() {
		return bloodUrea;
	}
	public void setBloodUrea(boolean bloodUrea) {
		this.bloodUrea = bloodUrea;
	}
	public boolean isSerumCreatnine() {
		return serumCreatnine;
	}
	public void setSerumCreatnine(boolean serumCreatnine) {
		this.serumCreatnine = serumCreatnine;
	}
	public boolean isSerumalbumin() {
		return serumalbumin;
	}
	public void setSerumalbumin(boolean serumalbumin) {
		this.serumalbumin = serumalbumin;
	}
	public boolean isDialysis() {
		return dialysis;
	}
	public void setDialysis(boolean dialysis) {
		this.dialysis = dialysis;
	}
	public boolean isAceInhibitors() {
		return aceInhibitors;
	}
	public void setAceInhibitors(boolean aceInhibitors) {
		this.aceInhibitors = aceInhibitors;
	}
	public boolean isSwelling() {
		return swelling;
	}
	public void setSwelling(boolean swelling) {
		this.swelling = swelling;
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
	public boolean isGallstone() {
		return gallstone;
	}
	public void setGallstone(boolean gallstone) {
		this.gallstone = gallstone;
	}
	public boolean isCholecystectomy() {
		return cholecystectomy;
	}
	public void setCholecystectomy(boolean cholecystectomy) {
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
	public boolean isHepatitisBAntigen() {
		return hepatitisBAntigen;
	}
	public void setHepatitisBAntigen(boolean hepatitisBAntigen) {
		this.hepatitisBAntigen = hepatitisBAntigen;
	}
	public boolean isAntiHAV() {
		return antiHAV;
	}
	public void setAntiHAV(boolean antiHAV) {
		this.antiHAV = antiHAV;
	}
	public boolean isAntiHCV() {
		return antiHCV;
	}
	public void setAntiHCV(boolean antiHCV) {
		this.antiHCV = antiHCV;
	}
	public boolean isHepaticEncephalopathy() {
		return hepaticEncephalopathy;
	}
	public void setHepaticEncephalopathy(boolean hepaticEncephalopathy) {
		this.hepaticEncephalopathy = hepaticEncephalopathy;
	}
	public boolean isPriapism() {
		return priapism;
	}
	public void setPriapism(boolean priapism) {
		this.priapism = priapism;
	}
	public boolean isManagedAtHome() {
		return managedAtHome;
	}
	public void setManagedAtHome(boolean managedAtHome) {
		this.managedAtHome = managedAtHome;
	}
	public boolean isManagedAtHospital() {
		return managedAtHospital;
	}
	public void setManagedAtHospital(boolean managedAtHospital) {
		this.managedAtHospital = managedAtHospital;
	}
	public boolean isIntracavernosalAspiration() {
		return intracavernosalAspiration;
	}
	public void setIntracavernosalAspiration(boolean intracavernosalAspiration) {
		this.intracavernosalAspiration = intracavernosalAspiration;
	}
	public boolean isAlphaAgonist() {
		return alphaAgonist;
	}
	public void setAlphaAgonist(boolean alphaAgonist) {
		this.alphaAgonist = alphaAgonist;
	}
	public boolean isExchangeTranfusion() {
		return exchangeTranfusion;
	}
	public void setExchangeTranfusion(boolean exchangeTranfusion) {
		this.exchangeTranfusion = exchangeTranfusion;
	}
	public boolean isSurgicalShunt() {
		return surgicalShunt;
	}
	public void setSurgicalShunt(boolean surgicalShunt) {
		this.surgicalShunt = surgicalShunt;
	}
	public boolean isErectileDysfunction() {
		return erectileDysfunction;
	}
	public void setErectileDysfunction(boolean erectileDysfunction) {
		this.erectileDysfunction = erectileDysfunction;
	}
	public double getResolutionOfPriapism() {
		return resolutionOfPriapism;
	}
	public void setResolutionOfPriapism(double resolutionOfPriapism) {
		this.resolutionOfPriapism = resolutionOfPriapism;
	}
	public boolean isSplenicCusis() {
		return splenicCusis;
	}
	public void setSplenicCusis(boolean splenicCusis) {
		this.splenicCusis = splenicCusis;
	}
	public boolean isSplBloodTransfusion() {
		return splBloodTransfusion;
	}
	public void setSplBloodTransfusion(boolean splBloodTransfusion) {
		this.splBloodTransfusion = splBloodTransfusion;
	}
	public boolean isAplasticCusis() {
		return aplasticCusis;
	}
	public void setAplasticCusis(boolean aplasticCusis) {
		this.aplasticCusis = aplasticCusis;
	}
	public boolean isAplBloodTransfusion() {
		return aplBloodTransfusion;
	}
	public void setAplBloodTransfusion(boolean aplBloodTransfusion) {
		this.aplBloodTransfusion = aplBloodTransfusion;
	}
	public boolean isCardiacInvolvement() {
		return cardiacInvolvement;
	}
	public void setCardiacInvolvement(boolean cardiacInvolvement) {
		this.cardiacInvolvement = cardiacInvolvement;
	}
	public boolean isCardiomegaly() {
		return cardiomegaly;
	}
	public void setCardiomegaly(boolean cardiomegaly) {
		this.cardiomegaly = cardiomegaly;
	}
	public boolean isLeftVentricular() {
		return leftVentricular;
	}
	public void setLeftVentricular(boolean leftVentricular) {
		this.leftVentricular = leftVentricular;
	}
	public boolean isPulmonaryHypertension() {
		return pulmonaryHypertension;
	}
	public void setPulmonaryHypertension(boolean pulmonaryHypertension) {
		this.pulmonaryHypertension = pulmonaryHypertension;
	}
	public boolean isDecreasedLVEF() {
		return decreasedLVEF;
	}
	public void setDecreasedLVEF(boolean decreasedLVEF) {
		this.decreasedLVEF = decreasedLVEF;
	}
	public String getLvefType() {
		return lvefType;
	}
	public void setLvefType(String lvefType) {
		this.lvefType = lvefType;
	}
	public boolean isEyeInvolvement() {
		return eyeInvolvement;
	}
	public void setEyeInvolvement(boolean eyeInvolvement) {
		this.eyeInvolvement = eyeInvolvement;
	}
	public boolean isSickleRetinopathy() {
		return sickleRetinopathy;
	}
	public void setSickleRetinopathy(boolean sickleRetinopathy) {
		this.sickleRetinopathy = sickleRetinopathy;
	}
	public boolean isNeovascularization() {
		return neovascularization;
	}
	public void setNeovascularization(boolean neovascularization) {
		this.neovascularization = neovascularization;
	}
	public boolean isVitreousHemorrphage() {
		return vitreousHemorrphage;
	}
	public void setVitreousHemorrphage(boolean vitreousHemorrphage) {
		this.vitreousHemorrphage = vitreousHemorrphage;
	}
	public boolean isRetinalDetachment() {
		return retinalDetachment;
	}
	public void setRetinalDetachment(boolean retinalDetachment) {
		this.retinalDetachment = retinalDetachment;
	}
	public boolean isRetinalBreaks() {
		return retinalBreaks;
	}
	public void setRetinalBreaks(boolean retinalBreaks) {
		this.retinalBreaks = retinalBreaks;
	}
	public boolean isIronOverloaded() {
		return ironOverloaded;
	}
	public void setIronOverloaded(boolean ironOverloaded) {
		this.ironOverloaded = ironOverloaded;
	}
	public String getIronOverloadedType() {
		return ironOverloadedType;
	}
	public void setIronOverloadedType(String ironOverloadedType) {
		this.ironOverloadedType = ironOverloadedType;
	}
	public boolean isHistoryOfInfection() {
		return historyOfInfection;
	}
	public void setHistoryOfInfection(boolean historyOfInfection) {
		this.historyOfInfection = historyOfInfection;
	}
	public boolean isHospitalAddmission() {
		return hospitalAddmission;
	}
	public void setHospitalAddmission(boolean hospitalAddmission) {
		this.hospitalAddmission = hospitalAddmission;
	}
	public boolean isBloodCulture() {
		return bloodCulture;
	}
	public void setBloodCulture(boolean bloodCulture) {
		this.bloodCulture = bloodCulture;
	}
	public boolean isBloodCulturePosOrNeg() {
		return bloodCulturePosOrNeg;
	}
	public void setBloodCulturePosOrNeg(boolean bloodCulturePosOrNeg) {
		this.bloodCulturePosOrNeg = bloodCulturePosOrNeg;
	}
	public String getOrganism() {
		return organism;
	}
	public void setOrganism(String organism) {
		this.organism = organism;
	}
	public boolean isVaccination() {
		return vaccination;
	}
	public void setVaccination(boolean vaccination) {
		this.vaccination = vaccination;
	}
	public boolean isHibVaccine() {
		return hibVaccine;
	}
	public void setHibVaccine(boolean hibVaccine) {
		this.hibVaccine = hibVaccine;
	}
	public boolean isPheumococcalVaccine() {
		return pheumococcalVaccine;
	}
	public void setPheumococcalVaccine(boolean pheumococcalVaccine) {
		this.pheumococcalVaccine = pheumococcalVaccine;
	}
	public boolean isMeningococcalVaccine() {
		return meningococcalVaccine;
	}
	public void setMeningococcalVaccine(boolean meningococcalVaccine) {
		this.meningococcalVaccine = meningococcalVaccine;
	}
	public boolean isTyphoidVaccine() {
		return typhoidVaccine;
	}
	public void setTyphoidVaccine(boolean typhoidVaccine) {
		this.typhoidVaccine = typhoidVaccine;
	}
	public boolean isFluVaccine() {
		return fluVaccine;
	}
	public void setFluVaccine(boolean fluVaccine) {
		this.fluVaccine = fluVaccine;
	}
	public String getTypeOfInfection() {
		return typeOfInfection;
	}
	public void setTypeOfInfection(String typeOfInfection) {
		this.typeOfInfection = typeOfInfection;
	}
	public PatientInformation getPatientInfoByReg() {
		return patientInfoByReg;
	}
	public void setPatientInfoByReg(PatientInformation patientInfoByReg) {
		this.patientInfoByReg = patientInfoByReg;
	}
	
	
}
