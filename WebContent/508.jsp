<jsp:include page="header.jsp" />
<jsp:include page="message.jsp" />

<body>
<div class="container">
	<div class="row clearfix">
		<h1 align="center">How We Comply with HIPPA &#167 164.508</h1>
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
					<b>HIPAA &#167 164.508</b> Use and disclosure for which an authorization is required-- Authorization required: Marketing. 
					A covered entity must obtain an authorization for any use or disclosure of protected health information for marketing, 
					except otherwise stated in the regulations. Revocation of authorizations. An individual may revoke an authorization 
					provided under this section at any time, provided that the revocation is in writing, except situations stated in the regulations.
					
					<p>&nbsp;</p>
					<br>
					<b>Scenario:</b><br> If Giant Eagle wants to use the information from their customers, they can only use it after they obtain authorizations. 
					Giant Eagle also need to accept revocations from their customers for their authorizations.
					<p>&nbsp;</p>
					<br>
					<b>Implementation:</b><br> The system has provided buttons for customer to click on to consent and enroll in the program. It also 
					provides options for customers to change their level of consent and dis-enroll from the program.
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