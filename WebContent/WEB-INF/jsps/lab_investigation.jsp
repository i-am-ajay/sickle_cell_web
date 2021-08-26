<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.time.Period, java.time.LocalDate"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- Hematology Tests -->
<section id="investigation_section"
	class="collapse section_body ${investigation}">
	<!-- class="collapse" -->
	<div id="investigation_id"
		class="bg-danger py-2 text-white text-center headings">Lab
		Investigations/Result</div>

	<div class="form-body bg-light py-2 border text-center">
		<div>
			<h4>Hematology Test</h4>
			<div class="">
				<!-- *** Hemat Div -  Row-1 *** -->
				<div class="form-group row mb-0 pb-0">
					<!-- Left column -->
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace">WBC</label>
							<div class="input-group input-group-sm mb-2">
								<sf:input class="form-control form-control-sm" placeholder="WBC"
									id="wbc_id" path="hematInvestigation.wbc" />
								<div class="input-group-append">
									<div class="input-group-text">
										x 10<sup>3</sup>/µl
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<div class="input-group input-group-sm mb-2">
								<label class="text-monospace">HB</label>
								<div class="input-group input-group-sm mb-2">
									<sf:input id="patientName_id"
										class="form-control form-control-sm" placeholder="HB"
										path="hematInvestigation.hb" />
									<div class="input-group-append border-danger">
										<div class="input-group-text">g/dl</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace">MCV</label>
							<div class="input-group input-group-sm mb-2">
								<sf:input id="mcv_id" placeholder="MCV"
									class="form-control form-control-sm"
									path="hematInvestigation.mcv" />
								<div class="input-group-append">
									<div class="input-group-text">fl</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace mr-5">MCH</label>
							<div class="input-group input-group-sm mb-2">
								<sf:input id="mch_id" placeholder="MCH"
									class="form-control form-control-sm"
									path="hematInvestigation.mch" />
								<div class="input-group-append">
									<div class="input-group-text">Pg</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace">MCHC</label>
							<div class="input-group input-group-sm mb-2">
								<sf:input id="mchc_id" class="form-control form-control-sm"
									path="hematInvestigation.mchc" />
								<div class="input-group-append">
									<div class="input-group-text">g/dl</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace">RBS Count</label>
							<div class="input-group input-group-sm mb-2">
								<sf:input id="rbs_count_id" class="form-control form-control-sm"
									path="hematInvestigation.rbsCount" />
								<div class="input-group-append">
									<div class="input-group-text">
										x 10<sup>6</sup>/µl
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- *** Row 2 *** -->
				<div class="form-group row mb-0 pb-0">
					<!-- Left column -->
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace">RDW</label>
							<div class="input-group input-group-sm mb-2">
								<sf:input class="form-control form-control-sm" placeholder="RDW"
									id="wbc_id" path="hematInvestigation.rdw" />
								<div class="input-group-append">
									<div class="input-group-text px-2">%</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<div class="input-group input-group-sm mb-2">
								<label class="text-monospace">PLTs</label>
								<div class="input-group input-group-sm mb-2">
									<sf:input id="plts" class="form-control form-control-sm"
										placeholder="PLTs" path="hematInvestigation.plts" />
									<div class="input-group-append border-danger">
										<div class="input-group-text">
											x 10<sup>3</sup>/µl
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace">Rectic Count</label>
							<div class="input-group input-group-sm mb-2">
								<sf:input id="rectic_count_id" placeholder="Rectic Count"
									class="form-control form-control-sm"
									path="hematInvestigation.recticCount" />
								<div class="input-group-append">
									<div class="input-group-text px-2">%</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace">HbA</label>
							<sf:input id="hba_id" class="form-control form-control-sm"
								path="hematInvestigation.hba" />
						</div>
					</div>

					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace">HbF (N<2%) </label>
							<sf:input id="hbf_id" class="form-control form-control-sm"
								path="hematInvestigation.hbf" />
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace">HbA2 (N<3.5%) </label>
							<sf:input id="hba2_id" class="form-control form-control-sm"
								path="hematInvestigation.hba2" />
						</div>
					</div>
				</div>

				<!-- *** Row 3 *** -->
				<div class="form-group row mb-0 pb-0">
					<!-- Left column -->
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace">Hbs</label>
							<sf:input class="form-control form-control-sm" placeholder="hbs"
								id="wbc_id" path="hematInvestigation.hbs" />
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<div class="input-group input-group-sm mb-2">
								<label class="text-monospace">Sickling Test</label>
								<div class="form-check-inline">
									<sf:radiobutton class="form-check-input mx-2"
										id="y_sickling_test_id" value="true"
										path="hematInvestigation.sicklingTest" />
									<span class="mx-2"> Yes</span>
									<sf:radiobutton class="form-check-input ml-4"
										id="n_sickling_test_id" value="false"
										path="hematInvestigation.sicklingTest" />
									<span class="mx-2">No</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace text-primary"
								id="sickling_result_lable_id">Sickling Test Result</label>
							<sf:select id="sickling_result_id"
								class="form-control form-control-sm"
								path="hematInvestigation.sicklingTestResult"
								placeholder="Sickling Test Result">
								<sf:option value="true">Positive</sf:option>
								<sf:option value="false">Negative</sf:option>
							</sf:select>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace">Impression</label>
							<sf:input id="hba_id" class="form-control form-control-sm"
								path="hematInvestigation.impression" />
						</div>
					</div>

					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace">Unstable Haemoglobin</label>
							<sf:input id="hbf_id" class="form-control form-control-sm"
								path="hematInvestigation.unstableHemoglobin" />
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace mr-5">Red Cell Morphology</label>
							<sf:select id="red_cell_morphology_id"
								placeholder="Rec Cell Morphology"
								class="form-control form-control-sm"
								path="hematInvestigation.redCellMorphology">
								<sf:option value="Hypochromic">Hypochromic</sf:option>
								<sf:option value="Microcytic">Microcytic</sf:option>
								<sf:option value="Anisocytosis">Anisocytosis</sf:option>
								<sf:option value="Poililocytosis">Poililocytosis</sf:option>
								<sf:option value="Target Cell">Target Cell</sf:option>
								<sf:option value="Other">Other</sf:option>
							</sf:select>
						</div>
					</div>
				</div>
				<!-- *** Row-3 -->
				<div class="form-group row mb-0 pb-0">
					<!-- Left column -->
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace">Variant HB <sup
								style="font-size: .5em">(% retention time based detection)</sup></label>
							<sf:input class="form-control form-control-sm"
								placeholder="HB retention time %" id="hb_retention_time_id"
								path="hematInvestigation.hbRetentionTime" />
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace">Hbh Inclusion</label>
							<sf:input class="form-control form-control-sm"
								placeholder="Hbh Inclusion" id="hbh_inclusion_id"
								path="hematInvestigation.hbhInclusion" />
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace">HPLC</label><br />
							<div class="form-check-inline mx-2">
								<sf:radiobutton class="form-check-input mx-2" id="y_hplc_id"
									value="true" path="hematInvestigation.hplcBasedDetection" />
								<span class="mx-2"> Yes</span>
								<sf:radiobutton class="form-check-input ml-4" id="n_hplc_id"
									value="false" path="hematInvestigation.hplcBasedDetection" />
								<span class="mx-2">No</span>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group text-left">
							<label class="text-monospace text-primary"
								id="hplc_finding_lable_id">HPLC Findings</label>
							<sf:input class="form-control form-control-sm"
								placeholder="HPLC Findings" id="hplc_finding_id"
								path="hematInvestigation.hplcDetectionResult" disabled="true" />
						</div>
					</div>
				</div>

			</div>
			<div class="border_bottom">&nbsp;</div>
			<div>
				<h4>Microbiology Test</h4>
			</div>
			<div class="">
				<!-- *** Hemat Div -  Row-1 *** -->
				<div class="form-group row mb-0 pb-0">
					<!-- Left column -->
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace">For Sickle Cell Disease</label><br />
							<div class="form-check-inline mx-2">
								<sf:radiobutton class="form-check-input mx-2"
									id="y_sickle_cell_disease_id" value="true"
									path="molecularStudies.sickleCellDisease" />
								<span class="mx-2"> Yes</span>
								<sf:radiobutton class="form-check-input ml-4"
									id="n_sickle_cell_disease_id" value="false"
									path="molecularStudies.sickleCellDisease" />
								<span class="mx-2">No</span>
							</div>
						</div>
					</div>

					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace mr-5">Disease Type</label>
							<sf:select id="sickle_cell_disease_type_id_id"
								placeholder="Rec Cell Morphology"
								class="form-control form-control-sm"
								path="molecularStudies.sickleCellDiseaseType">
								<sf:option value="Hb SS">Hb SS ( &alpha;2&beta;2<sup>6
										val</sup>, &alpha;2&beta;2<sup>6 val</sup> )</sf:option>
								<sf:option value="HbAS">HbAS( &alpha;2&beta;2, &alpha;2&beta;2<span
										class="" style="vertical-align: sup; font-size: .5em;">6val</span> )  ( Sickle cell trait )</sf:option>
								<sf:option value="HbSC">HbSC ( &alpha;2&beta;2<sup>6
										val</sup>,  &alpha;2&beta;2<sup>6 Lys</sup> )</sf:option>
								<sf:option value="HbS">HbS  &beta; Thalassemia</sf:option>
								<sf:option value="HbSO Arab">HbSO Arab ( &alpha;2&beta;2<sup>6
										val</sup>, &alpha;2&beta;2<sup>121 Lys</sup> )</sf:option>
								<sf:option value="HbSD Disease">HbSD Disease ( &alpha;2&beta;2<sup>6
										val</sup>, &alpha;2&beta;2<sup>121 Glu</sup> )</sf:option>
								<sf:option value="HbSE">HbSE ( &alpha;2&beta;2 <sup>6
										val, &alpha;2&beta;2 <sup>26 Lys</sup> ) 
								</sf:option>
								<sf:option value="HbC disease">HbC disease ( &alpha; 2&beta;2 <su>6
									Lys</su>, &alpha; 2 &beta;2 <sup>6 Lys</sup> )</sf:option>
								<sf:option value="Other Variant">Other Variant</sf:option>
							</sf:select>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace text-primary"
								id="hplc_finding_lable_id">Other Variants Type</label>
							<sf:input class="form-control form-control-sm"
								placeholder="Other Variants" id="other_variants_id"
								path="molecularStudies.otherVariants" disabled="true" />
						</div>
					</div>

					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace">Alpha Thal</label><br />
							<div class="form-check-inline mx-2">
								<sf:radiobutton class="form-check-input mx-2"
									id="y_alpha_thal_id" value="true"
									path="molecularStudies.alphaThalTest" />
								<span class="mx-2"> Yes</span>
								<sf:radiobutton class="form-check-input ml-4"
									id="n_alpha_thal_id" value="false"
									path="molecularStudies.alphaThalTest" />
								<span class="mx-2">No</span>
							</div>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace mr-5">Alpha Thal Result</label>
							<sf:select id="alpha_thal_result_id"
								placeholder="Alpha Thal Result"
								class="form-control form-control-sm"
								path="molecularStudies.alphaThalTestResult">
								<sf:option value="1">&alpha;&alpha;/ &alpha;&alpha;</sf:option>
								<sf:option value="2">&alpha;&alpha;/ &alpha;&alpha;3.7</sf:option>
								<sf:option value="3">-&alpha;3.7/-&alpha;3.7</sf:option>
								<sf:option value="4">&alpha;&alpha;/ -&alpha;4.2</sf:option>
								<sf:option value="5">-&alpha;4.2/-&alpha;4.2</sf:option>
								<sf:option value="6">&alpha;&alpha;/ --SA</sf:option>
								<sf:option value="7">&alpha;&alpha;/ --SEA</sf:option>
								<sf:option value="HbC disease">&alpha;&alpha;/ -MED</sf:option>
								<sf:option value="Other Variant">Other</sf:option>
							</sf:select>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace text-primary"
								id="alpha_thal_other_variant_result_id">Other Variants
								Type</label>
							<sf:input class="form-control form-control-sm"
								placeholder="Other Variants" id="alpha_thal_other_result_id"
								path="molecularStudies.alphaThalOtherResult" disabled="true" />
						</div>
					</div>
				</div>
				<!-- Molecular Test Row-2  -->
				<div class="form-group row mt-2 mb-0 pb-0">
					<!-- Left column -->
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace">HBH Done</label><br />
							<div class="form-check-inline mx-2">
								<sf:radiobutton class="form-check-input mx-2" id="y_hbh_id"
									value="true" path="molecularStudies.hbh" />
								<span class="mx-2"> Yes</span>
								<sf:radiobutton class="form-check-input ml-4" id="n_hbh_id"
									value="false" path="molecularStudies.hbh" />
								<span class="mx-2">No</span>
							</div>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace mr-5">HBH Result</label>
							<sf:select id="alpha_thal_result_id"
								placeholder="Alpha Thal Result"
								class="form-control form-control-sm"
								path="molecularStudies.alphaThalTestResult">
								<sf:option value="1">-&alpha;3.7/ --SA</sf:option>
								<sf:option value="2">-&alpha;3.7/ --SEA</sf:option>
								<sf:option value="3">-&alpha;4.2/ --SA</sf:option>
								<sf:option value="4">Other</sf:option>
							</sf:select>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace">Beta Thal Done</label><br />
							<div class="form-check-inline mx-2">
								<sf:radiobutton class="form-check-input mx-2"
									id="y_beta_thal_id" value="true"
									path="molecularStudies.betaThal" />
								<span class="mx-2"> Yes</span>
								<sf:radiobutton class="form-check-input ml-4"
									id="n_beta_thal_id" value="false"
									path="molecularStudies.betaThal" />
								<span class="mx-2">No</span>
							</div>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace mr-5">Beta Thal Result</label>
							<sf:select id="beta_thal_result_id"
								placeholder="Alpha Thal Result"
								class="form-control form-control-sm"
								path="molecularStudies.betaThalTestResult">
								<sf:option value="1">IVS 1 nt 5G&#8594;C</sf:option>
								<sf:option value="2">CD 15G A</sf:option>
								<sf:option value="3">CD 41/42-CTTT</sf:option>
								<sf:option value="4">F/S 8/9+ G</sf:option>
								<sf:option value="1">CD 30 C&#8594;C</sf:option>
								<sf:option value="2">619 BP Deletion</sf:option>
								<sf:option value="3">IVS 1 nt G&#8594;1</sf:option>
								<sf:option value="4">Other</sf:option>
							</sf:select>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace mr-5">Interpretation</label>
							<sf:select id="interpretation_id" placeholder="Alpha Thal Result"
								class="form-control form-control-sm"
								path="molecularStudies.interpretation">
								<sf:option value="Heterozygote">Heterozygote</sf:option>
								<sf:option value="Homozygote">Homozygote</sf:option>
								<sf:option value="Compound Heterozygote">Compound Heterozygote</sf:option>
							</sf:select>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace mr-5">Delta Beta Thal</label>
							<sf:input id="interpretation_id" placeholder="Alpha Thal Result"
								class="form-control form-control-sm"
								path="molecularStudies.hpfh" />
						</div>
					</div>
				</div>
				<div class="form-group row mt-2 mb-0 pb-0">
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace mr-5">Delta Beta Thal</label>
							<sf:input id="delta_beta_thal_id" placeholder="Delta Beta Thal"
								class="form-control form-control-sm"
								path="molecularStudies.deltaBetaThal" />
						</div>
					</div>

					<div class="col-md-4 text-left">
						<label class="text-monospace text-left">Current
							Investigations( Month & Year )</label>
						<div class="row">
							<div class="form-group text-left col-md-6">
								<sf:input id="mother_occupation_id"
									class="form-control form-control-sm"
									path="molecularStudies.currentInvestigationYear"
									placeholder="Year" />
							</div>
							<div class="form-group text-left col-md-6">
								<sf:input id="mother_occupation_id"
									class="form-control form-control-sm"
									path="molecularStudies.currentInvestigationMonth"
									Placeholder="Month" />
							</div>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace mr-5" style="font-size:0.9em">Mean Pre Transfusion Hb</label>
							<sf:input id="pre_transfusion_hb_id" placeholder="Delta Beta Thal"
								class="form-control form-control-sm"
								path="molecularStudies.meanPerTransfusion" />
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group text-left">
							<label class="text-monospace mr-5" style="font-size:0.9em">Mean Post Transfusion Hb</label>
							<sf:input id="post_transfusion_hb_id" placeholder="Delta Beta Thal"
								class="form-control form-control-sm"
								path="molecularStudies.postTransfusion" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
