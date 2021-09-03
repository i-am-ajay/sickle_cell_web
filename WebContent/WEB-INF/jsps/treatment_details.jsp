<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.time.Period, java.time.LocalDate"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<section id="treatment_section"
	class="collapse section_body ${treatment}">
	<!-- class="collapse" -->
	<div id="test" class="bg-warning py-2 text-white text-center headings">Treatment
		Details</div>

	<!-- Inline Form To add contract details -->

	<div class="form-body bg-light py-2 border text-center">
		<!-- *** Row-1 *** -->
		<div class="form-group row mb-0 pb-0">
			<div class="col-md-2">
				<div class="form-group text-left">
					<label class="text-monospace mr-5" style="font-size: .8em">Bone
						Marrow Transplantation</label>
					<sf:select id="bone_marrow_transplantation_id"
						placeholder="Bone Marrow Transplantation"
						class="form-control form-control-sm"
						path="treatmentDetails.boneMarrowTransplantation">
						<sf:option value="1">Done</sf:option>
						<sf:option value="2">Planned</sf:option>
						<sf:option value="3">No HLA Matched Donor</sf:option>
						<sf:option value="4">Not Considered</sf:option>
						<sf:option value="5">Under Consideration</sf:option>
					</sf:select>
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group text-left">
					<label class="text-monospace">MBT Done</label><br />
					<div class="form-check-inline">
						<sf:radiobutton class="form-check-input mx-2" id="y_mbt_id"
							value="true" path="treatmentDetails.mbt" />
						<span class="mx-2"> Yes</span>
						<sf:radiobutton class="form-check-input ml-4" id="n_mbt_id"
							value="false" path="treatmentDetails.mbt" />
						<span class="mx-2">No</span>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group text-left">
					<label class="text-monospace text-danger"
						id="sickling_result_lable_id">MBT Outcome</label>
					<sf:select id="sickling_result_id"
						class="form-control form-control-sm"
						path="treatmentDetails.mbtOutcome" placeholder="MBT Outcome">
						<sf:option value="Cured">Cured</sf:option>
						<sf:option value="No Engraftment">No Engraftment</sf:option>
					</sf:select>
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group text-left">
					<label class="text-monospace" id="sickling_result_lable_id">Hypertransfusion
						Therapy</label>
					<sf:select id="hypertransfusion_therapy_id"
						class="form-control form-control-sm"
						path="treatmentDetails.hyperTransfusionTherapy"
						placeholder="Hypertransfusion Therapy">
						<sf:option value="true">Yes</sf:option>
						<sf:option value="false">No</sf:option>
					</sf:select>
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group text-left">
					<label class="text-monospace" id="sickling_result_lable_id">Intermittent
						Transfusion</label>
					<sf:select id="intermittent_transfusion_id"
						class="form-control form-control-sm"
						path="treatmentDetails.intermittentTransfusion"
						placeholder="Intermittent Transfusion">
						<sf:option value="true">Yes</sf:option>
						<sf:option value="false">No</sf:option>
					</sf:select>
				</div>
			</div>
		</div>
		<!-- *** Row-2 Splenectomy *** -->
		<div class="form-group row mb-0 pb-0 mt-4">
			<div class="col-md-2">
				<div class="form-group text-left">
					<label class="text-monospace">Splenectomy</label><br />
					<div class="form-check-inline">
						<sf:radiobutton class="form-check-input mx-2"
							id="y_splenectomy_id" value="true"
							path="treatmentDetails.splenectomy" />
						<span class="mx-2"> Yes</span>
						<sf:radiobutton class="form-check-input ml-4"
							id="n_splenectomy_id" value="false"
							path="treatmentDetails.splenectomy" />
						<span class="mx-2">No</span>
					</div>
				</div>
			</div>
			<div class="col-md-4 text-left">
				<label class="text-monospace text-left text-danger">Age At
					Presentation</label>
				<div class="row">
					<div class="form-group text-left col-md-6">
						<sf:input id="splenectomy_presentation_year_id"
							class="form-control form-control-sm"
							path="treatmentDetails.ageOfSplenectomyYear" placeholder="Year"
							disabled="true" />
					</div>
					<div class="form-group text-left col-md-6">
						<sf:input id="splenectomy_presentation_year_id"
							class="form-control form-control-sm"
							path="treatmentDetails.ageOfSplenectomyMonth" Placeholder="Month"
							disabled="true" />
					</div>
				</div>
			</div>
		</div>
		<!-- *** Row-3 Transfusion fields -->
		<div class="form-group row mb-0 pb-0 mt-4">
			<div class="col-md-2">
				<div class="form-group text-left">
					<label class="text-monospace">Transfusion</label><br />
					<div class="form-check-inline">
						<sf:radiobutton class="form-check-input mx-2"
							id="y_splenectomy_id" value="true"
							path="treatmentDetails.tranfusion" />
						<span class="mx-2"> Yes</span>
						<sf:radiobutton class="form-check-input ml-4"
							id="n_splenectomy_id" value="false"
							path="treatmentDetails.tranfusion" />
						<span class="mx-2">No</span>
					</div>
				</div>
			</div>
			<div class="col-md-4 text-left">
				<label class="text-monospace text-left text-danger">Age Of
					First Transfusion</label>
				<div class="row">
					<div class="form-group text-left col-md-6">
						<sf:input id="first_transfusion_year_id"
							class="form-control form-control-sm"
							path="treatmentDetails.firstTransfusionYear" placeholder="Year"
							disabled="true" />
					</div>
					<div class="form-group text-left col-md-6">
						<sf:input id="first_transfusion_month_id"
							class="form-control form-control-sm"
							path="treatmentDetails.firstTransfusionMonth" Placeholder="Month"
							disabled="true" />
					</div>
				</div>
			</div>
			<div class="col-md-4 text-left">
				<label class="text-monospace text-left text-danger">Frequency
					Of Transfusions</label>
				<div class="row">
					<div class="form-group text-left col-md-6">
						<sf:input id="frequency_per_year_id"
							class="form-control form-control-sm"
							path="treatmentDetails.frequencyPerYear" placeholder="Year"
							disabled="true" />
					</div>
					<div class="form-group text-left col-md-6">
						<sf:input id="frequency_per_month_id"
							class="form-control form-control-sm"
							path="treatmentDetails.frequencyPerMonth" placeholder="Month"
							disabled="true" />
					</div>
				</div>
			</div>
		</div>
		<!-- *** Row-4 Hydroxyurea details *** -->
		<div class="form-group row mb-0 pb-0 mt-4">
			<div class="col-md-2">
				<div class="form-group text-left">
					<label class="text-monospace">Hydroxyurea</label><br />
					<div class="form-check-inline">
						<sf:radiobutton class="form-check-input mx-2" id="y_chelation_id"
							value="true" path="treatmentDetails.chelation" />
						<span class="mx-2"> Yes</span>
						<sf:radiobutton class="form-check-input ml-4" id="n_chelation_id"
							value="false" path="treatmentDetails.chelation" />
						<span class="mx-2">No</span>
					</div>
				</div>
			</div>
			<div class="col-md-4 text-left">
				<label class="text-monospace text-left text-danger">Duration</label>
				<div class="row">
					<div class="form-group text-left col-md-6">
						<sf:input id="dosage_year_id" class="form-control form-control-sm"
							path="treatmentDetails.frequencyPerYear" placeholder="Year"
							disabled="true" />
					</div>
					<div class="form-group text-left col-md-6">
						<sf:input id="dosage_month_id"
							class="form-control form-control-sm"
							path="treatmentDetails.frequencyPerMonth" placeholder="Month"
							disabled="true" />
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group text-left">
					<label class="text-monospace text-danger">Dosage</label>
					<sf:input id="hydroxyurea_dosage_id"
						class="form-control form-control-sm"
						path="treatmentDetails.hydroxyUreaDose" />
				</div>
			</div>

			<div class="col-md-2">
				<div class="form-group text-left">
					<label class="text-monospace text-danger">Pre Hydroxyurea
						HB</label>
					<sf:input id="pre_hydroxyurea_id"
						class="form-control form-control-sm"
						path="treatmentDetails.preHydroxyurea" />
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group text-left">
					<label class="text-monospace text-danger">Post Hydroxyurea
						HB</label>
					<sf:input id="post_hydroxyurea_id"
						class="form-control form-control-sm"
						path="treatmentDetails.postHydroxyurea" />
				</div>
			</div>

		</div>
		<!-- *** Row-5 5.2 Hydroxy Urea *** -->
		<div class="form-group row mb-0 pb-0">
			<div class="col-md-2">
				<div class="form-group text-left">
					<label class="text-monospace text-danger">Pre Hydroxyurea Transfusion <br/> Frequency</label>
					<sf:input id="pre_hydroxyurea_transfusion_frequency_id"
						class="form-control form-control-sm"
						path="treatmentDetails.preHydroxyureaFrequency" />
				</div>
			</div>
			<div class="col-md-4">
				<div class="form-group text-left">
					<label class="text-monospace text-danger">Effect of Hydroxyurea on pain crisis in sickle cell disease<br/> Patient</label>
					<sf:input id="pre_hydroxyurea_transfusion_frequency_id"
						class="form-control form-control-sm"
						path="treatmentDetails.hydroxyureaEffect" />
				</div>
			</div>
			<div class="col-md-4">
				<div class="form-group text-left">
					<label class="text-monospace">Any Other disease modifying drug <br/>therapy</label>
					<sf:input id="pre_hydroxyurea_transfusion_frequency_id"
						class="form-control form-control-sm"
						path="treatmentDetails.provideTherapyDetails" />
				</div>
			</div>
		</div>
		<!-- *** Row-5 Chelation  *** -->
		<div class="form-group row mb-0 pb-0 mt-4">
			<div class="col-md-2">
				<div class="form-group text-left">
					<label class="text-monospace">Chelation</label><br />
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
			<div class="col-md-4 text-left">
				<label class="text-monospace text-left text-danger">Dosage</label>
				<div class="row">
					<div class="form-group text-left col-md-6">
						<sf:input id="dosage_year_id" class="form-control form-control-sm"
							path="treatmentDetails.frequencyPerYear" placeholder="Year"
							disabled="true" />
					</div>
					<div class="form-group text-left col-md-6">
						<sf:input id="dosage_month_id"
							class="form-control form-control-sm"
							path="treatmentDetails.frequencyPerMonth" placeholder="Month"
							disabled="true" />
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group text-left">
					<label class="text-monospace text-danger">Chelation Agent</label>
					<sf:select id="chelation_agent_id"
						class="form-control form-control-sm vaccine"
						path="treatmentDetails.chelationAgent">
						<sf:option value="Deferoxamine">Deferoxamine (Desferal)</sf:option>
						<sf:option value="Deferasirox">Deferasirox (Exjade)</sf:option>
						<sf:option value="Deferiprone">Deferiprone (L1)</sf:option>
						<sf:option value="Other">Other</sf:option>
					</sf:select>
				</div>
			</div>
			<div class="col-md-4">
				<div class="form-group text-left">
					<label class="text-monospace">Any Other Medication</label>
					<sf:input id="any_other_medication_id"
						class="form-control form-control-sm"
						path="treatmentDetails.anyOtherMedication" />
						
				</div>
			</div>

		</div>

	</div>
</section>