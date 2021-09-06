package com.sgrh.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.metamodel.Metamodel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sgrh.component.PatientInformation;
import com.sgrh.component.lookup.Lookup;
import com.sgrh.component.lookup.ReligionCode;
import com.sgrh.dao.SickleCellDAO;

@Service
public class SickleCellService {
	@Autowired
	private SickleCellDAO dao;
	
	Map<Integer,Lookup> lookupMap;
	
	
	public PatientInformation getPatientDetail(String id) {
		return dao.getPatientInformation(id);
	}
	
	public List<Lookup> getLookupList(String type){
		return dao.getLookup(type);
	}
	public Map<Integer,Lookup> getLookupMap(String type) {
		List<Lookup> codeList = dao.getLookup(type);
		return getMapFromLookup(codeList);
	}
	
	public void savePatientInfo(PatientInformation patientInfo) {
		patientInfo.setIds();
		patientInfo.setAssociation();
		dao.addPatientInfo(patientInfo);
	}
	
	public Map<Integer,Lookup> getMapFromLookup(List<? extends Lookup> lookupList){
		if(lookupMap == null) {
			lookupMap = new HashMap<>();
			for(Lookup code : lookupList) {
				lookupMap.put(code.getId(), code);
			}
		}
		return lookupMap;
	}
}
