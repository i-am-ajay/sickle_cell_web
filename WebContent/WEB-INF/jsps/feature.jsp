<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.time.Period, java.time.LocalDate"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<section id="feature_section"
				class="collapse section_body ${feature}">
				<!-- class="collapse" -->
				<div class="bg-success py-2 text-white text-center headings">Feature
					& Examination</div>
				<div class="form-body bg-light py-2 border text-center mx-1">
					<div class="form-group row mb-0 pb-0">

						<div class="col-md-3 text-left">
							<label class="text-monospace text-left">Age Of
								Presentation</label>
							<div class="row">
								<div class="form-group text-left col-md-6">
									<sf:input id="mother_occupation_id"
										class="form-control form-control-sm"
										path="patientExamination.presentationAgeInYear"
										placeholder="Year" />
								</div>
								<div class="form-group text-left col-md-6">
									<sf:input id="mother_occupation_id"
										class="form-control form-control-sm"
										path="patientExamination.presentationAgeInYear"
										Placeholder="Month" />
								</div>
							</div>
						</div>
						<div class="col-md-3 text-left">
							<label class="text-monospace text-left">Age At Diagnosis</label>
							<div class="row">
								<div class="form-group text-left col-md-6">
									<sf:input id="mother_occupation_id"
										class="form-control form-control-sm"
										path="patientExamination.ageAtDignosisYear" placeholder="Year" />
								</div>
								<div class="form-group text-left col-md-6">
									<sf:input id="mother_occupation_id"
										class="form-control form-control-sm"
										path="patientExamination.ageAtDignosisMonth"
										Placeholder="Month" />
								</div>
							</div>
						</div>
						<div class="col-md-3 text-left">
							<label class="text-monospace text-left">Current Age Of
								Patient</label>
							<div class="row">
								<div class="form-group text-left col-md-6">
									<sf:input id="mother_occupation_id"
										class="form-control form-control-sm"
										path="patientExamination.currentAgeYear" placeholder="Year" />
								</div>
								<div class="form-group text-left col-md-6">
									<sf:input id="mother_occupation_id"
										class="form-control form-control-sm"
										path="patientExamination.currentAgeMonth" Placeholder="Month" />
								</div>
							</div>
						</div>

					</div>
					<div class="border_bottom">&nbsp;</div>
					<!-- *** Presenting Features *** -->
					<div
						class="display-5 mt-2 title border-bottom border-danger w-25 mx-auto mb-3">
						Presenting Features</div>
					<div class="form-group row mb-0 pb-0">
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Pallor</label>
								<sf:select id="pallor_id" class="form-control form-control-sm"
									path="patientExamination.presentingPallor" placeholder="Pallor">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>
								</sf:select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Yelloness</label>
								<sf:select id="pallor_id" class="form-control form-control-sm"
									path="patientExamination.presentingYellowness"
									placeholder="Yelloness">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>
								</sf:select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Recurrent Fever</label>
								<sf:select id="pallor_id" class="form-control form-control-sm"
									path="patientExamination.presentingRecurrentFever"
									placeholder="Yelloness">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>
								</sf:select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Abdominal Distension</label>
								<sf:select id="distension_id"
									class="form-control form-control-sm"
									path="patientExamination.presentingDistensionOfAbdomen"
									placeholder="Distension of Abdomen">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>
								</sf:select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Lethargy</label>
								<sf:select id="lethargy_id" class="form-control form-control-sm"
									path="patientExamination.presentingLethargy"
									placeholder="Lethargy">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>/
					      		</sf:select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Fatigue</label>
								<sf:select id="fatigue_id" class="form-control form-control-sm"
									path="patientExamination.presentingFatigue"
									placeholder="Fatigue">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>/
					      		</sf:select>
							</div>
						</div>
					</div>
					<div class="border_bottom">&nbsp;</div>
					<!-- *** Presenting Features *** -->
					<div
						class="display-5 mt-2 title border-bottom border-danger w-25 mx-auto mb-3">Family
						History</div>
					<div class="form-group row mb-0 pb-0">
						<div class="col-md-3">
							<div class="form-group text-left">
								<label class="text-monospace">Similarly Effected Sibling</label>
								<sf:select id="effected_sibling_id"
									class="form-control form-control-sm"
									path="patientExamination.similarEffectedSibling"
									placeholder="Effected Sibling">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>/
					      		</sf:select>
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group text-left">
								<label class="text-monospace">Other Effected Member</label>
								<sf:select id="effected_member_id"
									class="form-control form-control-sm"
									path="patientExamination.effectedFamilyMember"
									placeholder="Effected Member">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>/
					      		</sf:select>
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group text-left">
								<label class="text-monospace">Member Detail</label>
								<sf:input id="effected_sibling_id"
									class="form-control form-control-sm"
									path="patientExamination.familyMemberDetails"
									placeholder="Effected Family Member Details" />
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group text-left">
								<label class="text-monospace">Pedigree</label> <input
									id="effected_sibling_id" class="form-control form-control-sm"
									placeholder="Document Upload" disabled />
							</div>
						</div>
					</div>
					<div class="border_bottom">&nbsp;</div>
					<!-- *** Presenting Features *** -->
					<div
						class="display-5 mt-2 title border-bottom border-danger w-25 mx-auto mb-3">Current
						Symptom</div>
					<div class="form-group row mb-0 pb-0">
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Pallor</label>
								<sf:select id="current_pallor_id"
									class="form-control form-control-sm"
									path="patientExamination.currentPallor" placeholder="Pallor">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>
								</sf:select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Jaundice</label>
								<sf:select id="current_jaundice_id"
									class="form-control form-control-sm"
									path="patientExamination.currentJaundice"
									placeholder="Jaundice">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>
								</sf:select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Recurrent Fever</label>
								<sf:select id="current_recurrent_fever_id"
									class="form-control form-control-sm"
									path="patientExamination.currentRecurrentFever"
									placeholder="Recurrent Fever">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>
								</sf:select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Abdominal Pain</label>
								<sf:select id="current_abdominal_pain_id"
									class="form-control form-control-sm"
									path="patientExamination.currentAbdominalPain"
									placeholder="Abdominal Pain">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>
								</sf:select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Dyspnoea</label>
								<sf:select id="current_dyspnoea_id"
									class="form-control form-control-sm"
									path="patientExamination.currentDyspnoea"
									placeholder="Dyspnoea">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>/
					      		</sf:select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Fatigue</label>
								<sf:select id="current_fatigue_id"
									class="form-control form-control-sm"
									path="patientExamination.currentFatigue" placeholder="Fatigue">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>/
					      		</sf:select>
							</div>
						</div>
					</div>
					<div class="form-group row mb-0 pb-0">
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Chest Pain</label>
								<sf:select id="current_chest_pain_id"
									class="form-control form-control-sm"
									path="patientExamination.currentChestPain"
									placeholder="Fatigue">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>/
					      		</sf:select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Bone & Joint Pain</label>
								<sf:select id="current_bone_joint_pain_id"
									class="form-control form-control-sm"
									path="patientExamination.currentBoneAndJointPain"
									placeholder="Fatigue">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>/
					      		</sf:select>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group text-left">
								<label class="text-monospace">Any Other Symptom</label>
								<sf:input id="c_other_symptoms_id"
									class="form-control form-control-sm"
									path="patientExamination.currentOtherSymptoms"
									placeholder="If any other symptoms?" />

							</div>
						</div>

					</div>
					<!-- End Current Symptoms -->
					<div class="border_bottom">&nbsp;</div>
					
					<!-- *** Presenting Features *** -->
					<div
						class="display-5 mt-2 title border-bottom border-danger w-25 mx-auto mb-3">
						Clinical Examination At Enrollment</div>
					<div class="form-group row mb-0 pb-0">
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Pallor</label>
								<sf:select id="exam_pallor_id"
									class="form-control form-control-sm"
									path="patientExamination.examPallor" placeholder="Pallor">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>
								</sf:select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Jaundice</label>
								<sf:select id="exam_jaundice_id"
									class="form-control form-control-sm"
									path="patientExamination.examJaundice" placeholder="Jaundice">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>
								</sf:select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Edema</label>
								<sf:select id="exam_edema_id"
									class="form-control form-control-sm"
									path="patientExamination.examEdema"
									placeholder="Recurrent Fever">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>
								</sf:select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Leg Ulcer</label>
								<sf:select id="exam_leg_ulcer_id"
									class="form-control form-control-sm"
									path="patientExamination.examLegUlcer" placeholder="Leg Ulcer">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>
								</sf:select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Hepatomegaly</label>
								<sf:select id="hepatomegalya_id"
									class="form-control form-control-sm"
									path="patientExamination.hepatomegaly"
									placeholder="Hepatomegaly">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>/
					      		</sf:select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Splenomegaly</label>
								<sf:select id="splenomegaly_id"
									class="form-control form-control-sm"
									path="patientExamination.splenomegaly"
									placeholder="Splenomegaly">
									<sf:option value="true">Yes</sf:option>
									<sf:option value="false">No</sf:option>/
					      		</sf:select>
							</div>
						</div>
					</div>
					<div class="form-group row mb-0 pb-0">
						<div class="col-md-4">
							<div class="form-group text-left">
								<label class="text-monospace">If Any Systematic
									Abnormalities</label>
								<sf:input id="any_abnormalities_id"
									class="form-control form-control-sm"
									path="patientExamination.abnormalitiesDetail"
									placeholder="Specify Systematic Abnormalitites" />

							</div>
						</div>
						<div class="col-md-4 text-left">
							<label class="text-monospace text-left">Height</label>
							<div class="row">
								<div class="form-group text-left col-md-6">
									<sf:input id="height_id" class="form-control form-control-sm"
										path="patientExamination.height" placeholder="Height" />
								</div>
								<div class="form-group text-left col-md-6">
									<sf:input id="mother_occupation_id"
										class="form-control form-control-sm"
										path="patientExamination.heightZscore" Placeholder="Z score" />
								</div>
							</div>
						</div>
						<div class="col-md-4 text-left">
							<label class="text-monospace text-left">Weight</label>
							<div class="row">
								<div class="form-group text-left col-md-6">
									<sf:input id="mother_occupation_id"
										class="form-control form-control-sm"
										path="patientExamination.weight" placeholder="Weight" />
								</div>
								<div class="form-group text-left col-md-6">
									<sf:input id="mother_occupation_id"
										class="form-control form-control-sm"
										path="patientExamination.weightZscore" Placeholder="Z score" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>

