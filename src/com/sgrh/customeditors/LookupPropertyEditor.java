package com.sgrh.customeditors;

import java.beans.PropertyEditorSupport;
import java.util.Map;

import com.sgrh.component.lookup.EducationCode;
import com.sgrh.component.lookup.Lookup;
import com.sgrh.component.lookup.MonthlyIncomeCode;
import com.sgrh.component.lookup.NonTribalCode;
import com.sgrh.component.lookup.ReligionCode;
import com.sgrh.service.SickleCellService;

public class LookupPropertyEditor extends PropertyEditorSupport{
	SickleCellService service;
	public LookupPropertyEditor(SickleCellService service) {
		this.service = service;
	}
	
	public void setAsText(String text) throws IllegalArgumentException {
		if(text==null || text=="" || text.length() == 0) {
			System.out.println("823493749 iam running");
			setValue(null);
		}
		else {
			Map<Integer,Lookup> lookupMap = service.getLookupMap(null);
			Lookup lookupCode = lookupMap.get(Integer.parseInt(text));
			Lookup code = lookupCode;
			setValue(code);
		}
	}
}
