<jsp:include page="header.jsp" />
<jsp:include page="message.jsp" />

<body>
<div class="container">
	<div class="row clearfix">
		<h1 align="center">How We Comply with HIPPA &#167 164.506</h1>
		<%-- <div class="col-md-6 column">
				<jsp:include page= "download.jsp"/>
			</div> --%>
		<!-- <div class="col-md-6 column"> -->
			
			
			
			<!-- <h3 align="center">Click on the tabs below to check how we comply with the regulations:</h3> -->
			<div>
				<form>
					<p align="center"><b>See Other Regulations</b>
					<select id="setit" style="color: #0000FF" size="1" name="test" onchange="window.open(this.value,'','');">
					<option value="">Select one</option>
					    <option value="502.jsp">§ 164.502</option>
					    <option value="506.jsp">§ 164.506</option>
					    <option value="508.jsp">§ 164.508</option>
					    <option value="514.jsp">§ 164.514</option>
					    <option value="520.jsp">§ 164.520</option>
					    <option value="522.jsp">§ 164.522</option>
					    <option value="524.jsp">§ 164.524</option>
					     <!--  <input type="button" value="Go"
					onclick="window.open(setit.options[setit.selectedIndex].value)"> -->
					</select>
					</p>
				</form>
			</div>
			<font size = "4">
					<br>
					<b>HIPAA &#167 164.506 </b>Use and disclosure to carry out treatment,
				payment, or health care operations (b) Standard: Consent for uses
				and disclosures permitted-- The system will not disclose personal
				information without the consent or authorization from the
				individual.
					<p>&nbsp;</p>
					<br>
					<b>Scenario:</b><br> When Giant Eagle tries to use and disclose the protected health information, they should send a link or document to users and request the consent from them. Otherwise, they are not allowed to use these information.
					<p>&nbsp;</p>
					<br>
					<b>Implementation:</b><br> Giant Eagle should request consent from users, it can be electronic. In our customer enrollment page, before the customer can enroll and provide their information, the system will guide them through the privacy notices and ask for an electronic signature for consenting the notices and policies.
					<br>
					<p>&nbsp;</p>
			
			<form align = "center" method="get" action="viewLaw.do">
					<button class="btn btn-default btn-lg" type="submit"
						value="View Safe Harbor Regulation Details" name="button">View
						Safe Harbor Regulation Details</button>
					<!-- <p>&nbsp;</p> -->
					
					<button class="btn btn-default btn-lg" type="submit"
						value="Download HIPPA Law" name="button">Download HIPPA
						Law</button>
				</form>
			</font>
			
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