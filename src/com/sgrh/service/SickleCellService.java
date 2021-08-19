package com.sgrh.service;

import javax.persistence.metamodel.Metamodel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sgrh.component.PatientInformation;
import com.sgrh.dao.SickleCellDAO;

@Service
public class SickleCellService {
	@Autowired
	private SickleCellDAO dao;
	
	@Transactional
	public PatientInformation getPatientDetail(String id) {
		return dao.getPatientInformation(id);
	}
}
