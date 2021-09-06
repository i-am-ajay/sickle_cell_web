package com.sgrh.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.persistence.TypedQuery;
import javax.persistence.metamodel.Metamodel;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sgrh.component.PatientInformation;
import com.sgrh.component.lookup.Lookup;
import com.sgrh.component.lookup.ReligionCode;

@Repository
public class SickleCellDAO {
	@Autowired
	private SessionFactory factory;
	
	private Map<String,String> tableMap = new HashMap<>();
	{
		tableMap.put("Religion", "ReligionCode");
		tableMap.put("Education", "EducationCode");
		tableMap.put("Occupation", "OccupationCode");
		tableMap.put("Monthly Income", "MonthlyIncomeCode");
		tableMap.put("Non Tribal", "NonTribalCode");
	}
	
	@Transactional
	public PatientInformation getPatientInformation(String id) {
		Session session = factory.getCurrentSession();
		return session.get(PatientInformation.class,id);
	}
	
	@Transactional
	public List<Lookup> getLookup(String type){
		String query = null;
		if(type == null) {
			query = "from Lookup l";
		}
		else {
			query = "from Lookup l WHERE l.type = '"+type+"'";
		}
		Session session = factory.getCurrentSession();
		TypedQuery<Lookup> religionQuery = session.createQuery(query,Lookup.class);
		return religionQuery.getResultList();
	}
	
	@Transactional
	public void addPatientInfo(PatientInformation patientInfo) {
		Session session = factory.getCurrentSession();
		System.out.println(patientInfo);
		session.save(patientInfo.getBioChemicalTest());
		session.save(patientInfo.getFinalDiagnosis());
		session.save(patientInfo.getComplications());
		session.save(patientInfo.getHematInvestigation());
		session.save(patientInfo.getMolecularStudies());
		session.save(patientInfo.getTreatmentDetails());
		session.save(patientInfo.getPatientExamination());
		session.save(patientInfo);
	}
}
