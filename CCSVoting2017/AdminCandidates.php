<!DOCTYPE HTML>
<html>

<head>
	<title>Voting System | ADMIN LOGIN</title>
	<link rel="icon" type="image/ico" href="img/umak.png">
</head>

<body>
	<?php include('sidenav.php');?>

		<?php 

			$college = $_GET['college'];
			$partylist = $_GET['partylist'];
			$_SESSION['college'] = $college;
			$_SESSION['partylist_can'] = $partylist;

			$sql = "SELECT * FROM partylist WHERE partylist_name='$partylist' AND college='$college'";
				$result = mysqli_query($conn,$sql);


				if (mysqli_num_rows($result)>0){
					$row = mysqli_fetch_array($result);
					

					echo " ";
					$id = $row['id'];
					$partylistname = $row['partylist_name'];
					$college = $row["college"];
					$picture = $row['partylist_logo'];

					$_SESSION['college_can'] = $college;

				}
					else {
					echo " ";
					}

		?>

<div class="container-fluid container-style">
	<div class="page-header header-page">
	  <h2><?php echo $partylistname;?></h2>
	  <h3><?php echo $college; ?></h3>
	</div>

	  
	<div class="add-college">
 			 <!-- Button trigger modal -->
			<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Add Candidate</button>

			<!-- Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">ADD CANDIDATE | <?php echo $college;?></h4>
			      </div>
			      <div class="modal-body">
					<form method="POST" action="add_candidate_php.php" enctype="multipart/form-data">

						<input type="file" name="candiimg" id="image_src" />

					<div class="form-group">
						<label for="exampleSelectName2">Position</label>
							<select class="form-control" id="exampleSelectName2" name="position">
								<option value="President">President </option>
								<option value="VP Internal">VP Internal</option>
								<option value="VP External">VP External</option>
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

					      <input type="text" class="form-control" id="inputText1" name="fname" placeholder="First Name" >

					  </div>


					<div class="form-group">
					    <label for="inputText2">Middle Name</label>

					      <input type="text" class="form-control" id="inputText2" name="mname" placeholder="Middle Name (Optional)">

					  </div>

					<div class="form-group">
					    <label for="inputText3">Last Name</label>

					      <input type="text" class="form-control" id="inputText3" name="lname" placeholder="Last Name" >

					</div>


					<div class="form-group">
					    <label for="inputEmail1">Email</label>

					      <input type="email" class="form-control" id="inputEmail1" name="email" placeholder="Email" >

					</div>
			


					<div class="form-group">
						<label for="exampleSelectName5">Year and Section</label>
							<input type="text" name="yearsec" id="exampleSeclectNames">
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
					      <input type="text" class="form-control" id="inputText5" name="religion" placeholder="Religion" >
					</div>

					<div class="form-group">
					    <label for="inputbd1">Birthday</label>
					      <input type="date" class="form-control" id="inputbd1" name="bday" >
					</div>

					<div class="form-group">
					    <label for="inputText6">Birth place</label>
					      <input type="text" class="form-control" id="inputText6" name="bplace" placeholder="Place of Birth" >
					</div>

					<div class="form-group">
					    <label for="inputText7">Telephone</label>
					      <input type="text" class="form-control" id="inputText7" name="tel" placeholder="Telephone Number (Optional)">
					</div>

					<div class="form-group">
					    <label for="inputText8">Mobile</label>
					      <input type="text" class="form-control" id="inputText8" name="mobi" placeholder="Mobilephone Number" >
					</div>

					<div class="form-group">
					    <label for="inputText9">Guardian</label>
					      <input type="text" class="form-control" id="inputText9" name="parent" placeholder="Guardian's Full Name" >
					</div>

					<input type="hidden" name="college_can" value="<?php echo 	$_SESSION['college_can'];?>">

					<div class="form-group">
					    <label for="inputText10">Guardian Contact</label>
					      <input type="text" class="form-control" id="inputText10" name="gcontact" placeholder="Guardians contact number" >
					</div>

					<div class="form-group">
					    <label for="inputText11">Honor/Awards</label>
					      <input type="text" class="form-control" id="inputText11" name="honor" placeholder="Honors and Awards (Optional)">
					</div>
					<div class="form-group">
					    <label for="inputText12">Skills/Talents</label>
					      <input type="text" class="form-control" id="inputText12" name="skills" placeholder="Skills and Talents (Optional)">
					</div>

					<div class="form-group">
					    <label for="inputText4">Address</label>

					     <textarea class="form-control" rows="3" id="inputText4" name="address" placeholder="Address here..	"></textarea>

					</div>

			      </div>
			      <div class="modal-footer">
			        <input type="submit" class="btn btn-yellow btn-full" value="Add">
		</form>
			      </div>
			    </div>
			  </div>
			</div>
	</div>


	<div class="row row-design">
	

				<?php 
			$college = $_GET['college'];
			$partylist = $_GET['partylist'];

			$sql = "SELECT * FROM candidates WHERE partylist='$partylist' AND college='$college'";
				$result = mysqli_query($conn,$sql);


				if (mysqli_num_rows($result)>0){
					while($row = mysqli_fetch_array($result)){
					

					echo " ";

					$id = $row['id'];
					$img = $row['candidatepic'];
					$partylist = $row['partylist'];
					$first_name = $row["first_name"];
					$middle_name = $row["middle_name"];
					$last_name = $row["last_name"];
					$position = $row["position"];
					$college = $row["college"];
					$program = $row["program"];
					$gender = $row["gender"];
					$religion = $row["religion"];
					$birthday = $row["birthday"];
					$birth_place = $row["birth_place"];
					$address = $row["address"];
					$email = $row["email"];
					$guardian = $row["guardian"];
					$guardian_contact = $row["guardian_contact"];
					$telephone = $row["telephone"];
					$mobile = $row["mobile"];
					$skills_talents = $row["skills_talents"];
					$honors_awards = $row["honors_awards"];
					$year_section = $row["year_section"];

		?>


	  <div class="col-sm-6 col-md-3">
	    <div class="thumbnail col-bc">
	     <div class="clearfixx">
			<p align="right"><a href="" class="btn btn-primary button-size" role="button" data-toggle="modal" data-target="#<?php echo $id;?>deletemodal"><i class="fa fa-trash-o"></i></a>


			<a href="" class="btn btn-primary button-size" role="button" data-toggle="modal" data-target="#<?php echo $id;?>updatemodal"><i class="fa fa-edit"></i></a></p>

			<!-- Modal -->
			<div class="modal fade" id="<?php echo $id;?>deletemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">DELETE PARTYLIST | <?php $mi = substr($middle_name, -1);?><?php echo ucwords("$last_name, $first_name $mi.");?></h4>
			      </div>
			      <div class="modal-body">
			      		Are you sure you want to delete this Candidate?
					<form method="POST" action="delete_candidate.php">
					<input type="hidden" name="id" value="<?php echo $id;?>">
			      </div>
			      <div class="modal-footer">
			        <input type="submit" class="btn btn-yellow btn-full" value="Delete">
			        </form>
			    </div>
			    </div>
			  </div>
			</div>


				        				<!-- Modal -->
			<div class="modal fade" id="<?php echo $id;?>updatemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">UPDATE CANDIDATE
			      </div>
			      <div class="modal-body">
			       <form method="POST" action="edit_candidate.php" enctype="multipart/form-data">
						<input type="file" name="image_src" id="image_src" value=""/>

					<div class="form-group">
						<label for="exampleSelectName2">Position</label>
							<select class="form-control" id="exampleSelectName2" value="<?php echo $position;?>" name="position">
								<option value="President">President </option>
								<option value="VP Internal">VP Internal</option>
								<option value="VP External">VP External</option>
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

					      <input type="text" class="form-control" id="inputText1" placeholder="First Name" value="<?php echo $first_name; ?>" name="fname">

					  </div>


					<div class="form-group">
					    <label for="inputText2">Middle Name</label>

					      <input type="text" class="form-control" id="inputText2" placeholder="Middle Name (Optional)" value="<?php echo $middle_name; ?>" name="mname">

					  </div>

					<div class="form-group">
					    <label for="inputText3">Last Name</label>

					      <input type="text" class="form-control" id="inputText3" placeholder="Last Name" value="<?php echo $last_name; ?>" name="lname">

					</div>


					<div class="form-group">
					    <label for="inputEmail1">Email</label>

					      <input type="email" class="form-control" id="inputEmail1" placeholder="Email" value="<?php echo $email; ?>" name="email">

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
					      <input type="text" class="form-control" id="inputText5" placeholder="Religion" value="<?php echo $religion; ?>" name="religion">
					</div>

					<div class="form-group">
					    <label for="inputbd1">Birthday</label>
					      <input type="date" class="form-control" id="inputbd1" value="<?php echo $birthday; ?>" name="bday">
					</div>

					<div class="form-group">
					    <label for="inputText6">Birth place</label>
					      <input type="text" class="form-control" id="inputText6" placeholder="Place of Birth" value="<?php echo $birth_place; ?>" name="bplace">
					</div>

					<div class="form-group">
					    <label for="inputText7">Telephone</label>
					      <input type="text" class="form-control" id="inputText7" placeholder="Telephone Number (Optional)" value="<?php echo $telephone; ?>" name="tel">
					</div>

					<div class="form-group">
					    <label for="inputText8">Mobile</label>
					      <input type="text" class="form-control" id="inputText8" placeholder="Mobilephone Number" value="<?php echo $mobile; ?>" name="mobi">
					</div>

					<div class="form-group">
					    <label for="inputText9">Guardian</label>
					      <input type="text" class="form-control" id="inputText9" placeholder="Guardian's Full Name" value="<?php echo $guardian; ?>" name="parent">
					</div>

					<div class="form-group">
					    <label for="inputText10">Guardian Contact</label>
					      <input type="text" class="form-control" id="inputText10" placeholder="Guardians contact number" value="<?php echo $guardian_contact; ?>" name="gcontact">
					</div>

					<div class="form-group">
					    <label for="inputText11">Honor/Awards</label>
					      <input type="text" class="form-control" id="inputText11" placeholder="Honors and Awards (Optional)" value="<?php echo $honors_awards; ?>" name="honor">
					</div>
					<div class="form-group">
					    <label for="inputText12">Skills/Talents</label>
					      <input type="text" class="form-control" id="inputText12" placeholder="Skills and Talents (Optional)" value="<?php echo $skills_talents; ?>" name="skills">
					</div>

					<div class="form-group">
					    <label for="inputText4">Address</label>

					     <textarea class="form-control" rows="3" id="inputText4" placeholder="Address here..	" value="<?php echo $address; ?>" name="address"></textarea>

					</div>

			      </div>
			      <div class="modal-footer">
			      	<input type="hidden" name="id" value="<?php echo $id;?>">
			        <input type="submit" class="btn btn-yellow btn-full" value="Save">
		</form>
			      </div>
			    </div>
			  </div>
			</div> 
			<!--Test Comment2	sfdsfdGisfdt Pushes-->
         </div>
            <div class="candi-image">
            	<div class="imagecrop">
            		<img src="<?php echo $img;?>" alt="..." >
            	</div>
            </div>
	      <div class="caption">
	      	<div class="caption-can">
	      		<?php $mi = substr($middle_name, -1);?>
		        <h5><b><?php echo ucwords("$last_name, $first_name $mi.");?></b></h5>
		        <h6><i><?php echo $position;?></i></h6>
	        </div>
	        <p align="center"><a href="" class="btn btn-primary btn-full" role="button" data-toggle="modal" data-target="#<?php echo $id;?>profilemodal">View Candidate</a></p>


					        <!-- Modal -->
				<div class="modal fade" id="<?php echo $id;?>profilemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="myModalLabel">PROFILE | Candidate</h4>
				      </div>
				      <div class="modal-body">

				      	<table class="table table-hover">

				      		<tbody>

				      			<tr>
				      				<td><b>Full Name: </b></td><td><?php echo "$last_name, $first_name $mi.";?></td>
				      			</tr>
				      			<tr>
				      				<td><b>Position: </b></td><td><?php echo $position;?></td>
				      			</tr>
				      			<tr>
				      				<td><b>Email: </b></td><td><?php echo $email;?></td>
				      			</tr>
				      			<tr>
				      				<td><b>Year and Section: </b></td><td><?php echo $year_section;?></td>
				      			</tr>
				      			<tr>
				      				<td><b>Gender: </b></td><td><?php echo $gender;?></td>
				      			</tr>
				      			<tr>
				      				<td><b>Religion: </b></td><td><?php echo $religion;?></td>
				      			</tr>
				      			<tr>
				      				<td><b>Birthday: </b></td><td><?php echo $birthday;?></td>
				      			</tr>
				      			<tr>
				      				<td><b>Telephone: </b></td><td><?php echo $telephone;?></td>
				      			</tr>
				      			<tr>
				      				<td><b>Mobile phone: </b></td><td><?php echo $mobile;?></td>
				      			</tr>
				      			<tr>
				      				<td><b>Guardian: </b></td><td><?php echo $guardian;?></td>
				      			</tr>
				      			<tr>
				      				<td><b>Guardian Contact: </b></td><td><?php echo $guardian_contact;?></td>
				      			</tr>


				      		</tbody>

				      	</table>


				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-yellow btn-full" data-dismiss="modal">Okay</button>
				      </div>
				    </div>
				  </div>
				</div>


	      </div>
	    </div>
	  </div>

	  <?php 
	  		}
	  						}
					else {
					echo " ";
					}

	  ?>

	</div>
</div>


 <script>
function upload(){
  document.getElementById("image_src").click();
 }
 </script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/vendor/jquery.sortelements.js" type="text/javascript"></script>
<script src="../js/jquery.bdt.js" type="text/javascript"></script>
<script>
    $(document).ready( function () {
        $('#bootstrap-table').bdt();
    });
</script>

</body>

</html>