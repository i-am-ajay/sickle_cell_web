<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.time.Period, java.time.LocalDate"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
		<section id="details_section"
				class="collapse section_body ${details}">
				<div
					class="bg-primary py-1 text-white text-center display-5 headings">Patient
					Info</div>

				<div class="form-body bg-light py-2 border text-center mx-1">
					<!--Patient Primary Information -->
					<div>
						<div class="form-group row mb-0 pb-0">
							<!-- Left column -->
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Registration No</label>
									<sf:input class="form-control form-control-sm"
										id="patient_registration_number" path="registrationNumber" />
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Patient Name</label>
									<sf:input id="patientName_id"
										class="form-control form-control-sm" name="patientName_name"
										path="patientName" />
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Aadhar Number</label>
									<sf:input id="adharNumber_id"
										class="form-control form-control-sm" path="adharNumber" />
								</div>
							</div>

							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace mr-5">Gender</label>
									<div class="form-check-inline">
										<sf:radiobutton class="form-check-input mx-2" id="y_gender_id"
											value="true" path="gender" />
										<span class="mx-2"> Yes</span>
										<sf:radiobutton class="form-check-input ml-4" id="n_gender_id"
											value="false" path="gender" />
										<span class="mx-2">No</span>
									</div>
								</div>
							</div>

							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Religion</label>
									<sf:input id="religon_id" class="form-control form-control-sm"
										path="socioDemo.religion" />
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Caste</label>
									<sf:input id="caste_id" class="form-control form-control-sm"
										path="socioDemo.caste" />
								</div>
							</div>

						</div>
						<div class="form-group row mb-0 pb-0">
							<div class="col-md-8">
								<div class="form-group text-left">
									<label class="text-monospace">Final Diagnosis</label>
									<sf:input id="diagnosis_id"
										class="form-control form-control-sm"
										path="record.finalDiagnosis" />
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Clinical Exam Date</label>
									<sf:input type="date" id="date_of_clinical_examination_id"
										class="form-control form-control-sm"
										path="record.dateofClinicalExamination" />
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Record Date</label>
									<sf:input type="date" id="date_of_record_id"
										class="form-control form-control-sm"
										path="record.dateofRecord" />
								</div>
							</div>
						</div>
						<div class="form-group row mb-0 pb-0">
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Consent Given</label>
									<div class="form-check-inline">
										<sf:radiobutton class="form-check-input mx-2"
											id="y_Consent_id" value="true" path="record.consent" />
										<span class="mx-2"> Yes</span>
										<sf:radiobutton class="form-check-input ml-4"
											id="n_Consent_id" value="false" path="record.consent" />
										<span class="mx-2">No</span>
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Assent Given</label>
									<div class="form-check-inline">
										<sf:radiobutton
											class="form-check-input mx-2 border border-primary"
											id="y_Assent_id" value="true" path="record.assent" />
										<span class="mx-2"> Yes</span>
										<sf:radiobutton
											class="form-check-input ml-4 border border-primary"
											id="n_Assent_id" value="false" path="record.assent" />
										<span class="mx-2">No</span>
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Referred By</label>
									<sf:input id="referred_id" class="form-control form-control-sm"
										path="record.referred" />
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Hosp Name</label>
									<sf:input id="hospital_name_id"
										class="form-control form-control-sm"
										path="record.hospitalName" />
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">ICMR ID</label>
									<sf:input id="icmr_id_id" class="form-control form-control-sm"
										path="record.icmrId" />
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Diagnosis</label>
									<sf:input id="icmr_id_id" class="form-control form-control-sm"
										path="record.diagnosis" />
								</div>
							</div>

						</div>
					</div>
					<div class="border_bottom">&nbsp;</div>
					<!-- *** Patient Relation *** -->
					<div
						class="display-5 mt-2 title border-bottom border-danger w-25 mx-auto mb-3">
						Patient Relations</div>
					<div class="form-group row mb-0 pb-0">
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Father Name</label>
								<sf:input id="father_id" class="form-control form-control-sm"
									name="father_name" path="father.relationName" />
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Mother Name</label>
								<sf:input id="mother_id" class="form-control form-control-sm"
									name="mother_name" path="mother.relationName" />
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Father Aadhar</label>
								<sf:input id="father_adhar_id"
									class="form-control form-control-sm" name="father_adhar"
									path="father.relationAdharNumber" />
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Mother Aadhar</label>
								<sf:input id="mother_adhar_id"
									class="form-control form-control-sm" name="mother_adhar"
									path="mother.relationAdharNumber" />
							</div>
						</div>
					</div>

					<!-- *** Contact *** -->
					<div class="border_bottom">&nbsp;</div>
					<div
						class="display-5 mt-2 title border-bottom border-danger w-25 mx-auto mb-3">Contact</div>
					<div>
						<div class="form-group row mb-0 pb-0">
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Address</label>
									<sf:input id="permanent_address_id"
										class="form-control form-control-sm"
										path="permanentAddress.permanentAddress" />
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Country</label>
									<sf:input id="country_id" class="form-control form-control-sm"
										path="permanentAddress.countryName" />
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Birth Place</label>
									<sf:input id="city_birth_id"
										class="form-control form-control-sm"
										path="permanentAddress.cityOfBirth" />
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">District</label>
									<sf:input id="district_id" class="form-control form-control-sm"
										path="permanentAddress.district" />
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">State</label>
									<sf:input id="state_id" class="form-control form-control-sm"
										path="permanentAddress.state" />
								</div>
							</div>
						</div>
						<div class="form-group row mb-0 pb-0">
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Father Mobile</label>
									<sf:input id="mobile_no_father_id"
										class="form-control form-control-sm"
										path="patientContact.mobileNoFather" />
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Mother Mobile</label>
									<sf:input id="mobile_no_mother_id"
										class="form-control form-control-sm"
										path="patientContact.mobileNoMother" />
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Landline(with code)</label>
									<sf:input id="landline_number_id"
										class="form-control form-control-sm"
										path="patientContact.landLineNumber" />
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Email</label>
									<sf:input id="email_id" class="form-control form-control-sm"
										path="patientContact.email" />
								</div>
							</div>
						</div>
					</div>

					<div class="border_bottom">&nbsp;</div>
					<div
						class="display-5 mt-2 title border-bottom border-danger w-25 mx-auto mb-3">Socio
						Demographic Details</div>
					<div class="form-group row mb-0 pb-0">
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Patient Edu</label>
								<sf:input id="patient_education_status_id"
									class="form-control form-control-sm"
									path="socioDemo.patientEducationStatus" />
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Patient Occ</label>
								<sf:input id="patient_occupation"
									class="form-control form-control-sm"
									path="socioDemo.patientOccupation" />
							</div>
						</div>

						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace mr-5">Tribal</label>
								<div class="form-check-inline">
									<sf:radiobutton class="form-check-input mx-2" id="y_tribal_id"
										value="true" path="socioDemo.tribal" />
									<span class="mx-2"> Yes</span>
									<sf:radiobutton class="form-check-input ml-4" id="n_tribal_id"
										value="false" path="socioDemo.tribal" />
									<span class="mx-2">No</span>
								</div>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Non Tribal</label>
								<sf:input id="non_tribal_id"
									class="form-control form-control-sm" path="socioDemo.nonTribal" />
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Monthly Family Inc</label>
								<sf:input id="mother_occupation_id"
									class="form-control form-control-sm"
									path="socioDemo.monthlyIncome" />
							</div>
						</div>
					</div>
					<div class="form-group row mb-0 pb-0">
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Father Edu</label>
								<sf:input id="father_education_id"
									class="form-control form-control-sm"
									path="father.relationEducation" />
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Father Occ</label>
								<sf:input id="father_occupation_id"
									class="form-control form-control-sm"
									path="father.relationOccupation" />
							</div>
						</div>

						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Mother Edu</label>
								<sf:input id="mother_education_id"
									class="form-control form-control-sm"
									path="mother.relationEducation" />
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Mother Occ</label>
								<sf:input id="mother_occupation_id"
									class="form-control form-control-sm"
									path="mother.relationOccupation" />
							</div>
						</div>

					</div>
				</div>
			</section>

