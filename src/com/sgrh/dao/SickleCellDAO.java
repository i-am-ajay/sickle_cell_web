package com.sgrh.dao;

import java.util.List;
import java.util.Set;

import javax.persistence.TypedQuery;
import javax.persistence.metamodel.Metamodel;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sgrh.component.PatientInformation;
import com.sgrh.component.lookup.ReligionCode;

@Repository
public class SickleCellDAO {
	@Autowired
	private SessionFactory factory;
	
	@Transactional
	public PatientInformation getPatientInformation(String id) {
		Session session = factory.getCurrentSession();
		return session.get(PatientInformation.class,id);
	}
	
	@Transactional
	public List<ReligionCode> getReligionLookup(){
		Session session = factory.getCurrentSession();
		TypedQuery<ReligionCode> religionQuery = session.createQuery("from ReligionCode r",ReligionCode.class);
		return religionQuery.getResultList();
	}
}
