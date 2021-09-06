package com.sgrh.customeditors;

import java.beans.PropertyEditorSupport;
import java.util.Map;

import com.sgrh.component.lookup.Lookup;
import com.sgrh.component.lookup.ReligionCode;
import com.sgrh.service.SickleCellService;

public class OccupationPropertyEditor extends PropertyEditorSupport{
private SickleCellService service;
	
	public OccupationPropertyEditor(SickleCellService service) {
		this.service = service;
	}
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException{
		if(text==null || text=="" || text.length()==0) {
			setValue(null);
		}
		else {
			Map<Integer,Lookup> religionMap = service.getLookupMap("Occupation");
			/*Lookup lookupCode = religionMap.get(Integer.parseInt(text));
			ReligionCode code = (ReligionCode)lookupCode;
			setValue(code);*/
		}
	}
}
