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
							<label class="text-monospace">Sickling Test Result</label>
							<sf:select id="sickling_test_id"
								class="form-control form-control-sm"
								path="hematInvestigation.sicklingTestResult" placeholder="Sickling Test Result">
								<sf:option value="true">Yes</sf:option>
								<sf:option value="false">No</sf:option>
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

		</div>
		<div class="border_bottom">&nbsp;</div>
		<div>
			<h4>Microbiology Test</h4>
		</div>
	</div>
	</div>
</section>
