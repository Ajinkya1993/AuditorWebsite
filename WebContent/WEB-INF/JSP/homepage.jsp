<<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Giant Eagle - Auditor Website</title>
    <link href="favicon.png" rel=icon>
    <link href="https://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar">
<div id="main-wrapper">

<div id="preloader">
    <div id="status">
        <div class="status-mes"></div>
    </div>
</div>

<div class="columns-block container">
<div class="left-col-block blocks" style="width:500px">
    <header class="header theiaStickySidebar">
        <div class="profile-img">
            <img src="img/GiantEagle.png" class="img-responsive" alt=""/>
        </div>
        <div class="content">
            <h1>Auditor Website</h1>
            

            <div class="about-text">
                <p>
                	Welcome to Giant Eagle's auditor website. We value the privacy of our customers very much. We are fully compliant with the HIPAA privacy rule.
                	We make sure that we de-identify customer data according to the consent level they choose while ensuring that it is not traceable back to the
                	original data.                				   
				 </p>
				<p>			
				   We provide links to view the regulations for the HIPAA privacy rule as well as the Safe Harbor de-identification rules.  
				 </p>                
            </div>

			<div>
			 <h3>Download the transformed dataset:</h3>
			</div>
            <div>
				<form method="get" action="download.do" id="safeHarborTable">																												
							<button class="btn btn-success" type="submit"
								value="Download All Records" name="button">Download All
								De-Identified Data</button>
							<p></p>
							
							<h3 align="left">You can also choose to download data for selected fields</h3>
							
							<p></p>
							<p class="bg-warning">Select the fields for downloading</p>
							<div style="background-color: #d4f1f9;">
								<p>
									<strong><input type="checkbox" name="checkAll"
										id="checkAll">Select All</strong>
								</p>
								
								<p>
									<input type="checkbox" name="selectedColumn" value="7" />ad_keywords
								</p>
								<p>
									<input type="checkbox" name="selectedColumn" value="8" />coupon_code
								</p>
								<p>
									<input type="checkbox" name="selectedColumn" value="4" />age
								</p>
								<p>
									<input type="checkbox" name="selectedColumn" value="11" />gender
								</p>
								<p>
									<input type="checkbox" name="selectedColumn" value="12" />ethnicity
								</p>
								<p>
									<input type="checkbox" name="selectedColumn" value="14" />zip
								</p>
								<p>
									<input type="checkbox" name="selectedColumn" value="17" />state
								</p>
								<p>
									<input type="checkbox" name="selectedColumn" value="22" />disease_name
								</p>
								<p>
									<input type="checkbox" name="selectedColumn" value="23" />disease_treats
								</p>
								<p>
									<input type="checkbox" name="selectedColumn" value="24" />chemical_name
								</p>
								<p>
									<input type="checkbox" name="selectedColumn" value="25" />marketing_name
								</p>
								<p>
									<input type="checkbox" name="selectedColumn" value="26" />perscription_probability
								</p>
							</div>
							<p></p>
							<button class="btn btn-primary" type="submit" style="background-color : #654321 ;"
								value="Download 100 Records" name="button">Download All
								Records with Selected Columns</button>
							<button class="btn btn-primary" type="submit" style="background-color : #654321 ;"
								value="Download 100 Records" name="button">Download 50000
								Records with Selected Columns</button>
							
							
							
						</form>
			</div>
        </div>

    </header>
    
</div>


<div class="right-col-block blocks">
<div class="theiaStickySidebar">



<section class="section-wrapper skills-wrapper">
    <div class="container-fluid">
        <div class="row">
                <div class="section-title">
                    <h2><font color="brown">Check Regulation Details</font></h2>
                </div>
        </div>
        <div class="row">
            
                <div class="progress-wrapper">

                    <div class="progress-item">
                        <form method="get" action="viewLaw.do">
                        <button class="btn btn-primary" style="background-color : #F4A460 ;" type="submit"
								value="View Safe Harbor Regulation Details" name="button">
						View Safe Harbor Regulation Details</button>
					

					<button class="btn btn-primary" type="submit" style="background-color : #F4A460 ;"
								value="View Safe Harbor Regulation Details" name="button">Download HIPPA
						Law</button>
				</form>
					</div>						
                </div>               
        
        </div>
        
    </div>
    
</section>

<section class="section-wrapper skills-wrapper">
    <div class="container-fluid">
        <div class="row">
                <div class="section-title">
                    <h2><font color="brown">Description of level of consent</font></h2>
                </div>
        </div>
        <div class="row">
            
                <div class="progress-wrapper">

                    <div class="progress-item">
                        <b>Complete: </b>User consents to share all his original data. <br>
                        <b>Partial: </b>User consents to share de-identified data only.<br>
                        <b>Not enrolled: </b>User does not wish to enroll in the program.<br>
                   	</div>						
                </div>               
        
        </div>
        
    </div>
    
</section>

<section class="section-wrapper skills-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="section-title">
                    <h2><font color="brown">Check how we comply with the regulations</font></h2>
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="progress-wrapper">

                    <div class="progress-item">
                        
				<div>
					<form>
						<p>
							<b>Select a Rule &nbsp</b> <select id="setit" style="color: #0000FF"
								size="1" name="test" onchange="window.open(this.value,'','');">
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
					</div>						
                </div>
                
            </div>
        </div>
        
    </div>
    
</section>





<section class="section-contact section-wrapper gray-bg">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="feedback-form">
                    <h2><font color="brown">Please let us know if you have any concern</font></h2>

                    <form id="contactForm" onSubmit="return handleClick()" method="POST">
                        <div class="form-group">
                            <label for="InputName">Name</label>
                            <input type="text" name="name" required="" class="form-control" id="InputName"
                                   placeholder="Full Name">
                        </div>
                        <div class="form-group">
                            <label for="InputEmail">Email address</label>
                            <input type="email" name="email" required="" class="form-control" id="InputEmail"
                                   placeholder="Email">
                        </div>
                        <div class="form-group">
                            <label for="InputSubject">Subject</label>
                            <input type="text" name="subject" class="form-control" id="InputSubject"
                                   placeholder="Subject">
                        </div>
                        <div class="form-group">
                            <label for="message-text" class="control-label">Message</label>
                            <textarea class="form-control" rows="4" required="" name="message" id="message-text"
                                      placeholder="Write message"></textarea>
                        </div>

                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div> 
           


            </div>
        </div>
       
    </div>
</section>

</div>
</div>
</div>
</div>
<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/theia-sticky-sidebar.js"></script>
<script src="js/scripts.js"></script>
<script>
		$("#safeHarborTable #checkAll").click(function() {
			if ($("#safeHarborTable #checkAll").is(':checked')) {
				$("#safeHarborTable input[type=checkbox]").each(function() {
					$(this).prop("checked", true);
				});

			} else {
				$("#safeHarborTable input[type=checkbox]").each(function() {
					$(this).prop("checked", false);
				});
			}
		});
		
		 function handleClick()
	     {
	       alert("Your message has been successfully submitted");
	       var form = document.getElementById("contactForm");
	       form.reset();
	       //event.preventDefault(); // disable normal form submit behavior
	       return false; // prevent further bubbling of event
	     }
	</script>
</body>
</html>