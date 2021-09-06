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
<link
	href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css"
	rel="stylesheet" />
</head>
<body id="home">
	<sf:form method="POST" action="save_data" modelAttribute="patient_info">
		<div class="mx-auto" style="width: 95%">

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
			<jsp:include page="treatment_details.jsp"></jsp:include>
			<jsp:include page="final_diagnosis.jsp"></jsp:include>
		</div>
		<div class="broder border-primary text-center mx-auto">
		<button type="submit" class="btn btn-secondary btn-sm w-50 m-0 text-center" id="submit_button">Submit</button>
		</div>
	</sf:form>
	<footer id="footer"
		class="bg-dark text-white py-2 text-center fixed-bottom">
		Sir Ganga Ram Copyright <i class="fa fa-copyright"></i> 2019.
	</footer>
	<script
		src="${pageContext.request.contextPath}/static_resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static_resources/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static_resources/js/bootstrap.min.js"></script>
	<!--<script src="js/navbar-fixed.js"></script>-->

	<script
		src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}static_resources/js/registration.js"></script>
	<script>
    $('.port').click(function(){
      $('.section_body').collapse('hide');
    });
    /*----------------- details field validations and js operations -------------------------------*/
    	$("#mobile_no_father_id").focusout(e=>{
			/* if(e.target.value.length != 10){
				alert("Not a valid number");
				$("#mobile_no_father_id").focus();
			}*/
			//this.focus();
        })
    /* ----------------------------- END ----------------------------------------------------------*/
    /* ---------------- Submit Button Code ------------------------ */
    	$("#submit_button").click(e=>{
			alert('hello');
       	})
    
    /* ----------------- Submit Button End Code ------------------ */
    // code snippte to show on radio yes and hide on radio no
  
  /*  -------  Javascript code for complication section ----------*/
  /*---------- Master Function for form validation ---------------*/
  	// On load checks
  	function disableDivContent(divId, disabled){
		$(divId).find('input').each(function(){
			$(this).attr('disabled',disabled);
		})
		$(divId).find('select').each(function(){
			$(this).attr('disabled',disabled);
		})
  	}

   	function disableClass(classId, disabled){
   		$(classId).attr('disabled',disabled);
    }

    function mainDivActiveTest(yDivId,nDivId,mainDivId){
    	if($(yDivId).is(':checked')){
			disabledDivContent(mainDivId,false);
        }
    	else if($(nDivId).is(':checked')){
			disableDivContent(mainDivId, true);
        };
    }
    
    function diactiveComponent(yDivId,nDivId,componentClass){
    	if($(yDivId).is(':checked')){
			disableClass(componentClass,false);
        }
    	else if($(nDivId).is(':checked')){
    		disableClass(componentClass,true);
        };
    }

    // on Event checks
    function enableDisableComponent(componentSelector, disabled){
		$(componentSelector).attr('disabled',disabled);
    }
    
    // on page load
    $(document).ready(e=>{
    	mainDivActiveTest('#y_pain_crisis_id','#n_pain_crisis_id','#crisis_div');
    	mainDivActiveTest('#y_neuro_abnormalities_id','#n_neuro_abnormalities_id','#neuro_abnormalities_div');
    	mainDivActiveTest('#y_renal_involvement_id','#n_renal_involvement_id','#renal_involvement_div');
    	mainDivActiveTest('#y_hepatobillary_involvement_id','#n_hepatobillary_involvement_id','#hepatobillary_involvement_div');
    	mainDivActiveTest('#y_priapism_id','#n_priapism_id','#priapism_div');
    	mainDivActiveTest('#y_splenic_cusis_id','#n_splenic_cusis_id','#splenic_cusis_div');
    	mainDivActiveTest('#y_aplastic_cusis_id','#n_aplastic_cusis_id','#aplastic_cusis_div');
    	mainDivActiveTest('#y_cardiac_involvement_id','#n_cardiac_involvement_id','#cardiac_involvement_div');
    	mainDivActiveTest('#y_eye_involvement_id','#n_eye_involvement_id','#eye_involvement_div');
    	mainDivActiveTest('#y_iron_overloaded_id','#n_iron_overloaded_id','#iron_overloaded_div');
    	mainDivActiveTest('#y_infection_history_id','#n_infection_history_id','#infection_history_div');
    	mainDivActiveTest('#y_stroke_id','#n_stroke_id','#stroke_div');
    	mainDivActiveTest('#y_doppler_id','#n_doppler_id','#doppler_div');

    	// Hematlogly Test - Sickling test dependency
    	diactiveComponent('#y_sickling_test_id','#n_sickling_test_id','.sickle_test_dep');
    	diactiveComponent('#y_hplc_id','#n_hplc_id','.hplc_dep');
    	diactiveComponent('#y_sickle_cell_disease_id','#n_sickle_cell_disease_id','.sickle_cell_disease_dep');
    	diactiveComponent('#y_alpha_thal_id','#n_alpha_thal_id','.alpha_thal_dep');
    	diactiveComponent('#y_hbh_id','#n_hbh_id','.hbh_dep');
    	diactiveComponent('#y_beta_thal_id','#n_beta_thal_id','.beta_thal_dep');
    	

    	// treatment details page
    	diactiveComponent('#y_mbt_id','#n_mbt_id','.mbt_dep');
    	diactiveComponent('#y_splenectomy_id','#n_splenectomy_id','.splenectomy_dep');
    	diactiveComponent('#y_treatment_transfusion_id','#n_treatment_transfusion_id','.treatment_transfusion_dept');
    	diactiveComponent('#y_treatment_hydroxyurea_id','#n_treatment_hydroxyurea_id','.treatment_hydroxyurea_dep');
    	diactiveComponent('#y_treatment_chelation_id','#n_treatment_chelation_id','.chelation_dep');
    	diactiveComponent('#y_final_ironoverload_id','#n_final_ironoverload_id','.ironoverload_dep');

    	// accute chest syndrom test.
    	$("#accute_chest_syndrom_id").val()
    });
    // for pain crisis
    $('#y_pain_crisis_id').click(e=>{
		$('#crisis_div').collapse('show');
		disableDivContent("#crisis_div",false);
    });
    
    $('#n_pain_crisis_id').click(e=>{
		$('#crisis_div').collapse('hide');
		disableDivContent("#crisis_div",true);
    });
    
    
    // neuro abnormalities doppler 
   $("#y_neuro_abnormalities_id").click(e =>{
		$("#neuro_abnormalities_div").collapse('show');
		disableDivContent("#neuro_abnormalities_div",false);
     });
     
    $("#n_neuro_abnormalities_id").click(e=>{
		$("#neuro_abnormalities_div").collapse('hide');
		disableDivContent("#neuro_abnormalities_div",true);
    });
    
	// hide or show stroke div
    $("#y_stroke_id").click(e =>{
		$("#stroke_div").collapse('show');
		disableDivContent("#stroke_div",false);
     });
     
    $("#n_stroke_id").click(e=>{
		$("#stroke_div").collapse('hide');
		disableDivContent("#stroke_div",true);
    });
    
	// Hide and Show doppler div
    $("#y_doppler_id").click(e =>{
		$("#doppler_div").collapse('show');
		disableDivContent("#doppler_div",false);
     });
     
    $("#n_doppler_id").click(e=>{
		$("#doppler_div").collapse('hide');
		disableDivContent("#doppler_div",true);
    });


    // Hide or show renal involvement div
    $("#y_renal_involvement_id").click(e =>{
		$("#renal_involvement_div").collapse('show');
		disableDivContent("#renal_involvement_div",false);
     });
     
    $("#n_renal_involvement_id").click(e=>{
		$("#renal_involvement_div").collapse('hide');
		disableDivContent("#renal_involvement_div",true);
    });

  	 // Hide or show hepatobillaryinvolvement div
      $("#y_hepatobillary_involvement_id").click(e =>{
  		$("#hepatobillary_involvement_div").collapse('show');
  		disableDivContent("#hepatobillary_involvement_div",false);
       });
       
      $("#n_hepatobillary_involvement_id").click(e=>{
  		$("#hepatobillary_involvement_div").collapse('hide');
  		disableDivContent("#hepatobillary_involvement_div",true);
      });
  	
   // Hide or show renal involvement div
      $("#y_priapism_id").click(e =>{
  		$("#priapism_div").collapse('show');
  		disableDivContent("#priapism_div",false);
       });
       
      $("#n_priapism_id").click(e=>{
  		$("#priapism_div").collapse('hide');
  		disableDivContent("#priapism_div",true);
      }); 


   // Hide or show Splenic Sequcstration Cusis
      $("#y_splenic_cusis_id").click(e =>{
  		$("#splenic_cusis_div").collapse('show');
  		disableDivContent("#splenic_cusis_div",false);
       });
       
      $("#n_splenic_cusis_id").click(e=>{
  		$("#splenic_cusis_div").collapse('hide');
  		disableDivContent("#splenic_cusis_div",true);
      }); 

   // Hide or show Aplastic Cusis div
      $("#y_aplastic_cusis_id").click(e =>{
  		$("#aplastic_cusis_div").collapse('show');
  		disableDivContent("#aplastic_cusis_div",false);
       });
       
      $("#n_aplastic_cusis_id").click(e=>{
  		$("#aplastic_cusis_div").collapse('hide');
  		disableDivContent("#aplastic_cusis_div",true);
      }); 
   // Hide or show Cardiact Involvement div
      $("#y_cardiac_involvement_id").click(e =>{
  		$("#cardiac_involvement_div").collapse('show');
  		disableDivContent("#cardiac_involvement_div",false);
       });
       
      $("#n_cardiac_involvement_id").click(e=>{
  		$("#cardiac_involvement_div").collapse('hide');
  		disableDivContent("#cardiac_involvement_div",true);
      }); 
   // Hide or show Eye Involvement div
      $("#y_eye_involvement_id").click(e =>{
  		$("#eye_involvement_div").collapse('show');
  		disableDivContent("#eye_involvement_div",false);
       });
       
      $("#n_eye_involvement_id").click(e=>{
  		$("#eye_involvement_div").collapse('hide');
  		disableDivContent("#eye_involvement_div",true);
      }); 

   // Hide or show Iron overloaded div
      $("#y_iron_overloaded_id").click(e =>{
  		$("#iron_overloaded_div").collapse('show');
  		disableDivContent("#iron_overloaded_div",false);
       });
       
      $("#n_iron_overloaded_id").click(e=>{
  		$("#iron_overloaded_div").collapse('hide');
  		disableDivContent("#iron_overloaded_div",true);
      }); 

   // Hide or show History of Infection div
      $("#y_infection_history_id").click(e =>{
  		$("#infection_history_div").collapse('show');
  		disableDivContent("#infection_history_div",false);
       });
       
      $("#n_infection_history_id").click(e=>{
  		$("#infection_history_div").collapse('hide');
  		disableDivContent("#infection_history_div",true);
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
     
     
    /* ---------------  Complication Section Code Ends -------------- */
    
    /* ---------------  LAB Investigation Code ---------------------- */
    $("#y_hplc_id").on("click", e=>{
		$("#hplc_finding_lable_id").removeClass("text-primary");
		$("#hplc_finding_id").attr("disabled",false);
    });
    $("#n_hplc_id").on("click", e=>{
    	$("#hplc_finding_lable_id").addClass("text-primary");
		$("#hplc_finding_id").attr("disabled",true);
    })
    // sickling cell test
     $("#y_sickling_test_id").on("click", e=>{
		$("#sickling_result_lable_id").removeClass("text-primary");
		$("#sickling_result_id").attr("disabled",false);
    });
    $("#n_sickling_test_id").on("click", e=>{
    	$("#sickling_result_lable_id").addClass("text-primary");
		$("#sickling_result_id").attr("disabled",true);
    })
    
    // enable or disable sickle cell test results in microbiology lab
    // For alpha thal
    $("#y_alpha_thal_id").on("click",e=>{
		$(".alpha_thal_dep").attr("disabled",false);
    })
    $("#n_alpha_thal_id").on("click",e=>{
    	$(".alpha_thal_dep").attr("disabled",true);
    })
    
    // For beta thal
    $("#y_sickle_cell_disease_id").on("click",e=>{
		$(".sickle_cell_disease_dep").attr("disabled",false);
    })
    $("#n_sickle_cell_disease_id").on("click",e=>{
    	$(".sickle_cell_disease_dep").attr("disabled",true);
    })
    
    //
     $("#y_hbh_id").on("click",e=>{
		$(".hbh_dep").attr("disabled",false);
    })
    $("#n_hbh_id").on("click",e=>{
    	$(".hbh_dep").attr("disabled",true);
    })
    //
     $("#y_beta_thal_id").on("click",e=>{
		$(".beta_thal_dep").attr("disabled",false);
    })
    $("#n_beta_thal_id").on("click",e=>{
    	$(".beta_thal_dep").attr("disabled",true);
    })
    
    // treatment details
    $("#y_mbt_id").on("click",e=>{
		$(".mbt_dep").attr("disabled",false);
    })
    $("#n_mbt_id").on("click",e=>{
    	$(".mbt_dep").attr("disabled",true);
    })
    
    // splenectomy
     $("#y_splenectomy_id").on("click",e=>{
		$(".splenectomy_dep").attr("disabled",false);
    })
    $("#n_splenectomy_id").on("click",e=>{
    	$(".splenectomy_dep").attr("disabled",true);
    })
    
    // transfusion
    $("#y_treatment_transfusion_id").on("click",e=>{
		$(".treatment_transfusion_dept").attr("disabled",false);
    })
    
    $("#n_treatment_transfusion_id").on("click",e=>{
    	$(".treatment_transfusion_dept").attr("disabled",true);
    })
    
    // hydroxy urea
    $("#y_treatment_hydroxyurea_id").on("click",e=>{
		$(".treatment_hydroxyurea_dep").attr("disabled",false);
    })
    
    $("#n_treatment_hydroxyurea_id").on("click",e=>{
    	$(".treatment_hydroxyurea_dep").attr("disabled",true);
    })
    
     // Chelation
    $("#y_treatment_chelation_id").on("click",e=>{
		$(".chelation_dep").attr("disabled",false);
    })
    
    $("#n_treatment_chelation_id").on("click",e=>{
    	$(".chelation_dep").attr("disabled",true);
    })
    
    // final diagnosis
    $("#y_final_ironoverload_id").on("click",e=>{
		$(".ironoverload_dep").attr("disabled",false);
    })
    
    $("#n_final_ironoverload_id").on("click",e=>{
    	$(".ironoverload_dep").attr("disabled",true);
    })
/**/
    $("document").ready(e =>{
        var values= [
				{	"id":"HbC disease", 
					"text":"<div>HbC disease ( &alpha; 2&beta;2 <su>6 Lys</su>, &alpha; 2 &beta;2 <sup>6 Lys</sup> )</div>",
					"html":"<div>HbC disease ( &alpha; 2&beta;2 <su>6 Lys</su>, &alpha; 2 &beta;2 <sup>6 Lys</sup> )</div>",
					"title":"HbC disease"
				}
        ];
        
    	$("#sickle_cell_disease_type").select2({
        	placeholder: "select an option",
			data : values,
			escapeMarkup: function(markup) {
			    return markup;
			},
			templateResult: function(data) {
			    return data.html;
			},
			templateSelection: function(data) {
			    return data.text;
			}
        });
    })
    
    
    
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
