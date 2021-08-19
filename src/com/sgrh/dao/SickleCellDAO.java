package com.sgrh.dao;

import javax.persistence.metamodel.Metamodel;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sgrh.component.PatientInformation;

@Repository
public class SickleCellDAO {
	@Autowired
	private SessionFactory factory;
	
	@Transactional
	public PatientInformation getPatientInformation(String id) {
		Session session = factory.getCurrentSession();
		return session.get(PatientInformation.class,id);
	}
}
