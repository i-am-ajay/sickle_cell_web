<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.time.Period, java.time.LocalDate"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Consultant Info</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static_resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static_resources/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static_resources/css/style.css">
</head>
<body id="home">

	<div class="mx-auto" style="width: 95%">
		<sf:form action="/" modelAttribute="patient_info">
			<!-- Header Section -->
			<header id="top-section">
				<div class="row no-gutters" style="margin-left: 0; margin-right: 0">
					<%-- <div class="col-lg-2 col-md-3 text-center bg-light border align-items-center">
          <img src="${pageContext.request.contextPath}/static_resources/img/male_sample.jpg" class="border-warning img-fluid d-block m-auto" />
        </div> --%>

					<div class="col-lg-12 col-md-12">
						<!-- Top Section With patient Name Registration and other detail -->
						<div class="d-flex flex-column">
							<div id="social-media"
								class="d-flex flex-row justify-content-between align-items-center text-white bg-dark pr-5 fixed-top mx-auto"
								style="width: 95%">
								<h2 class="display-4 bg-dark text-white text-left px-3">Sickle
									Cell Performa</h2>
								<div data-toggle="modal" data-target="#user">
									<a href="#" class="text-white"><i class="fa fa-user-o"></i></a>
								</div>
								<div>
									<a href="reports" class="text-white"><i
										class="fa fa-folder-open-o"></i></a>
								</div>
								<div>
									<a href="#" class="text-white"><i class="fa fa-sign-out"></i></a>
								</div>
							</div>

							<!-- Modal Code -->

							<div class="modal fade" id="user" tabindex="-1" role="dialog"
								aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog modal-lg" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">User
												Add/Search</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">
											<div class="form-body bg-light py-2 border text-center">
												<form action="add_search" method="GET">
													<div id="search_form" class="form-row p-3 ">
														<div class="col-lg-8 form-inline">
															<div class="col-lg-5 col-md-6">
																<label class="text-secondary font-weight-bold"
																	for="user_search">Patient Search</label>
															</div>
															<div class="col-lg-7 col-md-6">
																<input id="user_search" type="text" name="user"
																	class="form-control form-control-xs border border-success"
																	placeholder="Patient Name" />
															</div>
														</div>

														<div id="btn" class="col-lg-4 justify-content-center">
															<button type="submit"
																class="btn btn-xs btn-outline-success btn-block">Add/Search</button>
														</div>
													</div>
												</form>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Close</button>
										</div>
									</div>
								</div>
							</div>


							<!-- Designation Line On the Page -->
							<div>
								<div id="designation" style="margin-top: 70px"
									class="text-white p-2">User Details</div>
							</div>

							<!-- Top Menu -> Link for various pages.  -->
							<div>
								<div class="d-flex flex-row text-center text-white">
									<div id="details_port" class="port bg-primary col py-2"
										data-toggle="collapse" data-target="#details_section">
										<i class="port-item fa fa-address-card-o d-block"></i>Patient
										Information
									</div>
									<div id="contract_port" class="port bg-success col py-2"
										data-toggle="collapse" data-target="#feature_section">
										<i class="port-item fa fa-file-text-o d-block"></i>Feature &
										Examination
									</div>
									<div id="promotion_port" class="port bg-info col py-2"
										data-toggle="collapse" data-target="#complication_section">
										<i class="port-item fa fa-line-chart d-block"></i>Complication
									</div>
									<div id="degree_port" class="port bg-danger col py-2"
										data-toggle="collapse" data-target="#investigation_section">
										<i class="port-item fa fa-graduation-cap d-block"></i>Investigation/
										Result
									</div>
									<div id="degree_port" class="port bg-warning col py-2"
										data-toggle="collapse" data-target="#treatment_section">
										<i class="port-item fa fa-graduation-cap d-block"></i>Treatment
										Details
									</div>
									<div id="degree_port" class="port bg-secondary col py-2"
										data-toggle="collapse" data-target="#final_diag_section">
										<i class="port-item fa fa-graduation-cap d-block"></i>Final
										Diagnosis
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>

			<!-- Details Section -->

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


			<!-- Feature Section -->
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


			<!-- Complication Section -->
			<section id="complication_section"
				class="collapse section_body ${complication}">
				<!-- class="collapse" -->
				<div class="bg-info py-2 text-white text-center headings">Complications</div>
				<div class="form-body bg-light py-2 border text-center mx-1">
					<!-- *** 1. Pain Crisis *** -->
					<div class="form-group row mb-0 pb-0">
						<div class="col-md-12">
							<div class="form-group text-left">
								<label class="text-monospace col-md-6">History of
									painful crisis (in sickle cell disease patient) </label>
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
									<label class="text-monospace col-md-6 px-1">Number of
										pain crisis per year after starting Hydroxyurea</label>
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
										<label class="text-monospace col-md-6">Hbs Level at
											Time of Diagnosis</label>
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
										<label class="text-monospace col-md-6">Any other
											deficits</label>
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
										<label class="text-monospace col-md-6">Transient
											Ischemic Attack [TIA]</label>
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
										<label class="text-monospace col-md-6">Neuropathic
											Pain</label>
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
										<label class="text-monospace col-md-6">Other
											Neurological Abnormality </label>
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
										data-target="#renal_involvement_div"
										id="y_renal_involvement_id" value="true"
										path="complications.renalInvolvement" />
									<span class="mx-2"> Yes</span>
									<sf:radiobutton class="form-check-input ml-4"
										data-target="#renal_involvement_div"
										id="n_renal_involvement_id" value="false"
										path="complications.renalInvolvement" />
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
										<label class="text-monospace col-md-6">Decreased Urine Output</label>
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
											path="complications.bloodInUrine"
											placeholder="Blood In Urine">
											<sf:option value="true">Yes</sf:option>
											<sf:option value="false">No</sf:option>
										</sf:select>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group row text-left">
										<label class="text-monospace col-md-6">Other symptoms<span class="text-danger">?</span></label>
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
											path="complications.urineProtein"
											placeholder="Urine Protein">
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
											path="complications.bloodUrea"
											placeholder="Blood Urea" />
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group row text-left">
										<label class="text-monospace col-md-6">Serum Creatnine</label>
										<sf:input id="serum_creatnine_id"
											class="form-control form-control-sm col-md-5"
											path="complications.serumCreatnine"
											placeholder="Serum Creatnine" />
											
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group row text-left">
										<label class="text-monospace col-md-6">Serum albumin</label>
										<sf:select id="serum_albumin_id"
											class="form-control form-control-sm col-md-5"
											path="complications.serumAlbumin"
											placeholder="Serum Albumin">
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
											path="complications.dialysis"
											placeholder="Urine Protein">
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
											path="complications.aceInhibitors"
											placeholder="Ace Inhibitors">
											<sf:option value="true">Yes</sf:option>
											<sf:option value="false">No</sf:option>
										</sf:select>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group row text-left">
										<label class="text-monospace col-md-6">Swelling of Feet/Body Edema</label>
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
									<sf:radiobutton class="form-check-input mx-2"
										id="y_leg_ulcer_id" value="true"
										path="complications.legUlcer" />
									<span class="mx-2"> Yes</span>
									<sf:radiobutton class="form-check-input ml-4"
										id="n_leg_ulcer_id" value="false"
										path="complications.legUlcer" />
									<span class="mx-2">No</span>
								</div>
							</div>
						</div>
					</div>
					
					<!-- *** Hepatobillary involvement *** -->
					<div class="form-group row mt-2 mb-0 pb-0">
						<div class="col-md-12">
							<div class="form-group text-left">
								<label class="text-monospace col-md-6">Hepatobillary Involvement</label>
								<div class="form-check-inline col-md-5">
									<sf:radiobutton class="form-check-input mx-2"
										id="y_hepatobillary_involvement_id" value="true" data-target="hepatobillary_involvement_div"
										path="complications.hepatobillaryInvolvement" />
									<span class="mx-2"> Yes</span>
									<sf:radiobutton class="form-check-input ml-4"
										id="n_hepatobillary_involvement_id" value="false" data-target="hepatobillary_involvement_div"
										path="complications.hepatobillaryInvolvement" />
									<span class="mx-2">No</span>
								</div>
							</div>
						</div>
					</div>
					<div class="collapse border border-dark p-1 pt-3 mt-2 mx-auto"
						style="width: 90%" id="hepatobillary_involvement_div">
						<!-- 5.1 Hepatobillary involvement -Row-1 -->
						<div class="form-group row mb-0 pb-0">
								<div class="col-md-3">
									<div class="form-group row text-left">
										<label class="text-monospace col-md-6">Gall Stones</label>
										<sf:select id="gal_stones_id"
											class="form-control form-control-sm col-md-5"
											path="complications.gallstone"
											placeholder="Gal Stones">
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
										<label class="text-monospace col-md-6">S.Bilirubin (Direct)</label>
										<sf:input id="sBilirubini_direct_id"
											class="form-control form-control-sm col-md-5"
											path="complications.sBilirubinDirect"
											placeholder="S.Bilirubin (Direct)" />
									</div>
								</div>
							</div>
							<!-- 5.2 Hepatobillary involvement - Row - 2 -->
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
											path="complications.antiHAV"
											placeholder="Anti HAV">
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
											path="complications.antiHCV"
											placeholder="Anti HCV">
											<sf:option value="true">Positive</sf:option>
											<sf:option value="false">Negative</sf:option>
										</sf:select>
											
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group row text-left">
										<label class="text-monospace col-md-6">Hepatic Encephalopathy</label>
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
										data-target="#priapism_div"
										id="y_priapism_id" value="true"
										path="complications.priapism" />
									<span class="mx-2"> Yes</span>
									<sf:radiobutton class="form-check-input ml-4"
										data-target="#priapism_div"
										id="n_priapism_id" value="false"
										path="complications.priapism" />
									<span class="mx-2">No</span>
								</div>
							</div>
						</div>
					</div>
					<!-- Priapism div -->
					<div class="collapse border border-dark p-1 pt-3 mt-2 mx-auto"
						style="width: 90%" id="priapism_div">
						<!-- 6.1 Priapism Row-1  -->
						<div class="form-group row mb-0 pb-0">
								<div class="col-md-3">
									<div class="form-group row text-left">
										<label class="text-monospace col-md-6">Managed at Home</label>
										<sf:select id="managed_home_id"
											class="form-control form-control-sm col-md-5"
											path="complications.managedAtHome"
											placeholder="Managed At Home">
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
										<label class="text-monospace col-md-6">Intracavernosal Aspiration</label>
										<sf:input id="intracavernosal_aspiration_id"
											class="form-control form-control-sm col-md-5"
											path="complications.intracavernosalAspiration"
											placeholder="Intracavernosal Aspiration" />
											
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group row text-left">
										<label class="text-monospace col-md-6">Use of Alpha Agonist</label>
										<sf:input id="alpha_agonist_id"
											class="form-control form-control-sm col-md-5"
											path="complications.alphaAgonist"
											placeholder="Use of Alpha Agonist" />
									</div>
								</div>
							</div>
							<div class="form-group row mb-0 pb-0">
								<div class="col-md-3">
									<div class="form-group row text-left">
										<label class="text-monospace col-md-6">Exchange transfusion</label>
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
											path="complications.surgicalShunt"
											placeholder="Surgical Shunt">
											<sf:option value="true">Positive</sf:option>
											<sf:option value="false">Negative</sf:option>
										</sf:select>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group row text-left">
										<label class="text-monospace col-md-6">Erectile Dysfunction</label>
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
										<label class="text-monospace col-md-6">Time of Resolution of Priapism (Hours) </label>
										<sf:input id="resolution_priapism_id"
											class="form-control form-control-sm col-md-5"
											path="complications.resolutionOfPriapism"
											placeholder="Time of Resolution" />
									</div>
								</div>
							</div>
					</div>
				</div>
			</section>


			<!-- Lab Investigation/Result -->
			<section id="investigation_section"
				class="collapse section_body ${investigation}">
				<!-- class="collapse" -->
				<div id="test"
					class="bg-danger py-2 text-white text-center headings">Lab
					Investigations/Result</div>

				<!-- Inline Form To add contract details -->

				<div class="form-body bg-light py-2 border text-center"></div>
			</section>

			<!-- Treatment Details -->
			<section id="treatment_section"
				class="collapse section_body ${treatment}">
				<!-- class="collapse" -->
				<div id="test"
					class="bg-warning py-2 text-white text-center headings">Treatment
					Details</div>

				<!-- Inline Form To add contract details -->

				<div class="form-body bg-light py-2 border text-center"></div>
			</section>
			<!-- Final Diagnosis -->
			<section id="final_diag_section"
				class="collapse section_body ${finalDiag}">
				<!-- class="collapse" -->
				<div id="test"
					class="bg-secondary py-2 text-white text-center headings">Final
					Diagnosis</div>

				<!-- Inline Form To add contract details -->

				<div class="form-body bg-light py-2 border text-center"></div>
			</section>
		</sf:form>
		<footer id="footer"
			class="bg-dark text-white py-2 text-center fixed-bottom">
			Sir Ganga Ram Copyright <i class="fa fa-copyright"></i> 2019.
		</footer>
	</div>
	<script
		src="${pageContext.request.contextPath}/static_resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static_resources/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static_resources/js/bootstrap.min.js"></script>
	<!--<script src="js/navbar-fixed.js"></script>-->
	<script>
    $('.port').click(function(){
      $('.section_body').collapse('hide');
    });
    // code snippte to show on radio yes and hide on radio no
  
    // for pain crisis
    $('#y_pain_crisis_id').click(e=>{
		$('#crisis_div').collapse('show');
    });
    
    $('#n_pain_crisis_id').click(e=>{
		$('#crisis_div').collapse('hide');
    });
    
    // neuro abnormalities doppler 
   $("#y_neuro_abnormalities_id").click(e =>{
		$("#neuro_abnormalities_div").collapse('show');
     });
     
    $("#n_neuro_abnormalities_id").click(e=>{
		$("#neuro_abnormalities_div").collapse('hide');
    });
    
	// hide or show stroke div
    $("#y_stroke_id").click(e =>{
		$("#stroke_div").collapse('show');
     });
     
    $("#n_stroke_id").click(e=>{
		$("#stroke_div").collapse('hide');
    });
    
	// Hide and Show doppler div
    $("#y_doppler_id").click(e =>{
		$("#doppler_div").collapse('show');
     });
     
    $("#n_doppler_id").click(e=>{
		$("#doppler_div").collapse('hide');
    });


    // Hide or show renal involvement div
    $("#y_renal_involvement_id").click(e =>{
		$("#renal_involvement_div").collapse('show');
     });
     
    $("#n_renal_involvement_id").click(e=>{
		$("#renal_involvement_div").collapse('hide');
    });

  	 // Hide or show hepatobillaryinvolvement div
      $("#y_hepatobillary_involvement_id").click(e =>{
  		$("#hepatobillary_involvement_div").collapse('show');
       });
       
      $("#n_hepatobillary_involvement_id").click(e=>{
  		$("#hepatobillary_involvement_div").collapse('hide');
      });
  	
   // Hide or show renal involvement div
      $("#y_priapism_id").click(e =>{
  		$("#priapism_div").collapse('show');
       });
       
      $("#n_priapism_id").click(e=>{
  		$("#priapism_div").collapse('hide');
      }); 
   
    $('#zip').focusout(
        	function(){
        		var pin = this['value'];
        		var x = jQuery.ajax('https://api.postalpincode.in/pincode/'+pin).done(
        				function(response){
        	    			result = response[0]['PostOffice'];
        	    			obj = [];
        	    			for(var x = 0; x < result.length;x++){
        	        			obj[x] = result[x]['Name'];
        	    			}
        	    			//alert(obj);
        	    			$('#distt_style').text(result[0]['District']);
        	    			$('#dist').val(result[0]['District']);
        	    			// add area to data list.
        	    			var data = "";
        	    			$('#areaId').empty();
        	    			for(var index = 0; index < obj.length; index++){
        	    					data += "<option>"+obj[index]+"</option>";
        	    			}
        	    			$('#areaId').append(data);
        	    			//alert(data);
        				}		
     			);
     		}
    );
    // datatables scrollbar
  </script>
</body>
</html>
