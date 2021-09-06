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
									<label class="text-monospace">Registration No<sup class="text-danger">*</sup></label>
									<sf:input class="form-control form-control-sm"
										id="patient_registration_number" path="registrationNumber" placeholder = "Registration Number"/>
									<sf:errors path="registrationNumber" cssClass="error"/>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Patient Name</label>
									<sf:input id="patientName_id"
										class="form-control form-control-sm" name="patientName_name"
										path="patientName" placeholder = "Patient Name"/>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Aadhar Number</label>
									<sf:input id="adharNumber_id"
										class="form-control form-control-sm" path="adharNumber" placeholder = "Aadhar Number" />
								</div>
							</div>

							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace mr-5">Gender</label>
									<sf:select id="gender_id"
						class="form-control form-control-sm"
						path="gender">
						<sf:option value="Male">Male</sf:option>
						<sf:option value="Female">Female</sf:option>
						<sf:option value="Transgender">Transgender/Not Known</sf:option>
						</sf:select>
								</div>
							</div>

							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Religion</label>
									<sf:select id="religion_id"
						class="form-control form-control-sm"
						path="socioDemo.religion" placeholder = "Religion">
						<sf:option value=""></sf:option>
						<c:forEach var="item" items="${religion}">
							<sf:option value="${item.id}">${item.description}</sf:option>
						</c:forEach>
						</sf:select>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Caste</label>
									<sf:select id="caste_id" class="form-control form-control-sm"
										path="socioDemo.caste" >
										<sf:option value=""></sf:option>
										<sf:option value="Schedule Caste">Schedule Caste</sf:option>
										<sf:option value="Schedule Tribe">Schedule Tribe</sf:option>
										<sf:option value="Others">Other</sf:option>
									</sf:select>
								</div>
							</div>

						</div>
						<div class="form-group row mb-0 pb-0">
							<div class="col-md-8">
								<div class="form-group text-left">
									<label class="text-monospace">Final Diagnosis</label>
									<sf:input id="diagnosis_id"
										class="form-control form-control-sm"
										path="record.finalDiagnosis" placeholder="Final Diagnosis"/>
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
									<sf:select id="referred_id" class="form-control form-control-sm"
										path="record.referred" >
											<sf:option value=""></sf:option>
											<c:forEach var="item" items="${referred}">
											<sf:option value="${item.description}">${item.description}</sf:option>
										</c:forEach>
									</sf:select>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Hosp Name</label>
									<sf:input id="hospital_name_id"
										class="form-control form-control-sm"
										path="record.hospitalName" placeholder="Hospital Name"/>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">ICMR ID</label>
									<sf:input id="icmr_id_id" class="form-control form-control-sm"
										path="record.icmrId" placeholder="ICMR ID"/>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Diagnosis</label>
									<sf:input id="icmr_id_id" class="form-control form-control-sm"
										path="record.diagnosis" placeholder="Diagnosis"/>
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
									name="father_name" path="father.relationName" placeholder="Father Name"/>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Mother Name</label>
								<sf:input id="mother_id" class="form-control form-control-sm"
									name="mother_name" path="mother.relationName" placeholder="Mother Name"/>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Father Aadhar</label>
								<sf:input id="father_adhar_id"
									class="form-control form-control-sm" name="father_adhar"
									path="father.relationAdharNumber" placeholder="Father Aadhar"/>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Mother Aadhar</label>
								<sf:input id="mother_adhar_id"
									class="form-control form-control-sm" name="mother_adhar"
									path="mother.relationAdharNumber" placeholder="Mother Aadhar"/>
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
										path="permanentAddress.permanentAddress" placeholder="Address"/>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Country</label>
									<sf:input id="country_id" class="form-control form-control-sm"
										path="permanentAddress.countryName" placeholder="Country"/>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Birth Place</label>
									<sf:input id="city_birth_id"
										class="form-control form-control-sm"
										path="permanentAddress.cityOfBirth" placeholder="Birth Place"/>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">District</label>
									<sf:input id="district_id" class="form-control form-control-sm"
										path="permanentAddress.district" placeholder="District"/>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">State</label>
									<sf:input id="state_id" class="form-control form-control-sm"
										path="permanentAddress.state" placeholder="State"/>
								</div>
							</div>
						</div>
						<div class="form-group row mb-0 pb-0">
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Father Mobile</label>
									<sf:input id="mobile_no_father_id"
										class="form-control form-control-sm"
										path="patientContact.mobileNoFather" placeholder="Father Mobile"/>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Mother Mobile</label>
									<sf:input id="mobile_no_mother_id"
										class="form-control form-control-sm"
										path="patientContact.mobileNoMother" placeholder="Mother Mobile"/>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Landline(with code)</label>
									<sf:input id="landline_number_id"
										class="form-control form-control-sm"
										path="patientContact.landLineNumber" placeholder="Landline"/>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group text-left">
									<label class="text-monospace">Email</label>
									<sf:input id="email_id" class="form-control form-control-sm"
										path="patientContact.email" placeholder="Email"/>
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
								<sf:select id="patient_education_status_id"
									class="form-control form-control-sm"
									path="socioDemo.patientEducationStatus">
								<sf:option value=""></sf:option>
								<c:forEach var="item" items="${education}">
									<sf:option value="${item.description}">${item.description}</sf:option>
								</c:forEach>
							
								</sf:select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Patient Occ</label>
								<sf:select id="patient_occupation"
									class="form-control form-control-sm"
									path="socioDemo.patientOccupation" placeholder="Patient Occupation">
									<sf:option value=""></sf:option>
									<c:forEach var="item" items="${occupation}">
									<sf:option value="${item.description}">${item.description}</sf:option>
								</c:forEach>
								</sf:select>
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
								<sf:select id="non_tribal_id"
									class="form-control form-control-sm" path="socioDemo.nonTribal">
									<sf:option value=""></sf:option>
									<c:forEach var="item" items="${nonTribal}">
									<sf:option value="${item.id}">${item.description}</sf:option>
									</c:forEach>
								</sf:select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Monthly Family Inc</label>
								<sf:select id="mother_occupation_id"
									class="form-control form-control-sm"
									path="socioDemo.monthlyIncome">
									<sf:option value=""></sf:option>
									<c:forEach var="item" items="${monthlyIncome}">
									<sf:option value="${item.id}">${item.description}</sf:option>
									</c:forEach>
								</sf:select>
							</div>
						</div>
					</div>
					<div class="form-group row mb-0 pb-0">
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Father Edu</label>
								<sf:select id="father_education_id"
									class="form-control form-control-sm"
									path="father.relationEducation">
									<sf:option value=""></sf:option>
									<c:forEach var="item" items="${education}">
										<sf:option value="${item.description}">${item.description}</sf:option>
									</c:forEach>	
								</sf:select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Father Occ</label>
								<sf:select id="father_occupation_id"
									class="form-control form-control-sm"
									path="father.relationOccupation">
									<sf:option value=""></sf:option>
									<c:forEach var="item" items="${occupation}">
									<sf:option value="${item.description}">${item.description}</sf:option>
								</c:forEach>	
								</sf:select>
							</div>
						</div>

						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Mother Edu</label>
								<sf:select id="mother_education_id"
									class="form-control form-control-sm"
									path="mother.relationEducation">
									<sf:option value=""></sf:option>
									<c:forEach var="item" items="${education}">
										<sf:option value="${item.description}">${item.description}</sf:option>
									</c:forEach>	
								</sf:select>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group text-left">
								<label class="text-monospace">Mother Occ</label>
								<sf:select id="mother_occupation_id"
									class="form-control form-control-sm"
									path="mother.relationOccupation">
									<sf:option value=""></sf:option>
										<c:forEach var="item" items="${occupation}">
										<sf:option value="${item.description}">${item.description}</sf:option>
								</c:forEach>		
								</sf:select>
							</div>
						</div>

					</div>
				</div>
			</section>

