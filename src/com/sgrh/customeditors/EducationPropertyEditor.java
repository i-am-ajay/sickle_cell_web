package com.sgrh.customeditors;

import java.beans.PropertyEditorSupport;
import java.util.Map;

import com.sgrh.component.lookup.EducationCode;
import com.sgrh.component.lookup.Lookup;
import com.sgrh.component.lookup.ReligionCode;
import com.sgrh.service.SickleCellService;

public class EducationPropertyEditor extends PropertyEditorSupport {
	private SickleCellService service;
	
	public EducationPropertyEditor(SickleCellService service) {
		this.service = service;
	}
	@Override
	public void setAsText(String text) throws IllegalArgumentException{
		if(text==null || text=="" || text.length() > 0) {
			setValue(null);
		}
		else {
			Map<Integer,Lookup> educationMap = service.getLookupMap("Education");
			Lookup lookupCode = educationMap.get(Integer.parseInt(text));
			//EducationCode code = (EducationCode) lookupCode;
			//setValue(code);
		}
	}
}
