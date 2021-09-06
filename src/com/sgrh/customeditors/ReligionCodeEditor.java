package com.sgrh.customeditors;

import java.beans.PropertyEditorSupport;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sgrh.component.lookup.Lookup;
import com.sgrh.component.lookup.ReligionCode;
import com.sgrh.service.SickleCellService;

@Component
public class ReligionCodeEditor extends PropertyEditorSupport {
	private SickleCellService service;
	
	public ReligionCodeEditor(SickleCellService service) {
		this.service = service;
	}
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException{
		if(text==null || text=="" || text.length()==0) {
			System.out.println("REligion Code Service &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& null part");
			setValue(null);
		}
		else {
			
			Map<Integer,Lookup> religionMap = service.getLookupMap("Religion");
			Lookup lookupCode = religionMap.get(Integer.parseInt(text));
			/*ReligionCode code = (ReligionCode)lookupCode;
			System.out.println("REligion Code Service &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"+code+"tex"+text);
			setValue(code);*/
		}
	}
}
