<!DOCTYPE HTML>
<html>

<head>
	<title>Voting System | ADMIN LOGIN</title>
	<link rel="icon" type="image/ico" href="img/umak.png">
	
</head>

<body>
	<?php include('sidenav.php');?>

<div class="container-fluid container-style">
	<div class="page-header">
	  <h1>Partylist Vote Rate <small>Percentage view of vote per PartyList</small></h1>
	</div>

	<div class="list">
		<ol class="breadcrumb">
		  <li><a href="ADMINhome.php">Home</a></li>
		  <li class="active">Partylist Vote Rates</li>
		</ol>
	</div>


<button type="button" class="btn btn-primary btn-lg " data-toggle="modal" data-target=".partylist">Add PartyList</button>
<button type="button" class="btn btn-primary btn-lg " data-toggle="modal" data-target=".candidate">Add Candidate</button>


<!-- Start of PartyList Modal -->
<div class="modal fade bs-example-modal-lg partylist" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Add PartyList</h4>
			</div>

			<div class="modal-body">

				<form>
					<div class="form-group">
						<label for="exampleInputName1">Partylist Name</label>
						<input type="text" class="form-control" id="exampleInputName1" placeholder="Name of your Partylist" required>
					</div>

					<div class="form-group">
						<label for="exampleInputName2">Partylist Slogan</label>
						<input type="text" class="form-control" id="exampleInputName2" placeholder="Slogan of your Partylist" required>
					</div>

					<div class="form-group">
						<label for="exampleSelectName1">Department</label>
						<select class="form-control" id="exampleSelectName1">
							<option value="College of Allied Health Studies">College of Allied Health Studies</option>
							<option value="College of Arts and Sciences (CAS)">College of Arts and Sciences (CAS)</option>
							<option value="Center for Broadcast and Digital Arts (CBDA)">Center for Broadcast and Digital Arts (CBDA)</option>
							<option value="College of Business Administration (CBA)">College of Business Administration (CBA)</option>
							<option value="College of Computer Sciences (CCS)">College of Computer Sciences (CCS)</option>
							<option value="College of Engineering and Technology Management (CETM)">College of Engineering and Technology Management (CETM)</option>
							<option value="College of Education">College of Education</option>
							<option value="College of Governance and Public Policy">College of Governance and Public Policy</option>
							<option value="Center of Human Kinesthetics (CHK)">Center of Human Kinesthetics (CHK)</option>
							<option value="Center for Curriculum and Instructional Materials Development (CCIMD)">Center for Curriculum and Instructional Materials Development (CCIMD)</option>
							<option value="Higher School ng UMak">Higher School ng UMak</option>
							<option value="Design Center for Nation Building (DCNB)">Design Center for Nation Building (DCNB)</option>
							<option value="School of Continuing Professional Education (SCOPE)">School of Continuing Professional Education (SCOPE)</option>
							<option value="Accreditation Program (AP)">Accreditation Program (AP)</option>
							<option value="Research and Library Resource Center (RARLC)">Research and Library Resource Center (RARLC)</option>
						</select>
					</div>
				

			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- End of PartyList Modal -->

<!-- Start of Candidate Modal -->
<div class="modal fade bs-example-modal-lg candidate" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
           <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Add Candidate</h4>
      </div>
      <div class="modal-body">

      	<form>
					<div class="form-group">
						<label for="exampleSelectName1">Political Partylist</label>
							<select class="form-control" id="exampleSelectName1">
								<option value="Batak Partylist">Batak Partylist</option>
							</select>
					</div>

					<div class="form-group">
						<label for="exampleSelectName2">Position</label>
							<select class="form-control" id="exampleSelectName2">
								<option value="Chairman">Chairman </option>
								<option value="Vice Chairman">Vice Chairman</option>
								<option value="Secretary">Secretary</option>
								<option value="Treasurer">Treasurer</option>
								<option value="Auditor">Auditor</option>
								<option value="P.R.O">P.R.O</option>
								<option value="4th Year Rep">4th Year Rep</option>
								<option value="3rd Year Rep">3rd Year Rep</option>
								<option value="2nd Year Rep">2nd Year Rep</option>
								<option value="1st Year Rep">1st Year Rep</option>
							</select>
					</div>

					<div class="form-group">
					    <label for="inputText1">First Name</label>

					      <input type="text" class="form-control" id="inputText1" placeholder="First Name">

					  </div>


					<div class="form-group">
					    <label for="inputText2">Middle Name</label>

					      <input type="text" class="form-control" id="inputText2" placeholder="Middle Name (Optional)">

					  </div>

					<div class="form-group">
					    <label for="inputText3">Last Name</label>

					      <input type="text" class="form-control" id="inputText3" placeholder="Last Name">

					</div>


					<div class="form-group">
					    <label for="inputEmail1">Email</label>

					      <input type="email" class="form-control" id="inputEmail1" placeholder="Email">

					</div>
			

					<div class="form-group">
						<label for="exampleSelectName4">Program</label>

							<select class="form-control" id="exampleSelectName4">
							<option value="College of Allied Health Studies">Application Development</option>
							<option value="College of Arts and Sciences (CAS)">Service Management</option>
							</select>

					</div>
			


					<div class="form-group">
						<label for="exampleSelectName5">Year and Section</label>

							<select class="form-control" id="exampleSelectName5">
							<option value="College of Allied Health Studies">I - ACSAD</option>
							<option value="College of Arts and Sciences (CAS)">II - ACSAD</option>
							</select>
					</div>
			

					<div class="form-group">
						<label for="examplesRadio1">Gender</label>
							<div class="radio">

								<label class="radio-inline">
								  <input type="radio" name="inlineRadioOptions" id="iexamplesRadio1" value="Male" checked> Male
								</label>
								<label class="radio-inline">
								  <input type="radio" name="inlineRadioOptions" id="examplesRadio2" value="Female"> Female
								</label>
							  	
							</div>

				</div>


					<div class="form-group">
					    <label for="inputText5">Religion</label>
					      <input type="text" class="form-control" id="inputText5" placeholder="Religion">
					</div>

					<div class="form-group">
					    <label for="inputbd1">Birthday</label>
					      <input type="date" class="form-control" id="inputbd1">
					</div>

					<div class="form-group">
					    <label for="inputText6">Birth place</label>
					      <input type="text" class="form-control" id="inputText6" placeholder="Place of Birth">
					</div>

					<div class="form-group">
					    <label for="inputText7">Telephone</label>
					      <input type="text" class="form-control" id="inputText7" placeholder="Telephone Number">
					</div>

					<div class="form-group">
					    <label for="inputText8">Mobile</label>
					      <input type="text" class="form-control" id="inputText8" placeholder="Mobilephone Number">
					</div>

					<div class="form-group">
					    <label for="inputText9">Guardian</label>
					      <input type="text" class="form-control" id="inputText9" placeholder="Guardian's Full Name">
					</div>

					<div class="form-group">
					    <label for="inputText10">Guardian Contact</label>
					      <input type="text" class="form-control" id="inputText10" placeholder="Guardians contact number">
					</div>

					<div class="form-group">
					    <label for="inputText11">Honor/Awards</label>
					      <input type="text" class="form-control" id="inputText11" placeholder="Honors and Awards">
					</div>
					<div class="form-group">
					    <label for="inputText12">Skills/Talents</label>
					      <input type="text" class="form-control" id="inputText12" placeholder="Skills and Talents">
					</div>

					<div class="form-group">
					    <label for="inputText4">Address</label>

					     <textarea class="form-control" rows="3" id="inputText4">Address here..	</textarea>

					</div>

					  <div class="form-group">
						<label for="exampleSelectName3">College</label>

							<select class="form-control" id="exampleSelectName3">
							<option value="College of Allied Health Studies">College of Allied Health Studies</option>
							<option value="College of Arts and Sciences (CAS)">College of Arts and Sciences (CAS)</option>
							<option value="Center for Broadcast and Digital Arts (CBDA)">Center for Broadcast and Digital Arts (CBDA)</option>
							<option value="College of Business Administration (CBA)">College of Business Administration (CBA)</option>
							<option value="College of Computer Sciences (CCS)">College of Computer Sciences (CCS)</option>
							<option value="College of Engineering and Technology Management (CETM)">College of Engineering and Technology Management (CETM)</option>
							<option value="College of Education">College of Education</option>
							<option value="College of Governance and Public Policy">College of Governance and Public Policy</option>
							<option value="Center of Human Kinesthetics (CHK)">Center of Human Kinesthetics (CHK)</option>
							<option value="Center for Curriculum and Instructional Materials Development (CCIMD)">Center for Curriculum and Instructional Materials Development (CCIMD)</option>
							<option value="Higher School ng UMak">Higher School ng UMak</option>
							<option value="Design Center for Nation Building (DCNB)">Design Center for Nation Building (DCNB)</option>
							<option value="School of Continuing Professional Education (SCOPE)">School of Continuing Professional Education (SCOPE)</option>
							<option value="Accreditation Program (AP)">Accreditation Program (AP)</option>
							<option value="Research and Library Resource Center (RARLC)">Research and Library Resource Center (RARLC)</option>
							</select>

					</div>


		</form>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Add</button>
      </div>
    </div>
  </div>
</div>
<!-- End of Canditate Modal -->


	<div class="row rowtop">

		<div class="col-sm-6 col-md-4">
			<div class="thumbnail ">
				<div class="clearfix">
					<div class="c100 p85 greenish">
					<span>85%</span>
						<div class="slice">
						<div class="bar"></div>
						<div class="fill"></div>
						</div>
					</div>
				</div>
				<div class="caption">
					<h3>PartyList #1(Name of PartyList)</h3>
					<p id="peedes">Slogan here....</p>
					<p align="right"><a href="partylistrating.php" class="btn btn-primary" role="button">View</a></p>
				</div>
			</div>
		</div>

		<div class="col-sm-6 col-md-4">
			<div class="thumbnail ">
				<div class="clearfix">
					<div class="c100 p85 greenish">
					<span>85%</span>
						<div class="slice">
						<div class="bar"></div>
						<div class="fill"></div>
						</div>
					</div>
				</div>
				<div class="caption">
					<h3>PartyList #2(Name of PartyList)</h3>
					<p id="peedes">Slogan here....</p>
					<p align="right"><a href="partylistrating.php" class="btn btn-primary" role="button">View</a></p>
				</div>
			</div>
		</div>

		<div class="col-sm-6 col-md-4">
			<div class="thumbnail ">
				<div class="clearfix">
					<div class="c100 p85 greenish">
					<span>85%</span>
						<div class="slice">
						<div class="bar"></div>
						<div class="fill"></div>
						</div>
					</div>
				</div>
				<div class="caption">
					<h3>PartyList #3(Name of PartyList)</h3>
					<p id="peedes">Slogan here....</p>
					<p align="right"><a href="partylistrating.php" class="btn btn-primary" role="button">View</a></p>
				</div>
			</div>
		</div>

	</div>

	
</div>




</body>

</html>