package com.sgrh.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sgrh.component.CustomPatientModel;
import com.sgrh.component.PatientInformation;
import com.sgrh.component.lookup.EducationCode;
import com.sgrh.component.lookup.Lookup;
import com.sgrh.component.lookup.MonthlyIncomeCode;
import com.sgrh.component.lookup.NonTribalCode;
import com.sgrh.component.lookup.OccupationCode;
import com.sgrh.component.lookup.ReligionCode;
import com.sgrh.customeditors.EducationPropertyEditor;
import com.sgrh.customeditors.LookupPropertyEditor;
import com.sgrh.customeditors.MonthlyIncomePropertyEditor;
import com.sgrh.customeditors.NonTribalPropertyEditor;
import com.sgrh.customeditors.OccupationPropertyEditor;
import com.sgrh.customeditors.ReligionCodeEditor;
import com.sgrh.service.SickleCellService;

@Controller
public class MainController {
	@Autowired
	PatientInformation patientInformation;
	
	@Autowired
	private SickleCellService service;
	
	@Autowired
	PatientInformation info;
	
	private String details = "show";
	private String feature = "hide";
	private String complication = "hide";
	private String investigation = "hide";
	private String treatment = "hide";
	private String finalDiag = "hide";
	
	@RequestMapping(value= {"/","index"})
	public String home(Model model, HttpSession session) {
		String id = "12345";
		model.addAttribute("patient_info",info);
		model.addAttribute("religion",service.getLookupList("Religion"));
		model.addAttribute("education",service.getLookupList("Education"));
		model.addAttribute("monthlyIncome",service.getLookupList("Monthly Income"));
		model.addAttribute("nonTribal",service.getLookupList("Non Tribal"));
		model.addAttribute("referred",service.getLookupList("Referred"));
		model.addAttribute("occupation",service.getLookupList("Occupation"));
		model.addAttribute("details",details);
		model.addAttribute("feature",feature);
		model.addAttribute("complication",complication);
		model.addAttribute("investigation",investigation);
		model.addAttribute("treatment",treatment);
		model.addAttribute("finalDiag",finalDiag);
		return "index_old";
	}
	
	@RequestMapping(value="save_data",method=RequestMethod.POST)
	public String saveData(@Valid @ModelAttribute("patient_info")PatientInformation info, BindingResult result) {
		if(result.hasErrors()) {
			return "index_old";
		}
		service.savePatientInfo(info);
		return "redirect:index";
	}
	
	@InitBinder
	public void propertyEditor(WebDataBinder binder) {
		binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
		binder.registerCustomEditor(Lookup.class, new LookupPropertyEditor(service));
		/*binder.registerCustomEditor(ReligionCode.class,"religion",religionCodeEditor);
		binder.registerCustomEditor(EducationCode.class, new EducationPropertyEditor(service));
		binder.registerCustomEditor(MonthlyIncomeCode.class,"monthlyIncome", new MonthlyIncomePropertyEditor(service));
		binder.registerCustomEditor(NonTribalCode.class,"nonTribal", new NonTribalPropertyEditor(service));
		binder.registerCustomEditor(OccupationCode.class, new OccupationPropertyEditor(service));*/
	}
	

}
