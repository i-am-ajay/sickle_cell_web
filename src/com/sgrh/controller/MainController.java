package com.sgrh.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sgrh.component.PatientInformation;
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
		model.addAttribute("religion",service.getReligionList());
		//System.out.println("MainController dept "+consultantComponent.getDepartment());
		model.addAttribute("details",details);
		model.addAttribute("feature",feature);
		model.addAttribute("complication",complication);
		model.addAttribute("investigation",investigation);
		model.addAttribute("treatment",treatment);
		model.addAttribute("finalDiag",finalDiag);
		return "index_old";
	}
	
	@RequestMapping("save_data")
	public String saveData(@ModelAttribute("patient_info")PatientInformation info) {
		return "redirect:index";
	}
	

}
