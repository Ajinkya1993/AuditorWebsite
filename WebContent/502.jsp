<jsp:include page="header.jsp" />
<jsp:include page="message.jsp" />

<body>
<div class="container">
	<div class="row clearfix">
		<h1 align="center">How We Comply with HIPPA &#167 164.502</h1>
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
					<b>HIPAA &#167 164.502 </b>Uses and disclosures of protected health information: General rules (b) Standard: Minimum necessary-- When using or disclosing protected health information or when requesting protected health information from another covered entity, a covered entity must make reasonable efforts to limit protected health information to the minimum necessary to accomplish the intended purpose of the use, disclosure, or request.
					<p>&nbsp;</p>
					<br>
					<b>Scenario:</b><br> When any external individual makes a request to access PHI such as download, the system should only respond it with data that meets the minimum necessary requirement. The system should take measurements to minimize the data, using techniques provided from rules such as safe harbor.
					<p>&nbsp;</p>
					<br>
					<b>Implementation:</b><br> For an authorized request of downloading data, the system will provide minimized data under the safe harbor rule, which don't include identifying information.
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