<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.time.Period, java.time.LocalDate"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- Final Diagnosis -->
<section id="final_diag_section"
	class="collapse section_body ${finalDiag}">
	<!-- class="collapse" -->
	<div id="test"
		class="bg-secondary py-2 text-white text-center headings">Final
		Diagnosis</div>

	<!-- Inline Form To add contract details -->

	<div class="form-body bg-light py-2 border text-center">
		<!-- *** Row-1 - Final Diagnosis *** -->
		<div class="form-group row mb-0 pb-0 mt-4">
			<div class="col-md-6">
				<div class="form-group text-left">
					<label class="text-monospace">Choose Diagnosis</label>
					<sf:select id="disease_type_id"
						class="form-control form-control-sm"
						path="finalDiagnosis.diseaseType">
						<sf:option value="1">Beta Thalassemia Major</sf:option>
						<sf:option value="2">Non Transfusion Dependent Beta Thalassemia [ Homozygous Beta Thalassemia]</sf:option>
						<sf:option value="3">Beta thalassemia- Hb valiant</sf:option>
						<sf:option value="4">Sickle beta thalassemia</sf:option>
						<sf:option value="5">Sickle cell disease</sf:option>
						<sf:option value="6">Hb H disease</sf:option>
					</sf:select>
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group text-left">
					<label class="text-monospace">Any Other Diagnosis</label>
					<sf:input id="disease_type_id" class="form-control form-control-sm"
						path="finalDiagnosis.otherDisease" />
				</div>
			</div>
		</div>
		<div class="form-group row mb-0 pb-0 mt-3">
			<div class="col-md-6">
				<div class="form-group text-left">
					<label class="text-monospace">Complication of Iron Overload</label><br />
					<div class="form-check-inline">
						<sf:radiobutton class="form-check-input mx-2" id="y_chelation_id"
							value="true" path="treatmentDetails.chelation" />
						<span class="mx-2">Yes</span>
						<sf:radiobutton class="form-check-input ml-4" id="n_chelation_id"
							value="false" path="treatmentDetails.chelation" />
						<span class="mx-2">No</span>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group text-left">
					<label class="text-monospace text-danger">Iron Overload Details</label>
					<sf:input id="disease_type_id" class="form-control form-control-sm"
						path="finalDiagnosis.otherDisease" />
				</div>
			</div>
		</div>
		
		<div class="form-group row mb-0 pb-0 mt-3">
			<div class="col-md-6">
				<div class="form-group text-left">
					<label class="text-monospace">Impression about Management</label>
					<sf:select id="disease_type_id"
						class="form-control form-control-sm"
						path="finalDiagnosis.diseaseType">
						<sf:option value="Well Managed">Well Managed</sf:option>
						<sf:option value="Sub-optimally">Sub-optimally managed</sf:option>
						<sf:option value="Poorly Managed">Poorly Managed</sf:option>
					</sf:select>
				</div>
			</div>
		</div>
	</div>
</section>