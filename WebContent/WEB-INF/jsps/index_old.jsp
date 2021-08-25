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
										<i class="port-item fa fa-times-rectangle-o d-block"></i>Complication
									</div>
									<div id="degree_port" class="port bg-danger col py-2"
										data-toggle="collapse" data-target="#investigation_section">
										<i class="port-item fa fa-heartbeat d-block"></i>Investigation/
										Result
									</div>
									<div id="degree_port" class="port bg-warning col py-2"
										data-toggle="collapse" data-target="#treatment_section">
										<i class="port-item fa fa-medkit d-block"></i>Treatment
										Details
									</div>
									<div id="degree_port" class="port bg-secondary col py-2"
										data-toggle="collapse" data-target="#final_diag_section">
										<i class="port-item fa fa-stethoscope d-block"></i>Final
										Diagnosis
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>

			<!-- Details Section -->
			<jsp:include page="details.jsp"></jsp:include>
			
			<!-- Feature Section -->
			<jsp:include page="feature.jsp"></jsp:include>
			
			<!-- Complication Section -->
			<jsp:include page="complication.jsp"></jsp:include>
			
			
			<!-- Lab Investigation/Result -->
			<jsp:include page="lab_investigation.jsp"></jsp:include>

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
  
  /*  -------  Javascript code for complication section ----------*/
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


   // Hide or show Splenic Sequcstration Cusis
      $("#y_splenic_cusis_id").click(e =>{
  		$("#spl_blood_transfusion_div").collapse('show');
       });
       
      $("#n_splenic_cusis_id").click(e=>{
  		$("#spl_blood_transfusion_div").collapse('hide');
      }); 

   // Hide or show Aplastic Cusis div
      $("#y_aplastic_cusis_id").click(e =>{
  		$("#apl_blood_transfusion_div").collapse('show');
       });
       
      $("#n_aplastic_cusis_id").click(e=>{
  		$("#apl_blood_transfusion_div").collapse('hide');
      }); 
   // Hide or show Cardiact Involvement div
      $("#y_cardiac_involvement_id").click(e =>{
  		$("#cardiac_involvement_div").collapse('show');
       });
       
      $("#n_cardiac_involvement_id").click(e=>{
  		$("#cardiac_involvement_div").collapse('hide');
      }); 
   // Hide or show Eye Involvement div
      $("#y_eye_involvement_id").click(e =>{
  		$("#eye_involvement_div").collapse('show');
       });
       
      $("#n_eye_involvement_id").click(e=>{
  		$("#eye_involvement_div").collapse('hide');
      }); 

   // Hide or show Iron overloaded div
      $("#y_iron_overloaded_id").click(e =>{
  		$("#iron_overloaded_div").collapse('show');
       });
       
      $("#n_iron_overloaded_id").click(e=>{
  		$("#iron_overloaded_div").collapse('hide');
      }); 

   // Hide or show History of Infection div
      $("#y_infection_history_id").click(e =>{
  		$("#infection_history_div").collapse('show');
       });
       
      $("#n_infection_history_id").click(e=>{
  		$("#infection_history_div").collapse('hide');
      }); 

    $("document").ready(e =>{
		$(".vaccine, .culture").attr("disabled","disabled");
    })
    
    // Enable of disable inputs in history of infection div
    $("#y_vaccine_id").on("click", e=>{
    	$(".vaccine-lable").removeClass("text-danger")
		$(".vaccine").attr("disabled",false);
    })
    
    $("#n_vaccine_id").on("click", e=>{
		$(".vaccine").attr("disabled",true);
		$(".vaccine-lable").addClass("text-danger");
    })
    
    
    $("#y_blood_culture_id").on("click", e=>{
    	$(".culture-lable").removeClass("text-danger")
		$(".culture").attr("disabled",false);
    })
    
    $("#n_blood_culture_id").on("click", e=>{
		$(".culture").attr("disabled",true);
		$(".culture-lable").addClass("text-danger");
    })
     
     
    /* ---------------  Complication Section Code Ends -------------------*/
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
