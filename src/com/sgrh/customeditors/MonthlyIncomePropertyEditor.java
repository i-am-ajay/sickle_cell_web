package com.sgrh.customeditors;

import java.beans.PropertyEditorSupport;
import java.util.Map;

import com.sgrh.component.lookup.Lookup;
import com.sgrh.component.lookup.MonthlyIncomeCode;
import com.sgrh.component.lookup.ReligionCode;
import com.sgrh.service.SickleCellService;

public class MonthlyIncomePropertyEditor
	extends PropertyEditorSupport {
		private SickleCellService service;
		
		public MonthlyIncomePropertyEditor(SickleCellService service) {
			this.service = service;
		}
		
		@Override
		public void setAsText(String text) throws IllegalArgumentException{
			if(text == null || text=="" || text.length()==0) {
				setValue(null);
			}
			else {
				Map<Integer,Lookup> monthlyIncomeMap = service.getLookupMap("Monthly Income");
				Lookup lookupCode = monthlyIncomeMap.get(Integer.parseInt(text));
				/*MonthlyIncomeCode code = (MonthlyIncomeCode)lookupCode;
				System.out.println("Monthly Income Code %%%%%%%%%%%%%"+code);
				setValue(code);*/
			}
		}
}
