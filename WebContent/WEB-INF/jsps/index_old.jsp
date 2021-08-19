<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.time.Period, java.time.LocalDate"%>
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
	
	<div class="mx-auto" style="width: 90%">
	<sf:form action="/" modelAttribute="patient_info">
		<!-- Header Section -->
		<header id="top-section">
			<div class="row no-gutters" style="margin-left: 0; margin-right:0">
				<%-- <div class="col-lg-2 col-md-3 text-center bg-light border align-items-center">
          <img src="${pageContext.request.contextPath}/static_resources/img/male_sample.jpg" class="border-warning img-fluid d-block m-auto" />
        </div> --%>
			
				<div class="col-lg-12 col-md-12">
					<!-- Top Section With patient Name Registration and other detail -->
					<div class="d-flex flex-column">
						<div id="social-media"
							class="d-flex flex-row justify-content-between align-items-center text-white bg-dark pr-5">
							<h2 class="display-4 bg-dark text-white text-left px-3">Sickle Cell Performa
							</h2>
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
							<div id="designation" class="text-white p-2">User Details</div>
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
								<div id="degree_port" class="port bg-danger col py-2"
									data-toggle="collapse" data-target="#treatment_section">
									<i class="port-item fa fa-graduation-cap d-block"></i>Treatment
									Details
								</div>
								<div id="degree_port" class="port bg-danger col py-2"
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

		<section id="details_section" class="collapse ${details}">
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
			      				<sf:input id="patientName_id" class="form-control form-control-sm" 
			      					name="patientName_name"  path="patientName"/>
							</div>
						</div>
						<div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Aadhar Number</label>
					      		<sf:input id="adharNumber_id" class="form-control form-control-sm" 
					      			path="adharNumber"/>
					    	</div>
					    </div>
                
						<div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace mr-5">Gender</label>
					      		<div class="form-check-inline">
		    						<sf:radiobutton class="form-check-input mx-2" id="y_gender_id" value="true" path="gender" /><span class="mx-2"> Yes</span> 
		    						<sf:radiobutton class="form-check-input ml-4"  id="n_gender_id" value="false" path="gender" /><span class="mx-2">No</span>
		    					</div>
					    	</div>
					    </div>
					    
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Religion</label>
					      		<sf:input id="religon_id" class="form-control form-control-sm" 
					      			path="socioDemo.religion"/>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Caste</label>
					      		<sf:input id="caste_id" class="form-control form-control-sm" 
					      			path="socioDemo.caste"/>
					    	</div>
					    </div>
					    
					</div>
					<div class="form-group row mb-0 pb-0">
						<div class="col-md-8">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Final Diagnosis</label>
					      		<sf:input id="diagnosis_id" class="form-control form-control-sm" 
					      			path="record.diagnosis"/>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Clinical Exam Date</label>
					      		<sf:input type="date" id="date_of_clinical_examination_id" class="form-control form-control-sm" 
					      			path="record.dateofClinicalExamination"/>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Record Date</label>
					      		<sf:input type="date" id="date_of_record_id" class="form-control form-control-sm" 
					      			path="record.dateofRecord"/>
					    	</div>
					    </div>
					    </div>
					    <div class="form-group row mb-0 pb-0">
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Consent Given</label>
					      		<div class="form-check-inline">
		    						<sf:radiobutton class="form-check-input mx-2" id="y_Consent_id" value="true" path="record.consent" /><span class="mx-2"> Yes</span> 
		    						<sf:radiobutton class="form-check-input ml-4"  id="n_Consent_id" value="false" path="record.consent" /><span class="mx-2">No</span>
		    					</div>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Assent Given</label>
					      		<div class="form-check-inline">
		    						<sf:radiobutton class="form-check-input mx-2 border border-primary"  id="y_Assent_id" value="true" path="record.assent" /><span class="mx-2"> Yes</span> 
		    						<sf:radiobutton class="form-check-input ml-4 border border-primary"  id="n_Assent_id" value="false" path="record.assent" /><span class="mx-2">No</span>
		    					</div>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Referred By</label>
					      		<sf:input id="referred_id" class="form-control form-control-sm" 
					      			path="record.referred"/>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Hosp Name</label>
					      		<sf:input id="hospital_name_id" class="form-control form-control-sm" 
					      			path="record.hospitalName"/>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">ICMR ID</label>
					      		<sf:input id="icmr_id_id" class="form-control form-control-sm" 
					      			path="record.icmrId"/>
					    	</div>
					    </div>
					    
					</div>
					</div>
					<div class="border_bottom">&nbsp;</div>
					<!-- *** Patient Relation *** -->
					<div class="display-5 mt-2 title border-bottom border-danger w-25 mx-auto mb-3"> Patient Relations</div>
					<div class="form-group row mb-0 pb-0">
						<div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Father Name</label>
					      		<sf:input id="father_id" class="form-control form-control-sm" name="father_name"  path="father.relationName"/>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Mother Name</label>
					      		<sf:input id="mother_id" class="form-control form-control-sm" name="mother_name"  path="mother.relationName"/>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Father Aadhar</label>
					      		<sf:input id="father_adhar_id" class="form-control form-control-sm" name="father_adhar"  path="father.relationAdharNumber"/>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Mother Aadhar</label>
					      		<sf:input id="mother_adhar_id" class="form-control form-control-sm" name="mother_adhar"  path="mother.relationAdharNumber"/>
					    	</div>
					    </div>
					</div>
					
					<!-- *** Contact *** -->
					<div class="border_bottom">&nbsp;</div>
					<div class="display-5 mt-2 title border-bottom border-danger w-25 mx-auto mb-3">Contact</div>
					<div>
					<div class="form-group row mb-0 pb-0">
						<div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Address</label>
					      		<sf:input id="permanent_address_id" class="form-control form-control-sm" 
					      		  path="permanentAddress.permanentAddress"/>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Country</label>
					      		<sf:input id="country_id" class="form-control form-control-sm" path="permanentAddress.countryName"/>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Birth Place</label>
					      		<sf:input id="city_birth_id" class="form-control form-control-sm" path="permanentAddress.cityOfBirth"/>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">District</label>
					      		<sf:input id="district_id" class="form-control form-control-sm"  path="permanentAddress.district"/>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">State</label>
					      		<sf:input id="state_id" class="form-control form-control-sm" path="permanentAddress.state"/>
					    	</div>
					    </div>
					</div>
					<div class="form-group row mb-0 pb-0">
						<div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Father Mobile</label>
					      		<sf:input id="mobile_no_father_id" class="form-control form-control-sm" 
					      		  path="patientContact.mobileNoFather"/>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Mother Mobile</label>
					      		<sf:input id="mobile_no_mother_id" class="form-control form-control-sm" path="patientContact.mobileNoMother"/>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Landline(with code)</label>
					      		<sf:input id="landline_number_id" class="form-control form-control-sm" 
					      			path="patientContact.landLineNumber"/>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Email</label>
					      		<sf:input id="email_id" class="form-control form-control-sm"  path="patientContact.email"/>
					    	</div>
					    </div>
					</div>
				</div>
				
				<div class="border_bottom">&nbsp;</div>
				<div class="display-5 mt-2 title border-bottom border-danger w-25 mx-auto mb-3">Socio Demographic Details</div>
				<div class="form-group row mb-0 pb-0">
					<div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Patient Edu</label>
					      		<sf:input id="patient_education_status_id" class="form-control form-control-sm"  path="socioDemo.patientEducationStatus"/>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Patient Occ</label>
					      		<sf:input id="patient_occupation" class="form-control form-control-sm"  path="socioDemo.patientOccupation"/>
					    	</div>
					    </div>
					    
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace mr-5">Tribal</label>
					      		<div class="form-check-inline">
		    						<sf:radiobutton class="form-check-input mx-2"  id="y_tribal_id" value="true" path="socioDemo.tribal" /><span class="mx-2"> Yes</span> 
		    						<sf:radiobutton class="form-check-input ml-4"  id="n_tribal_id" value="false" path="socioDemo.tribal" /><span class="mx-2">No</span>
		    					</div>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Non Tribal</label>
					      		<sf:input id="non_tribal_id" class="form-control form-control-sm"  path="socioDemo.nonTribal"/>
					    	</div>
					    </div>
					    </div>
					    <div class="form-group row mb-0 pb-0">
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Father Edu</label>
					      		<sf:input id="father_education_id" class="form-control form-control-sm"  path="father.relationEducation"/>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Father Occ</label>
					      		<sf:input id="father_occupation_id" class="form-control form-control-sm"  path="father.relationOccupation"/>
					    	</div>
					    </div>
					    
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Mother Edu</label>
					      		<sf:input id="mother_education_id" class="form-control form-control-sm"  path="mother.relationEducation"/>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Mother Occ</label>
					      		<sf:input id="mother_occupation_id" class="form-control form-control-sm"  path="mother.relationOccupation"/>
					    	</div>
					    </div>
					    <div class="col-md-2">
					    	<div class="form-group text-left">
					      		<label class="text-monospace">Monthly Family Inc</label>
					      		<sf:input id="mother_occupation_id" class="form-control form-control-sm"  path="socioDemo.monthlyIncome"/>
					    	</div>
					    </div>
				</div>
		</div>
		</section>


		<!-- Contract Section -->
		<section id="feature_section" class="collapse ${feature}">
			<!-- class="collapse" -->
			<div class="bg-success py-2 text-white text-center headings">Feature
				& Examination</div>
		</section>


		<!-- Promotion Section -->
		<section id="complication_section" class="collapse ${complication}">
			<!-- class="collapse" -->
			<div class="bg-info py-2 text-white text-center headings">Complications</div>
			<div class="form-body bg-light border text-center">	
			</div>
		</section>


		<!-- Degree Section -->
		<section id="investigation_section" class="collapse ${investigation}">
			<!-- class="collapse" -->
			<div id="test" class="bg-danger py-2 text-white text-center headings">Lab
				Investigations/Result</div>

			<!-- Inline Form To add contract details -->

			<div class="form-body bg-light py-2 border text-center">
				
				
			</div>
		</section>
		<!-- Degree Section -->
		<section id="treatment_section" class="collapse ${treatment}">
			<!-- class="collapse" -->
			<div id="test" class="bg-danger py-2 text-white text-center headings">Treatment Details</div>

			<!-- Inline Form To add contract details -->

			<div class="form-body bg-light py-2 border text-center">
				
				
			</div>
		</section>
		<!-- Degree Section -->
		<section id="final_diag_section" class="collapse ${finalDiag}">
			<!-- class="collapse" -->
			<div id="test" class="bg-danger py-2 text-white text-center headings">Final Diagnosis</div>

			<!-- Inline Form To add contract details -->

			<div class="form-body bg-light py-2 border text-center">
				
				
			</div>
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
      $('.collapse').collapse('hide');
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
