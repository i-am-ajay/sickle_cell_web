package com.sgrh.customeditors;

import java.beans.PropertyEditorSupport;
import java.util.Map;

import com.sgrh.component.lookup.Lookup;
import com.sgrh.component.lookup.NonTribalCode;
import com.sgrh.service.SickleCellService;

public class NonTribalPropertyEditor extends PropertyEditorSupport {
	private SickleCellService service;
	
	public NonTribalPropertyEditor(SickleCellService service) {
		this.service = service;
	}
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException{
		if(text==null || text=="" || text.length()==0) {
			setValue(null);
		}
		else {
			Map<Integer,Lookup> nonTribalMap = service.getLookupMap("Non Tribal");
			Lookup lookupCode = nonTribalMap.get(Integer.parseInt(text));
			/*NonTribalCode code = (NonTribalCode)lookupCode;
			System.out.println("Non Tribal Code %%%%%%%%%%%%%%%%%%%%"+code);
			setValue(code);*/
		}
	}
}
