<jsp:include page="header.jsp" />
<jsp:include page="message.jsp" />

<body>
<div class="container">
	<div class="row clearfix">
		<h1 align="center">How We Comply with HIPPA &#167 164.514</h1>
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
					    <option value="502.jsp">&#167 164.502</option>
					    <option value="506.jsp">&#167 164.506</option>
					    <option value="508.jsp">&#167 164.508</option>
					    <option value="514.jsp">&#167 164.514</option>
					    <option value="520.jsp">&#167 164.520</option>
					    <option value="522.jsp">&#167 164.522</option>
					    <option value="524.jsp">&#167 164.524</option>
					     <!--  <input type="button" value="Go"
					onclick="window.open(setit.options[setit.selectedIndex].value)"> -->
					</select>
					</p>
				</form>
			</div>
			<font size = "4">
					<br>
					<b>HIPAA &#167 164.514</b> Other requirements relating to users and disclosures of protected health information. 
					(a) Standard: de-identification of protected health information.  Health information that does not identify
					 an individual and with respect to which there is no reasonable basis to believe that the information can 
					 be used to identify an individual is not individually identifiable health information. 
					<p>&nbsp;</p>
					<br>
					<b>Scenario:</b><br> When Giant Eagle wants to use or disclose the information provided by customers, the information 
					must be de-identified prior to any form of use and disclosure.
					<p>&nbsp;</p>
					<br>
					<b>Implementation:</b><br> The system has trimmed all the customers' data that complies with safe harbor rule by removing 
					certain fields and transformed certain columns in the database.
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