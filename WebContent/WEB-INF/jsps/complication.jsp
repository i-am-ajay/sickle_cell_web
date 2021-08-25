<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.time.Period, java.time.LocalDate"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<section id="complication_section"
	class="collapse section_body ${complication}">
	<!-- class="collapse" -->
	<div class="bg-info py-2 text-white text-center headings">Complications</div>
	<div class="form-body bg-light py-2 border text-center mx-1">
		<!-- *** 1. Pain Crisis *** -->
		<div class="form-group row mb-0 pb-0">
			<div class="col-md-12">
				<div class="form-group text-left">
					<label class="text-monospace col-md-6">History of painful
						crisis (in sickle cell disease patient) </label>
					<div class="form-check-inline col-md-2">
						<sf:radiobutton class="form-check-input mx-2"
							data-target="#test_div" id="y_pain_crisis_id" value="true"
							path="complications.painFulCrisis" />
						<span class="mx-2"> Yes</span>
						<sf:radiobutton class="form-check-input ml-4"
							data-target="#test_div" id="n_pain_crisis_id" value="false"
							path="complications.painFulCrisis" />
						<span class="mx-2">No</span>
					</div>
				</div>
			</div>
		</div>
		<!--  *** 1.1 Row 1 *** -->
		<div class="collapse border border-secondary p-2 pt-3 mx-auto mb-2"
			style="width: 90%" id="crisis_div">
			<div class="form-group row mb-0 pb-0">
				<div class="col-md-6">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Number of Crisis
							Requiring Hospitalization</label>
						<sf:input id="crisis_hosp_id"
							class="form-control form-control-sm col-md-2"
							path="complications.crisisRequiringHospitalization"
							placeholder="Hospitalization Number" />

					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6 px-1">Number of
							Crisis in last 12 Months</label>
						<sf:input id="crisis_12_mon_id"
							class="form-control form-control-sm col-md-2"
							path="complications.crisisInLast12Months"
							placeholder="Number in last 12 months" />
					</div>
				</div>
			</div>

			<!-- *** 1.2 Row 2 *** -->
			<div class="form-group row mb-0 pb-0">
				<div class="col-md-6">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Accute Chest
							Syndrom</label>
						<sf:select id="pallor_id"
							class="form-control form-control-sm col-md-2"
							path="complications.acuteChestSyndrom" placeholder="Pallor">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">O2 Support</label>
						<sf:select id="o2support_id"
							class="form-control form-control-sm col-md-6"
							path="complications.o2Support" placeholder="O2 Support"
							disabled="true">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">O2 Support Type</label>
						<sf:select id="o2support_type_id"
							class="form-control form-control-sm col-md-6"
							path="complications.O2SupportType" placeholder="Pallor"
							disabled="true">
							<sf:option value="O2 Mask/Prongs">O2 mask/prongs</sf:option>
							<sf:option value="NIV">NIV</sf:option>
							<sf:option value="Ventilator">Ventilator</sf:option>
						</sf:select>
					</div>
				</div>
			</div>
			<!-- *** 1.3 Row 3 *** -->
			<div class="form-group row mb-0 pb-0">
				<div class="col-md-6">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Exchange
							Transfusion</label>
						<sf:select id="pallor_id"
							class="form-control form-control-sm col-md-2"
							path="complications.exchangeTransfusion" placeholder="Pallor">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Hydroxyurea</label>
						<sf:select id="o2support_id"
							class="form-control form-control-sm col-md-6"
							path="complications.hydroxyurea" placeholder="hydroxyurea">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Hyper Hemolytic
							Crisis</label>
						<sf:select id="o2support_type_id"
							class="form-control form-control-sm col-md-6"
							path="complications.hyperHemolyticCrisis"
							placeholder="Hyper Hemolytic Crisis">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
			</div>
			<!-- *** 1.4 Row 4 ***-->
			<div class="form-group row mb-0 pb-0">
				<div class="col-md-6">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Number of pain
							crisis per year before starting Hydroxyurea</label>
						<sf:input id="crisis_hosp_id"
							class="form-control form-control-sm col-md-2"
							path="complications.numOfPainCrisisBeforeHydroxyUrea"
							placeholder="Hospitalization Number" />

					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6 px-1">Number of pain
							crisis per year after starting Hydroxyurea</label>
						<sf:input id="crisis_12_mon_id"
							class="form-control form-control-sm col-md-2"
							path="complications.numOfPainCrisisAfterHydroxyUrea"
							placeholder="Number in last 12 months" />
					</div>
				</div>
			</div>
		</div>

		<!-- *** 2.Neurological Abnormalities *** -->
		<div class="form-group row mt-2 mb-0 pb-0">
			<div class="col-md-12">
				<div class="form-group text-left">
					<label class="text-monospace col-md-6">Neurological
						Abnormalities</label>
					<div class="form-check-inline col-md-2">
						<sf:radiobutton class="form-check-input mx-2"
							data-target="#neuro_abnormalities_div"
							id="y_neuro_abnormalities_id" value="true"
							path="complications.neurologicalAbnormalities" />
						<span class="mx-2"> Yes</span>
						<sf:radiobutton class="form-check-input ml-4"
							data-target="#neuro_abnormalities_div"
							id="n_neuro_abnormalities_id" value="false"
							path="complications.neurologicalAbnormalities" />
						<span class="mx-2">No</span>
					</div>
				</div>
			</div>
		</div>
		<div class="collapse border border-dark p-1 mx-auto"
			style="width: 90%" id="neuro_abnormalities_div">
			<!-- *** 2.1 Div - Stroke *** -->
			<div class="form-group row mt-2 mb-0 pb-0">
				<div class="col-md-12">
					<div class="form-group text-left">
						<label class="text-monospace col-md-6">Stroke</label>
						<div class="form-check-inline col-md-2">
							<sf:radiobutton class="form-check-input mx-2"
								data-target="#stroke_div" id="y_stroke_id" value="true"
								path="complications.stroke" />
							<span class="mx-2"> Yes</span>
							<sf:radiobutton class="form-check-input ml-4"
								data-target="#stroke_div" id="n_stroke_id" value="false"
								path="complications.stroke" />
							<span class="mx-2">No</span>
						</div>
					</div>
				</div>
			</div>
			<div class="collapse border border-danger p-2 pt-3 mx-auto"
				style="width: 85%" id="stroke_div">
				<!-- *** Stroke Row 1 *** -->
				<div class="form-group row mb-0 pb-0">
					<div class="col-md-6">
						<div class="form-group row text-left">
							<label class="text-monospace col-md-6">Neuro Imaging</label>
							<sf:select id="neuroimaging_id"
								class="form-control form-control-sm col-md-2"
								path="complications.neuroimaging" placeholder="Neuroimaging">
								<sf:option value="true">Yes</sf:option>
								<sf:option value="false">No</sf:option>
							</sf:select>
						</div>
					</div>
				</div>
				<!-- *** Stroke Row 2 (CT) *** -->
				<div class="form-group row mb-0 pb-0">
					<div class="col-md-6">
						<div class="form-group row text-left">
							<label class="text-monospace col-md-6">CT</label>
							<sf:select id="ct_id"
								class="form-control form-control-sm col-md-2"
								path="complications.ct" placeholder="Pallor">
								<sf:option value="true">Yes</sf:option>
								<sf:option value="false">No</sf:option>
							</sf:select>
						</div>
					</div>
					<div class="col-md-6">
						<sf:input id="ctDetails_id"
							class="form-control form-control-sm col-md-11 ml-3"
							path="complications.ctDetails" placeholder="CT Findings" />
					</div>
				</div>
				<!-- *** Stroke Row 3 (MRI) *** -->
				<div class="form-group row mb-0 pb-0">
					<div class="col-md-6">
						<div class="form-group row text-left">
							<label class="text-monospace col-md-6">MRI</label>
							<sf:select id="ct_id"
								class="form-control form-control-sm col-md-2"
								path="complications.mri" placeholder="MRI">
								<sf:option value="true">Yes</sf:option>
								<sf:option value="false">No</sf:option>
							</sf:select>
						</div>
					</div>
					<div class="col-md-6">
						<sf:input id="mriDetails_id"
							class="form-control form-control-sm col-md-11 ml-3"
							path="complications.mriDetails" placeholder="MRI Findings" />
					</div>
				</div>
				<!-- *** Stroke Row 4 *** -->
				<div class="form-group row mb-0 pb-0">
					<div class="col-md-6">
						<div class="form-group row text-left">
							<label class="text-monospace col-md-6">Received Simple
								Blood Transfusion</label>
							<sf:select id="rec_blood_transfusion_id"
								class="form-control form-control-sm col-md-2"
								path="complications.recBloodTransfusion"
								placeholder="Sample Blood Transfusion">
								<sf:option value="true">Yes</sf:option>
								<sf:option value="false">No</sf:option>
							</sf:select>
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group row text-left">
							<label class="text-monospace col-md-6">Exchange Blood
								Transfusion</label>
							<sf:select id="rec_exchange_transfusion_id"
								class="form-control form-control-sm col-md-6"
								path="complications.recExchangeTransfusion"
								placeholder="hydroxyurea">
								<sf:option value="true">Yes</sf:option>
								<sf:option value="false">No</sf:option>
							</sf:select>
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group row text-left">
							<label class="text-monospace col-md-6">Hbs Level at Time
								of Diagnosis</label>
							<sf:input id="hbs_level_id"
								class="form-control form-control-sm col-md-6"
								path="complications.hbsLevel" placeholder="Hbs Level" />
						</div>
					</div>
				</div>
				<!-- *** Stroke Row 5 *** -->
				<div class="form-group row mb-0 pb-0">
					<div class="col-md-6">
						<div class="form-group row text-left">
							<label class="text-monospace col-md-6">Seizures</label>
							<sf:select id="rec_blood_transfusion_id"
								class="form-control form-control-sm col-md-2"
								path="complications.seizures" placeholder="Seizures">
								<sf:option value="true">Yes</sf:option>
								<sf:option value="false">No</sf:option>
							</sf:select>
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group row text-left">
							<label class="text-monospace col-md-6">Cognitive
								Dysfunction</label>
							<sf:select id="cognitive_dysfunction_id"
								class="form-control form-control-sm col-md-6"
								path="complications.cognitiveDysfunction"
								placeholder="Cognitive Dysfunction">
								<sf:option value="true">Yes</sf:option>
								<sf:option value="false">No</sf:option>
							</sf:select>
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group row text-left">
							<label class="text-monospace col-md-6">Any other deficits</label>
							<sf:select id="cognitive_dysfunction_id"
								class="form-control form-control-sm col-md-6"
								path="complications.anyOtherDeficits"
								placeholder="Other Deficits">
								<sf:option value="true">Yes</sf:option>
								<sf:option value="false">No</sf:option>
							</sf:select>
						</div>
					</div>
				</div>
			</div>

			<!-- *** Transactional Doppler *** -->
			<div class="form-group row mt-2 mb-0 pb-0">
				<div class="col-md-12">
					<div class="form-group text-left">
						<label class="text-monospace col-md-6">Transactional
							Doppler Done</label>
						<div class="form-check-inline col-md-2">
							<sf:radiobutton class="form-check-input mx-2"
								data-target="#doppler_div" id="y_doppler_id" value="true"
								path="complications.transactionalDoppler" />
							<span class="mx-2"> Yes</span>
							<sf:radiobutton class="form-check-input ml-4"
								data-target="#doppler_div" id="n_doppler_id" value="false"
								path="complications.transactionalDoppler" />
							<span class="mx-2">No</span>
						</div>
					</div>
				</div>
			</div>
			<div class="collapse border border-danger mx-auto pt-3 p-2"
				style="width: 85%" id="doppler_div">
				<!-- *** Transactional Doppler - Row 1 *** -->
				<div class="form-group row mb-0 pb-0">
					<div class="col-md-6">
						<div class="form-group row text-left">
							<label class="text-monospace col-md-6">Transient Ischemic
								Attack [TIA]</label>
							<sf:select id="neuroimaging_id"
								class="form-control form-control-sm col-md-2"
								path="complications.ischemicAttack"
								placeholder="Transient Ischemic Attack">
								<sf:option value="true">Yes</sf:option>
								<sf:option value="false">No</sf:option>
							</sf:select>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group row text-left">
							<label class="text-monospace col-md-6">Neuropathic Pain</label>
							<sf:select id="neuroimaging_id"
								class="form-control form-control-sm col-md-2"
								path="complications.neuropathicPain"
								placeholder="neuropathicPain">
								<sf:option value="true">Yes</sf:option>
								<sf:option value="false">No</sf:option>
							</sf:select>
						</div>
					</div>
				</div>

				<!-- *** Transactional Doppler - Row 2 *** -->
				<div class="form-group row mb-0 pb-0">
					<div class="col-md-6">
						<div class="form-group row text-left">
							<label class="text-monospace col-md-6">Other Neurological
								Abnormality </label>
							<sf:select id="other_neurological_abnormality_id"
								class="form-control form-control-sm col-md-2"
								path="complications.otherNeurologicalAbnormalities"
								placeholder="Other Neurological Abnormalities">
								<sf:option value="true">Yes</sf:option>
								<sf:option value="false">No</sf:option>
							</sf:select>
						</div>
					</div>
					<div class="col-md-6">
						<sf:input id="neurological_abnormalities_details_id"
							class="form-control form-control-sm col-md-11 ml-3"
							path="complications.neurologicalAbnormalitiesDetails"
							placeholder="Abnormalities Detail" />
					</div>
				</div>

			</div>
		</div>

		<!-- *** 3.Renal Involvement *** -->
		<div class="form-group row mt-2 mb-0 pb-0">
			<div class="col-md-12">
				<div class="form-group text-left">
					<label class="text-monospace col-md-6">Renal Involvement</label>
					<div class="form-check-inline col-md-5">
						<sf:radiobutton class="form-check-input mx-2"
							data-target="#renal_involvement_div" id="y_renal_involvement_id"
							value="true" path="complications.renalInvolvement" />
						<span class="mx-2"> Yes</span>
						<sf:radiobutton class="form-check-input ml-4"
							data-target="#renal_involvement_div" id="n_renal_involvement_id"
							value="false" path="complications.renalInvolvement" />
						<span class="mx-2">No</span>
					</div>
				</div>
			</div>
		</div>
		<!-- *** 3.1 Renal Involvement - Row 1 *** -->
		<div class="collapse border border-dark p-1 mx-auto"
			style="width: 90%" id="renal_involvement_div">
			<div class="form-group row mb-0 pb-0">
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Facial Puffiness</label>
						<sf:select id="facial_puffiness_id"
							class="form-control form-control-sm col-md-5"
							path="complications.facialPuffiness"
							placeholder="Facial Puffiness">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Decreased Urine
							Output</label>
						<sf:select id="decreased_urine_output_id"
							class="form-control form-control-sm col-md-5"
							path="complications.decreasedUrineOutput"
							placeholder="Decreased Urine Output">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Blood in urine</label>
						<sf:select id="blood_in_urine_id"
							class="form-control form-control-sm col-md-5"
							path="complications.bloodInUrine" placeholder="Blood In Urine">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Other symptoms<span
							class="text-danger">?</span></label>
						<sf:input id="other_symptoms_id"
							class="form-control form-control-sm col-md-5"
							path="complications.otherSymptoms" placeholder="Other Symptoms" />
					</div>
				</div>
			</div>

			<!-- *** 3.2 Renal Invovlement - Row 2 *** -->
			<div class="form-group row mb-0 pb-0">
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Urine Protein</label>
						<sf:select id="urine_protein_id"
							class="form-control form-control-sm col-md-5"
							path="complications.urineProtein" placeholder="Urine Protein">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Blood Urea</label>
						<sf:input id="blood_urea_id"
							class="form-control form-control-sm col-md-5"
							path="complications.bloodUrea" placeholder="Blood Urea" />
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Serum Creatnine</label>
						<sf:input id="serum_creatnine_id"
							class="form-control form-control-sm col-md-5"
							path="complications.serumCreatnine" placeholder="Serum Creatnine" />

					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Serum albumin</label>
						<sf:select id="serum_albumin_id"
							class="form-control form-control-sm col-md-5"
							path="complications.serumAlbumin" placeholder="Serum Albumin">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
			</div>

			<!-- *** 3.3 Renal Invovlement - Row 3 *** -->
			<div class="form-group row mb-0 pb-0">
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Dialysis</label>
						<sf:select id="dialysis_id"
							class="form-control form-control-sm col-md-5"
							path="complications.dialysis" placeholder="Urine Protein">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Ace Inhibitors</label>
						<sf:select id="dialysis_id"
							class="form-control form-control-sm col-md-5"
							path="complications.aceInhibitors" placeholder="Ace Inhibitors">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Swelling of
							Feet/Body Edema</label>
						<sf:select id="swelling_id"
							class="form-control form-control-sm col-md-5"
							path="complications.swelling"
							placeholder="Swelling of Feet/Body Edema">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
			</div>
		</div>

		<!-- *** Leg Ulcer *** -->
		<div class="form-group row mt-2 mb-0 pb-0">
			<div class="col-md-12">
				<div class="form-group text-left">
					<label class="text-monospace col-md-6">Leg Ulcer</label>
					<div class="form-check-inline col-md-5">
						<sf:radiobutton class="form-check-input mx-2" id="y_leg_ulcer_id"
							value="true" path="complications.legUlcer" />
						<span class="mx-2"> Yes</span>
						<sf:radiobutton class="form-check-input ml-4" id="n_leg_ulcer_id"
							value="false" path="complications.legUlcer" />
						<span class="mx-2">No</span>
					</div>
				</div>
			</div>
		</div>

		<!-- *** Hepatobillary involvement *** -->
		<div class="form-group row mt-2 mb-0 pb-0">
			<div class="col-md-12">
				<div class="form-group text-left">
					<label class="text-monospace col-md-6">Hepatobillary
						Involvement</label>
					<div class="form-check-inline col-md-5">
						<sf:radiobutton class="form-check-input mx-2"
							id="y_hepatobillary_involvement_id" value="true"
							data-target="hepatobillary_involvement_div"
							path="complications.hepatobillaryInvolvement" />
						<span class="mx-2"> Yes</span>
						<sf:radiobutton class="form-check-input ml-4"
							id="n_hepatobillary_involvement_id" value="false"
							data-target="hepatobillary_involvement_div"
							path="complications.hepatobillaryInvolvement" />
						<span class="mx-2">No</span>
					</div>
				</div>
			</div>
		</div>
		<div class="collapse border border-dark p-1 pt-3 mt-2 mx-auto"
			style="width: 90%" id="hepatobillary_involvement_div">

			<!-- *** 5.1 Hepatobillary involvement -Row-1 *** -->
			<div class="form-group row mb-0 pb-0">
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Gall Stones</label>
						<sf:select id="gal_stones_id"
							class="form-control form-control-sm col-md-5"
							path="complications.gallstone" placeholder="Gal Stones">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Cholecystectomy</label>
						<sf:select id="gal_stones_id"
							class="form-control form-control-sm col-md-5"
							path="complications.cholecystectomy"
							placeholder="Cholecystectomy">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">S.Bilirubin (Total)</label>
						<sf:input id="sBilirubini_total_id"
							class="form-control form-control-sm col-md-5"
							path="complications.sBilirubinTotal"
							placeholder="S.Bilirubin (Total)" />

					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">S.Bilirubin
							(Direct)</label>
						<sf:input id="sBilirubini_direct_id"
							class="form-control form-control-sm col-md-5"
							path="complications.sBilirubinDirect"
							placeholder="S.Bilirubin (Direct)" />
					</div>
				</div>
			</div>
			<!-- *** 5.2 Hepatobillary involvement - Row - 2 *** -->
			<div class="form-group row mb-0 pb-0">
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Hepatitis-B Antigen</label>
						<sf:select id="hepatitisB_antigen_id"
							class="form-control form-control-sm col-md-5"
							path="complications.hepatitisBAntigen"
							placeholder="Hepatitis-B Antigen">
							<sf:option value="true">Positive</sf:option>
							<sf:option value="false">Negative</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Anti HAV</label>
						<sf:select id="anti_hav_id"
							class="form-control form-control-sm col-md-5"
							path="complications.antiHAV" placeholder="Anti HAV">
							<sf:option value="true">Positive</sf:option>
							<sf:option value="false">Negative</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Anti HCV</label>
						<sf:select id="anti_hcv_id"
							class="form-control form-control-sm col-md-5"
							path="complications.antiHCV" placeholder="Anti HCV">
							<sf:option value="true">Positive</sf:option>
							<sf:option value="false">Negative</sf:option>
						</sf:select>

					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Hepatic
							Encephalopathy</label>
						<sf:select id="hepatic_encephalopathy_id"
							class="form-control form-control-sm col-md-5"
							path="complications.hepaticEncephalopathy"
							placeholder="Hepatic Encephalopathy">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
			</div>
		</div>

		<!-- *** 6.Priapism *** -->
		<div class="form-group row mt-2 mb-0 pb-0">
			<div class="col-md-12">
				<div class="form-group text-left">
					<label class="text-monospace col-md-6">Priapism</label>
					<div class="form-check-inline col-md-5">
						<sf:radiobutton class="form-check-input mx-2"
							data-target="#priapism_div" id="y_priapism_id" value="true"
							path="complications.priapism" />
						<span class="mx-2"> Yes</span>
						<sf:radiobutton class="form-check-input ml-4"
							data-target="#priapism_div" id="n_priapism_id" value="false"
							path="complications.priapism" />
						<span class="mx-2">No</span>
					</div>
				</div>
			</div>
		</div>
		<!-- *** Priapism div *** -->
		<div class="collapse border border-dark p-1 pt-3 mt-2 mx-auto"
			style="width: 90%" id="priapism_div">
			<!-- *** 6.1 Priapism Row-1 *** -->
			<div class="form-group row mb-0 pb-0">
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Managed at Home</label>
						<sf:select id="managed_home_id"
							class="form-control form-control-sm col-md-5"
							path="complications.managedAtHome" placeholder="Managed At Home">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Managed at Hospital</label>
						<sf:select id="managed_hospital_id"
							class="form-control form-control-sm col-md-5"
							path="complications.managedAtHospital"
							placeholder="Managed At Hospital">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Intracavernosal
							Aspiration</label>
						<sf:input id="intracavernosal_aspiration_id"
							class="form-control form-control-sm col-md-5"
							path="complications.intracavernosalAspiration"
							placeholder="Intracavernosal Aspiration" />

					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Use of Alpha
							Agonist</label>
						<sf:input id="alpha_agonist_id"
							class="form-control form-control-sm col-md-5"
							path="complications.alphaAgonist"
							placeholder="Use of Alpha Agonist" />
					</div>
				</div>
			</div>
			<!-- *** 6.1 Priapism Row-2 *** -->
			<div class="form-group row mb-0 pb-0">
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Exchange
							transfusion</label>
						<sf:select id="exchange_transfusion_id"
							class="form-control form-control-sm col-md-5"
							path="complications.exchangeTranfusion"
							placeholder="Exchange transfusion">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Surgical Shunt</label>
						<sf:select id="surgical_shunt_id"
							class="form-control form-control-sm col-md-5"
							path="complications.surgicalShunt" placeholder="Surgical Shunt">
							<sf:option value="true">Positive</sf:option>
							<sf:option value="false">Negative</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Erectile
							Dysfunction</label>
						<sf:select id="erectile_dysfunction_id"
							class="form-control form-control-sm col-md-5"
							path="complications.erectileDysfunction"
							placeholder="Erectile Dysfunction">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>

					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Time of Resolution
							of Priapism (Hours) </label>
						<sf:input id="resolution_priapism_id"
							class="form-control form-control-sm col-md-5"
							path="complications.resolutionOfPriapism"
							placeholder="Time of Resolution" />
					</div>
				</div>
			</div>
		</div>

		<!-- *** 7. Splenic Sequcstration Cusis *** -->
		<div class="form-group row mt-2 mb-0 pb-0">
			<div class="col-md-12">
				<div class="form-group text-left">
					<label class="text-monospace col-md-6">Splenic
						Sequcstration Cusis</label>
					<div class="form-check-inline col-md-5">
						<sf:radiobutton class="form-check-input mx-2"
							data-target="#spl_blood_transfusion_div" id="y_splenic_cusis_id"
							value="true" path="complications.splenicCusis" />
						<span class="mx-2"> Yes</span>
						<sf:radiobutton class="form-check-input ml-4"
							data-target="#spl_blood_transfusion_div" id="n_splenic_cusis_id"
							value="false" path="complications.splenicCusis" />
						<span class="mx-2">No</span>
					</div>
				</div>
			</div>
		</div>

		<!-- *** Splenic Sequcstration Cusis *** -->
		<div class="collapse border border-dark p-1 pt-3 mt-2 mx-auto"
			style="width: 90%" id="spl_blood_transfusion_div">
			<!-- *** 7.1 Splenic Sequcstration Cusis Row-1 *** -->
			<div class="col-md-6">
				<div class="form-group row text-left">
					<label class="text-monospace col-md-6">Blood Transfusion</label>
					<sf:select class="form-control form-control-sm col-md-5"
						id="splBlood_transfusion_id"
						path="complications.splBloodTransfusion">
						<sf:option value="true">Yes</sf:option>
						<sf:option value="false">No</sf:option>
					</sf:select>
				</div>
			</div>
		</div>


		<!-- *** 8. Aplastic Cusis *** -->
		<div class="form-group row mt-2 mb-0 pb-0">
			<div class="col-md-12">
				<div class="form-group text-left">
					<label class="text-monospace col-md-6">Aplastic Cusis</label>
					<div class="form-check-inline col-md-5">
						<sf:radiobutton class="form-check-input mx-2"
							data-target="#apl_blood_transfusion_div" id="y_aplastic_cusis_id"
							value="true" path="complications.aplasticCusis" />
						<span class="mx-2"> Yes</span>
						<sf:radiobutton class="form-check-input ml-4"
							data-target="#spl_blood_transfusion_div" id="n_aplastic_cusis_id"
							value="false" path="complications.aplasticCusis" />
						<span class="mx-2">No</span>
					</div>
				</div>
			</div>
		</div>
		<!-- *** Aplastic Cusis *** -->
		<div class="collapse border border-dark p-1 pt-3 mt-2 mx-auto"
			style="width: 90%" id="apl_blood_transfusion_div">
			<!-- *** 7.1 Splenic Sequcstration Cusis Row-1 *** -->
			<div class="col-md-6">
				<div class="form-group row text-left">
					<label class="text-monospace col-md-6">Blood Transfusion</label>
					<sf:select class="form-control form-control-sm col-md-5"
						id="y_splBlood_transfusion_id"
						path="complications.splBloodTransfusion">
						<sf:option value="true">Yes</sf:option>
						<sf:option value="false">No</sf:option>
					</sf:select>
				</div>
			</div>
		</div>
		<!-- Cardiac Involvement  -->
		<div class="form-group row mt-2 mb-0 pb-0">
			<div class="col-md-12">
				<div class="form-group text-left">
					<label class="text-monospace col-md-6">Cardiac Involvement</label>
					<div class="form-check-inline col-md-5">
						<sf:radiobutton class="form-check-input mx-2"
							data-target="#cardiac_involvement_div"
							id="y_cardiac_involvement_id" value="true"
							path="complications.cardiacInvolvement" />
						<span class="mx-2"> Yes</span>
						<sf:radiobutton class="form-check-input ml-4"
							data-target="#cardiac_involvement_div"
							id="n_cardiac_involvement_id" value="false"
							path="complications.cardiacInvolvement" />
						<span class="mx-2">No</span>
					</div>
				</div>
			</div>
		</div>

		<!-- *** 9 Cardiac Involvement Div *** -->
		<div class="collapse border border-dark p-1 pt-3 mt-2 mx-auto"
			style="width: 90%" id="cardiac_involvement_div">
			<!-- *** 9.1 Cardiac Involvement Row-1 *** -->
			<div class="form-group row mb-0 pb-0">
				<div class="col-md-4">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Cardiomegaly</label>

						<sf:select class="form-control form-control-sm col-md-5"
							id="cardiomegaly_id" path="complications.cardiomegaly">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>


					</div>
				</div>
				<div class="col-md-4">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Pulmonary
							Hypertension</label>
						<sf:select class="form-control form-control-sm col-md-5"
							id="pulmonary_hypertension_id"
							path="complications.pulmonaryHypertension">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>

				</div>
				<div class="col-md-4">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Left ventricular
							hypertrophy</label>
						<sf:select class="form-control form-control-sm col-md-5"
							id="left_ventricular_id" path="complications.leftVentricular">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
			</div>

			<!-- *** 9.2 Cardiac Involvement Row-2 *** -->
			<div class="form-group row mb-0 pb-0">
				<div class="col-md-4">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Decreased LVEF</label>
						<sf:select class="form-control form-control-sm col-md-5"
							id="decreased_lvef_id" path="complications.decreasedLVEF">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-4">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">LVEF Type</label>
						<sf:input class="form-control form-control-sm mx-2 col-md-5"
							id="y_lvef_type_hypertension_id" placeholder="Type"
							path="complications.lvefType" />

					</div>
				</div>
			</div>
		</div>

		<!-- *** Eye Involvement *** -->
		<div class="form-group row mt-2 mb-0 pb-0">
			<div class="col-md-12">
				<div class="form-group text-left">
					<label class="text-monospace col-md-6">Eye Involvement</label>
					<div class="form-check-inline col-md-5">
						<sf:radiobutton class="form-check-input mx-2"
							data-target="#eye_involvement_div" id="y_eye_involvement_id"
							value="true" path="complications.eyeInvolvement" />
						<span class="mx-2"> Yes</span>
						<sf:radiobutton class="form-check-input ml-4"
							data-target="#eye_involvement_div" id="n_eye_involvement_id"
							value="false" path="complications.eyeInvolvement" />
						<span class="mx-2">No</span>
					</div>
				</div>
			</div>
		</div>

		<!-- *** 9 Eye Involvement Div *** -->
		<div class="collapse border border-dark p-1 pt-3 mt-2 mx-auto"
			style="width: 90%" id="eye_involvement_div">
			<!-- *** 10.1 Eye Involvement Row-1 *** -->
			<div class="form-group row mb-0 pb-0">
				<div class="col-md-4">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Sickle Retinopathy</label>
						<sf:select class="form-control form-control-sm col-md-5"
							id="sickle_retinopathy_id" path="complications.sickleRetinopathy">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-4">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Neovascularization</label>
						<sf:select class="form-control form-control-sm col-md-5"
							id="neovascularization_id"
							path="complications.neovascularization">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>

				<div class="col-md-4">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Vitreous
							Hemorrphage</label>
						<sf:select class="form-control form-control-sm col-md-5"
							id="vitreous_hemorrphage_id"
							path="complications.vitreousHemorrphage">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
			</div>


			<!-- *** 10.2 Eye Involvement Row-2 *** -->
			<div class="form-group row mb-0 pb-0">
				<div class="col-md-4">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Retinal Detachment</label>
						<sf:select class="form-control form-control-sm col-md-5"
							id="retinal_detachment_id" path="complications.retinalDetachment">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>

				<div class="col-md-4">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Retinal Breaks</label>
						<sf:select class="form-control form-control-sm col-md-5"
							id="retinal_breaks_id" path="complications.retinalBreaks">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
			</div>
		</div>
		<!-- *** 8. Aplastic Cusis *** -->
		<div class="form-group row mt-2 mb-0 pb-0">
			<div class="col-md-12">
				<div class="form-group text-left">
					<label class="text-monospace col-md-6">Iron Overloaded</label>
					<div class="form-check-inline col-md-5">
						<sf:radiobutton class="form-check-input mx-2"
							data-target="#iron_overloaded_div" id="y_iron_overloaded_id"
							value="true" path="complications.ironOverloaded" />
						<span class="mx-2"> Yes</span>
						<sf:radiobutton class="form-check-input ml-4"
							data-target="#iron_overloaded_div" id="n_iron_overloaded_id"
							value="false" path="complications.ironOverloaded" />
						<span class="mx-2">No</span>
					</div>
				</div>
			</div>
		</div>
		<!-- *** Iron Overloaded Div *** -->
		<div class="collapse border border-dark p-1 pt-3 mt-2 mx-auto"
			style="width: 90%" id="iron_overloaded_div">
			<!-- *** 7.1 Iron Overloaded Row-1 *** -->
			<div class="form-group row mt-2 mb-0 pb-0">
				<div class="col-md-12">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-3">Iron Overloaded</label>
						<sf:select id="pallor_id"
							class="form-control form-control-sm col-md-2"
							path="complications.ironOverloadedType">
							<sf:option value=""></sf:option>
							<sf:option value="Cardiac">Cardiac</sf:option>
							<sf:option value="Endocrine">Endocrine</sf:option>
							<sf:option value="Growth">Growth</sf:option>
						</sf:select>
					</div>
				</div>
			</div>
		</div>
		<!-- *** 12. History Of Infection *** -->
		<div class="form-group row mt-2 mb-0 pb-0">
			<div class="col-md-12">
				<div class="form-group text-left">
					<label class="text-monospace col-md-6">History Of Any
						Infection</label>
					<div class="form-check-inline col-md-5">
						<sf:radiobutton class="form-check-input mx-2"
							id="y_infection_history_id" value="true"
							data-target="infection_history_div"
							path="complications.historyOfInfection" />
						<span class="mx-2"> Yes</span>
						<sf:radiobutton class="form-check-input ml-4"
							id="n_infection_history_id" value="false"
							data-target="infection_history_div"
							path="complications.historyOfInfection" />
						<span class="mx-2">No</span>
					</div>
				</div>
			</div>
		</div>
		<div class="collapse border border-dark p-1 pt-3 mt-2 mx-auto"
			style="width: 90%" id="infection_history_div">

			<!-- *** 12.1 History Of Infection -Row-1 *** -->
			<div class="form-group row mb-0 pb-0">
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Hospital Admission</label>
						<sf:select id="hospital_admission_id"
							class="form-control form-control-sm col-md-5"
							path="complications.hospitalAddmission" placeholder="Gal Stones">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Type Of Infection</label>
						<sf:select id="infection_type_id"
							class="form-control form-control-sm col-md-5"
							path="complications.typeOfInfection"
							placeholder="Type Of Infection">
							<sf:option value="true">Pneumonia</sf:option>
							<sf:option value="false">Sepsis</sf:option>
							<sf:option value="true">Ostemomyelitis</sf:option>
							<sf:option value="false">Other</sf:option>
						</sf:select>
					</div>
				</div>

			</div>

			<!-- *** 12.1 History Of Infection -Row-2 *** -->
			<div class="form-group row mb-0 pb-0">
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Blood Culture</label>
						<div class="form-check-inline col-md-5">
							<sf:radiobutton class="form-check-input mx-2"
								id="y_blood_culture_id" value="true"
								path="complications.bloodCulture" />
							<span class="mx-2"> Yes</span>
							<sf:radiobutton class="form-check-input ml-4"
								id="n_blood_culture_id" value="false"
								path="complications.bloodCulture" />
							<span class="mx-2">No</span>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace text-danger col-md-6 culture-lable">Blood
							Culture Result</label>
						<sf:select id="culture_result_id"
							class="form-control form-control-sm col-md-5 culture"
							path="complications.bloodCulturePosOrNeg">
							<sf:option value="true">Positive</sf:option>
							<sf:option value="false">Negative</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group row text-left">
						<label class="text-monospace text-danger col-md-3 culture-lable">Organism
							Type</label>
						<sf:input id="organism_type_id"
							class="form-control form-control-sm col-md-8 culture"
							placeholder="Organism Type" path="complications.organism" />
					</div>
				</div>

			</div>

			<!-- *** 12.3 History Of Infection - (Vaccination Type) -Row-3 *** -->
			<div class="form-group row mb-0 pb-0">
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace col-md-6">Vaccination</label>
						<div class="form-check-inline col-md-5">
							<sf:radiobutton class="form-check-input mx-2" id="y_vaccine_id"
								value="true" path="complications.vaccination" />
							<span class="mx-2"> Yes</span>
							<sf:radiobutton class="form-check-input ml-4" id="n_vaccine_id"
								value="false" path="complications.vaccination" />
							<span class="mx-2">No</span>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace text-danger col-md-6 vaccine-lable">HIB
							Vaccine</label>
						<sf:select id="hib_id"
							class="form-control form-control-sm col-md-5 vaccine"
							path="complications.hibVaccine">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace text-danger col-md-6 vaccine-lable">Pheumococcal
							Vaccine</label>
						<sf:select id="pheumococcal_id"
							class="form-control form-control-sm col-md-5 vaccine"
							path="complications.pheumococcalVaccine">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace text-danger col-md-6 vaccine-lable">Meningococcal
							Vaccine</label>
						<sf:select id="meningococcal_id"
							class="form-control form-control-sm col-md-5 vaccine"
							path="complications.meningococcalVaccine">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
			</div>
			<!-- *** 12.4 History Of Infection - (Vaccination Type) -Row-4 *** -->
			<div class="form-group row mb-0 pb-0">
				<div class="col-md-3">
					<!-- Blank Columns -->
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace text-danger col-md-6 vaccine-lable">Typhoid
							Vaccine</label>
						<sf:select id="typhoid_id"
							class="form-control form-control-sm col-md-5 vaccine"
							path="complications.typhoidVaccine">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group row text-left">
						<label class="text-monospace text-danger col-md-6 vaccine-lable">Flu
							Vaccine</label>
						<sf:select id="flu_vaccine_id"
							class="form-control form-control-sm col-md-5 vaccine"
							path="complications.fluVaccine">
							<sf:option value="true">Yes</sf:option>
							<sf:option value="false">No</sf:option>
						</sf:select>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>