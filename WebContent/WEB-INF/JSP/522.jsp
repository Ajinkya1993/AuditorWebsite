<jsp:include page="header.jsp" />
<jsp:include page="message.jsp" />

<body>
	
	<div class="container">
		<div class="row clearfix">
		<h1 align="center">Giant Eagle Auditor's Site</h1>
			<div>
			<h3>Click on the tabs below to check how we comply with the regulations:</h3>
			</div>
			<div>
				<form>
					<p align="center"><b>Select a Site </b>
					<select id="setit" style="color: #0000FF" size="1" name="test" onchange="window.open(this.value,'','');">
					<option>Select one</option>
					    <option value="502.jsp">§ 164.502</option>
					    <option value="506.jsp">§ 164.506</option>
					    <option value="508.jsp">§ 164.508</option>
					    <option value="510.jsp">§ 164.510</option>
					    <option value="514.jsp">§ 164.514</option>
					    <option value="520.jsp">§ 164.520</option>
					    <option value="522.jsp">§ 164.522</option>
					    <option value="524.jsp">§ 164.524</option>
					    <option value="526.jsp">§ 164.526</option>
					     <!--  <input type="button" value="Go"
					onclick="window.open(setit.options[setit.selectedIndex].value)"> -->
					</p>
				</form>
			</div>
			<div class="col-md-4 column">
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10" >
						<form method="get" action="download.do" id="safeHarborTable">

							<!-- <button class="btn btn-default" type="submit"
								value="Download All" name="button">Download All</button>
							<button class="btn btn-default" type="submit"
								value="Download Insurance Company" name="button">Download
								Insurance Company</button> -->
							<h3 align="left">Safe Harbor Download</h3>
							<p class="bg-warning">
								Select the fields for downloading
							</p>
							<div style="background-color: #d4f1f9;">
							<p><strong><input type="checkbox" name="checkAll" id="checkAll">Select All</strong></p>
							<!-- <p><input type="checkbox" name="selectedColumn" value="1"/>insurance_member_id</p>
					        <p><input type="checkbox" name="selectedColumn" value="2"/>grocery_member_id</p>
					        <p><input type="checkbox" name="selectedColumn" value="3"/>plan_number</p> -->
					        <p><input type="checkbox" name="selectedColumn" value="7"/>ad_keywords</p>
					        <p><input type="checkbox" name="selectedColumn" value="8"/>coupon_code</p>
					        <p><input type="checkbox" name="selectedColumn" value="4"/>age</p>
					        <p><input type="checkbox" name="selectedColumn" value="11"/>gender</p>
					        <p><input type="checkbox" name="selectedColumn" value="12"/>ethnicity</p>
					        <p><input type="checkbox" name="selectedColumn" value="14"/>zip</p>
					        <p><input type="checkbox" name="selectedColumn" value="17"/>state</p>
					        <p><input type="checkbox" name="selectedColumn" value="22"/>disease_name</p>
					        <p><input type="checkbox" name="selectedColumn" value="23"/>disease_treats</p>
					        <p><input type="checkbox" name="selectedColumn" value="24"/>chemical_name</p>
					        <p><input type="checkbox" name="selectedColumn" value="25"/>marketing_name</p>
					        <p><input type="checkbox" name="selectedColumn" value="26"/>perscription_probability</p>
					        </div>
					        <p></p>
					        <button class="btn btn-primary" type="submit"
									value="Download 100 Records" name="button">Download 100
									Records</button>
							<p></p>
							<button class="btn btn-primary" type="submit"
									value="Download All Records" name="button">Download All
									Records</button>
						</form>
					</div>
				</div>
			</div>
			
			<div class="col-md-4 column">
			<h3 align="left">Regulations</h3>
			<br>
			<div>
			</div>
			</div>
			<div class="col-md-4 column">
				<form method="get" action="viewLaw.do">
					<h3 align="left">Laws and Regulations</h3>
					<br>
					§164.522 Rights to request privacy protection for protected health information-- The system shall provide a method for the individual to request their protected data and The system should provide the rights of an individual to restrict the use and disclosures of their health information.
					<button class="btn btn-default btn-lg" type="submit"
						value="View Safe Harbor Regulation Details" name="button">View
						Safe Harbor Regulation Details</button>
					<p>&nbsp;</p>
					<button class="btn btn-default btn-lg" type="submit"
						value="View Expert Determination Regulation Details" name="button">View
						Expert Determination Regulation Details</button>
					<p>&nbsp;</p>
					<button class="btn btn-default btn-lg" type="submit"
						value="Download HIPPA Law" name="button">Download HIPPA
						Law</button>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
	<!-- http://stackoverflow.com/questions/386281/how-to-implement-select-all-check-box-in-html -->
	<script>
	$("#safeHarborTable #checkAll").click(function () {
        if ($("#safeHarborTable #checkAll").is(':checked')) {
            $("#safeHarborTable input[type=checkbox]").each(function () {
                $(this).prop("checked", true);
            });

        } else {
            $("#safeHarborTable input[type=checkbox]").each(function () {
                $(this).prop("checked", false);
            });
        }
    });
	</script>
</body>
</html>