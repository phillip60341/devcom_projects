<!DOCTYPE html>
<?php
include('resources.php');
include('session_student.php');
function rep_voting($year,$year_req){
	// switch($year){
	// 	case "1st Year":{
	// 		echo("style = 'display:inline;'");
	// 		break;
	// 	}
	// 	case "2nd Year":{
	// 		echo("style = 'display:inline;'");
	// 		break;
	// 	}
	// 	case "3rd Year":{
	// 		echo("style = 'display:inline;'");
	// 		break;
	// 	}
	// 	case "4th Year":{
	// 		echo("style = 'display:inline;'");
	// 		break;
	// 	}
	// 	default:{
	// 		echo("style = 'display:none;'");
	// 	}
	// }
	if($year==$year_req){
		echo("style='display:inline;'");
	}
	else{
		echo("style='display:none;'");
	}
	
}
?>
<html>

<head>
	<title>USC Election 2017 | Candidates</title>
	<?php include("head.php"); ?>
	<link rel="stylesheet" type="text/css" href="css/voting.css">

	<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="font-awesome-4.5.0/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="font-awesome-4.5.0/css/font-awesome.min.css">

	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>


</head>
<script>
	function cand_onclick(rdoid,position){
		//alert("onclick");
		var x = document.getElementById(rdoid);
		// if(x.checked=="true"){
		// 	x.checked="false";
		// }
		// else{
		// 	x.checked="true";	
		// }
		eval("var y = document.getElementById('" + rdoid + "hdn');");
		//document.getElementById(rdoid).checked="true";
		x.checked="true";
		//y.checked="true";
		//document.getElementById("demoa").innerHTML = x.value;
		switch(position){
			case 1:{
				document.getElementById("demoa").innerHTML = "President: " + y.value;
				break;
			}
			case 2:{
				document.getElementById("demob").innerHTML = "VP Internal: " + y.value;
				break;
			}
			case 3:{
				document.getElementById("democ").innerHTML = "VP External: " + y.value;
				break;
			}
			case 4:{
				document.getElementById("demod").innerHTML = "Secretary: " + y.value;
				break;
			}
			case 5:{
				document.getElementById("demoe").innerHTML = "Treasurer: " + y.value;
				break;
			}
			case 6:{
				document.getElementById("demof").innerHTML = "Auditor: " + y.value;
				break;
			}
			case 7:{
				document.getElementById("demog").innerHTML = "P.R.O: " + y.value;
				break;
			}
			case 8:{
				document.getElementById("demoh").innerHTML = "4th Year Rep: " + y.value;
				break;
			}
			case 9:{
				document.getElementById("demoi").innerHTML = "3rd Year Rep: " + y.value;
				break;
			}
			case 10:{
				document.getElementById("demoj").innerHTML = "2nd Year Rep: " + y.value;
				break;
			}
		}
	}
	// function cand_onchange(rdoid){
	// 	alert("onchange");
	// 	if(document.getElementById(rdoid).checked==true){
	// 		eval("document.getElementById('" + rdoid + "candidate').style.backgroundColor='green';");
	// 	}
	// 	else{
	// 		eval("document.getElementById('" + rdoid + "candidate').style.backgroundColor='red';");
	// 	}
			
	// }
</script>
<body class="back">
	<div class="whole_container">
		<div class="greeting">
			<?php
			$viewnameq = "select * from students where student_id='".$_SESSION['student_id']."'";
			$viewnameresult = mysqli_query($conn,$viewnameq);
			$viewnamerow = mysqli_fetch_assoc($viewnameresult);
			$hanapimg = $viewnamerow['college'];
			$viewcollegelist = "SELECT * FROM college WHERE college_abr='$hanapimg'";
			$viewcollegeresult = mysqli_query($conn,$viewcollegelist);
			$collegelistrow = mysqli_fetch_assoc($viewcollegeresult);
			$img = $collegelistrow['picture'];
			$collegename = $collegelistrow['college'];
			?>
			<p>WELCOME <?php echo($viewnamerow['last_name'].", ".$viewnamerow['first_name']." ".$viewnamerow['middle_name']." (".$viewnamerow['college'].")"); ?></p>
		</div>

		<div class="college_details">
			<div class="logo">
				<img src="<?php echo $img;?>" width="100%">
			</div>
			<div class="college_name">
				<p><?php echo $collegename;?></p>
				<p style="color: yellow;">CANDIDATES</p>
			</div>
		</div>

		<div class="instruct">

			<h5>Please choose your desired candidates.</h5>
			<p>To choose, please just click the box  or the radio button with the candidate's name on it.</p>
			<p>Please click the "Cast Vote" to proceed, a popup will appear to show the list of your desired candidates</p>
			<p>If you see that they're not your desired candidates then just click the "Close" button to choose again, but if you're satified with your candidates then click the "Vote" Button. THANK YOU! </p>
		</div>
		<form action="" method="POST">
			<div class="candidate_container">
				<div class="candidate_position blue">
					<p>PRESIDENT</p>
				</div>
				<?php
					//$viewcandq = "select * from candidates where college like('%".$hanapimg.")') and position='Chairman'";
					$viewcandq = "select * from candidates where college like('%".$hanapimg.")%') and position='President'";
					$viewcandresult = mysqli_query($conn,$viewcandq);
					if(mysqli_num_rows($viewcandresult)==0){
						echo("<div class='no lightBlue'><span style='font-size:24px;color:white;text-align:center;'><center>(NO CANDIDATES)</center></span></div>");
					}
					else{
					while($viewcandrow=mysqli_fetch_assoc($viewcandresult)){
				?>
						<div class="candidate lightBlue" onclick=<?php echo('"cand_onclick('.$viewcandrow['id'].',1)"'); ?> id=<?php echo('"cand_onclick('.$viewcandrow['id'].',1)"'); ?>>
							<div class="candidate_photo blue">
							<div class="candi-image">
							<div class="imagecrop">
								<img src="<?php echo $viewcandrow['candidatepic'];?>" width="100%">
							</div>
							</div>
							</div>
							<div class="candidate_details">
								<input type="text" style = "display:none;" name = "hdn_president" value="<?php echo ($viewcandrow['first_name']." ".$viewcandrow['middle_name']." ".$viewcandrow['last_name']); ?>" id=<?php echo('"'.$viewcandrow['id'].'hdn"'); ?> >
								
								<input type="radio" name="president" value=<?php echo('"'.$viewcandrow['id'].'"'); ?> id=<?php echo('"'.$viewcandrow['id'].'"'); ?>>
								
								<label for="radios"><?php echo($viewcandrow['last_name']); ?></label>
								<h3 for="radios"><?php echo($viewcandrow['first_name']." ".$viewcandrow['middle_name']); ?></h3>
								<p><?php echo($viewcandrow['year_section']); ?></p>
								<p><?php echo($viewcandrow['partylist']); ?></p>
							</div>
						</div>		
					<?php }} ?>
			</div>
		
			<div class="candidate_container">
				<div class="candidate_position yellow">
					<p>VP INTERNAL</p>
				</div>
				<!--<div class="candidate">
					<div class="candidate_photo">
						<img src="images/classprofile.png" width="100%">
					</div>
					<div class="candidate_details">
						<input type="radio"  name="vice_chairman" value ="3">
						<label for="radios">Ray Vincent Phillip D. Villaver</label>
						<input type="radio" style="visibility:hidden;" id="" value="<?php echo ($viewcandrow['first_name']." ".$viewcandrow['middle_name']." ".$viewcandrow['last_name']); ?>">
						<p>III-ACSAD</p>
						<i><p>BATAK</p></i>
					</div>
				</div>-->

				<?php
					$viewcandq = "select * from candidates where college like('%$hanapimg)%') and position='VP Internal'";
					$viewcandresult = mysqli_query($conn,$viewcandq);
					if(mysqli_num_rows($viewcandresult)==0){
						echo("<div class='no lightYellow'><span style='font-size:24px;color:white;text-align:center;'><center>(NO CANDIDATES)</center></span></div>");
					}
					else{
					while($viewcandrow=mysqli_fetch_assoc($viewcandresult)){?>
						<div class="candidate lightYellow" id="vpinternal" onclick=<?php echo('"cand_onclick('.$viewcandrow['id'].',2)"'); ?>>
							<div class="candidate_photo yellow">
							<div class="candi-image">
							<div class="imagecrop">
								<img src="<?php echo $viewcandrow['candidatepic'];?>" width="100%">
							</div>
							</div>
							</div>
							<div class="candidate_details">
								<input type="text" style = "display:none;" name = "hdn_vp_internal" value="<?php echo ($viewcandrow['first_name']." ".$viewcandrow['middle_name']." ".$viewcandrow['last_name']); ?>" id=<?php echo('"'.$viewcandrow['id'].'hdn"'); ?>>
								<input type="radio" name="vp_internal" value=<?php echo('"'.$viewcandrow['id'].'"'); ?> id=<?php echo('"'.$viewcandrow['id'].'"'); ?>>
								
								<label for="radios"><?php echo($viewcandrow['last_name']); ?></label>
								<h3 for="radios"><?php echo($viewcandrow['first_name']." ".$viewcandrow['middle_name']); ?></h3>
								<p><?php echo($viewcandrow['year_section']); ?></p>
								<p><?php echo($viewcandrow['partylist']); ?></p>
							</div>
						</div>		
					<?php }} ?>

			</div>


			<div class="candidate_container">
				<div class="candidate_position yellow">
					<p>VP EXTERNAL</p>
				</div>
				<!--<div class="candidate">
					<div class="candidate_photo">
						<img src="images/classprofile.png" width="100%">
					</div>
					<div class="candidate_details">
						<input type="radio"  name="vice_chairman" value ="3">
						<label for="radios">Ray Vincent Phillip D. Villaver</label>
						<input type="radio" style="visibility:hidden;" id="" value="<?php echo ($viewcandrow['first_name']." ".$viewcandrow['middle_name']." ".$viewcandrow['last_name']); ?>">
						<p>III-ACSAD</p>
						<i><p>BATAK</p></i>
					</div>
				</div>-->

				<?php
					$viewcandq = "select * from candidates where college like('%$hanapimg)%') and position='VP External'";
					$viewcandresult = mysqli_query($conn,$viewcandq);
					if(mysqli_num_rows($viewcandresult)==0){
						echo("<div class='no lightYellow'><span style='font-size:24px;color:white;text-align:center;'><center>(NO CANDIDATES)</center></span></div>");
					}
					else{
					while($viewcandrow=mysqli_fetch_assoc($viewcandresult)){?>
						<div class="candidate lightYellow" id="vpexternal" onclick=<?php echo('"cand_onclick('.$viewcandrow['id'].',3)"'); ?>>
							<div class="candidate_photo yellow">
							<div class="candi-image">
							<div class="imagecrop">
								<img src="<?php echo $viewcandrow['candidatepic'];?>" width="100%">
							</div>
							</div>
							</div>
							<div class="candidate_details">
								<input type="text" style = "display:none;" name = "hdn_vp_external" value="<?php echo ($viewcandrow['first_name']." ".$viewcandrow['middle_name']." ".$viewcandrow['last_name']); ?>" id=<?php echo('"'.$viewcandrow['id'].'hdn"'); ?>>
								<input type="radio" name="vp_external" value=<?php echo('"'.$viewcandrow['id'].'"'); ?> id=<?php echo('"'.$viewcandrow['id'].'"'); ?>>
								
								<label for="radios"><?php echo($viewcandrow['last_name']); ?></label>
								<h3 for="radios"><?php echo($viewcandrow['first_name']." ".$viewcandrow['middle_name']); ?></h3>
								<p><?php echo($viewcandrow['year_section']); ?></p>
								<p><?php echo($viewcandrow['partylist']); ?></p>
							</div>
						</div>		
					<?php }} ?>

			</div>


			<div class="candidate_container">
				<div class="candidate_position blue">
					<p>SECRETARY</p>
				</div>

				<!--<div class="candidate">
					<div class="candidate_photo">
						<img src="images/classprofile.png" width="100%">
					</div>
					<div class="candidate_details">
						<input type="radio"  name="secretary" value="6">
						<label for="radios">Kathleen Claire D. Saquilayan</label>
						<input type="radio" style="visibility:hidden;" id="" value="<?php echo ($viewcandrow['first_name']." ".$viewcandrow['middle_name']." ".$viewcandrow['last_name']); ?>">
						<p>III-ACSAD</p>
						<i><p>BATAK</p></i>
					</div>
				</div>-->

				<?php
					$viewcandq = "select * from candidates where college like('%$hanapimg)%') and position='Secretary'";
					$viewcandresult = mysqli_query($conn,$viewcandq);
					if(mysqli_num_rows($viewcandresult)==0){
						echo("<div class='no lightBlue'><span style='font-size:24px;color:white;text-align:center;'><center>(NO CANDIDATES)</center></span></div>");
					}
					else{
					
					while($viewcandrow=mysqli_fetch_assoc($viewcandresult)){?>
						<div class="candidate lightBlue" onclick=<?php echo('"cand_onclick('.$viewcandrow['id'].',4)"'); ?>>
							<div class="candidate_photo">
							<div class="candi-image">
							<div class="imagecrop">
								<img src="<?php echo $viewcandrow['candidatepic'];?>" width="100%">
							</div>
							</div>
							</div>
							<div class="candidate_details">
								<input type="text" style = "display:none;" name="hdn_secretary"  value="<?php echo ($viewcandrow['first_name']." ".$viewcandrow['middle_name']." ".$viewcandrow['last_name']); ?>" id=<?php echo('"'.$viewcandrow['id'].'hdn"'); ?>>
								<input type="radio" name="secretary" value=<?php echo('"'.$viewcandrow['id'].'"'); ?> id=<?php echo('"'.$viewcandrow['id'].'"'); ?>>
								<label for="radios"><?php echo($viewcandrow['last_name']); ?></label>
								<h3 for="radios"><?php echo($viewcandrow['first_name']." ".$viewcandrow['middle_name']); ?></h3>
								<p><?php echo($viewcandrow['year_section']); ?></p>
								<p><?php echo($viewcandrow['partylist']); ?></p>
							</div>
						</div>		
					<?php }} ?>
			</div>

			<div class="candidate_container">
				<div class="candidate_position yellow">
					<p>TREASURER</p>
				</div>

				<!--<div class="candidate">
					<div class="candidate_photo">
						<img src="images/classprofile.png" width="100%">
					</div>
					<div class="candidate_details">
						<input type="radio"  name="secretary" value="6">
						<label for="radios">Kathleen Claire D. Saquilayan</label>
						<input type="radio" style="visibility:hidden;" id="" value="<?php echo ($viewcandrow['first_name']." ".$viewcandrow['middle_name']." ".$viewcandrow['last_name']); ?>">
						<p>III-ACSAD</p>
						<i><p>BATAK</p></i>
					</div>
				</div>-->

				<?php
					$viewcandq = "select * from candidates where college like('%$hanapimg)%') and position='Treasurer'";
					$viewcandresult = mysqli_query($conn,$viewcandq);
					if(mysqli_num_rows($viewcandresult)==0){
						echo("<div class='no lightYellow'><span style='font-size:24px;color:white;text-align:center;'><center>(NO CANDIDATES)</center></span></div>");
					}
					else{
					while($viewcandrow=mysqli_fetch_assoc($viewcandresult)){?>
						<div class="candidate lightYellow" onclick=<?php echo('"cand_onclick('.$viewcandrow['id'].',5)"'); ?>>
							<div class="candidate_photo">
							<div class="candi-image">
							<div class="imagecrop">
								<img src="<?php echo $viewcandrow['candidatepic'];?>" width="100%">
							</div>
							</div>
							</div>
							<div class="candidate_details">
								<input type="text" style = "display:none;" name="hdn_treasurer"  value="<?php echo ($viewcandrow['first_name']." ".$viewcandrow['middle_name']." ".$viewcandrow['last_name']); ?>" id=<?php echo('"'.$viewcandrow['id'].'hdn"'); ?>>								
								<input type="radio" name="treasurer" value=<?php echo('"'.$viewcandrow['id'].'"'); ?> id=<?php echo('"'.$viewcandrow['id'].'"'); ?>>
								<label for="radios"><?php echo($viewcandrow['last_name']); ?></label>
								<h3 for="radios"><?php echo($viewcandrow['first_name']." ".$viewcandrow['middle_name']); ?></h3>
								<p><?php echo($viewcandrow['year_section']); ?></p>
								<p><?php echo($viewcandrow['partylist']); ?></p>
							</div>
						</div>		
					<?php }} ?>
			</div>

			<div class="candidate_container">
				<div class="candidate_position blue">
					<p>AUDITOR</p>
				</div>

				<!--<div class="candidate">
					<div class="candidate_photo">
						<img src="images/classprofile.png" width="100%">
					</div>
					<div class="candidate_details">
						<input type="radio"  name="secretary" value="6">
						<label for="radios">Kathleen Claire D. Saquilayan</label>
						<input type="radio" style="visibility:hidden;" id="" value="<?php echo ($viewcandrow['first_name']." ".$viewcandrow['middle_name']." ".$viewcandrow['last_name']); ?>">
						<p>III-ACSAD</p>
						<i><p>BATAK</p></i>
					</div>
				</div>-->

				<?php
					$viewcandq = "select * from candidates where college like('%$hanapimg)%') and position='Auditor'";
					$viewcandresult = mysqli_query($conn,$viewcandq);
					if(mysqli_num_rows($viewcandresult)==0){
						echo("<div class='no lightBlue'><span style='font-size:24px;color:white;text-align:center;'><center>(NO CANDIDATES)</center></span></div>");
					}
					else{
				
					while($viewcandrow=mysqli_fetch_assoc($viewcandresult)){?>
						<div class="candidate lightBlue" onclick=<?php echo('"cand_onclick('.$viewcandrow['id'].',6)"'); ?>>
							<div class="candidate_photo">
							<div class="candi-image">
							<div class="imagecrop">
								<img src="<?php echo $viewcandrow['candidatepic'];?>" width="100%">
							</div>
							</div>
							</div>
							<div class="candidate_details">
								<input type="text" style = "display:none;" name="hdn_auditor" value="<?php echo ($viewcandrow['first_name']." ".$viewcandrow['middle_name']." ".$viewcandrow['last_name']); ?>" id=<?php echo('"'.$viewcandrow['id'].'hdn"'); ?>>								
								<input type="radio" name="auditor" value=<?php echo('"'.$viewcandrow['id'].'"'); ?> id=<?php echo('"'.$viewcandrow['id'].'"'); ?>>
								<label for="radios"><?php echo($viewcandrow['last_name']); ?></label>
								<h3 for="radios"><?php echo($viewcandrow['first_name']." ".$viewcandrow['middle_name']); ?></h3>
								<p><?php echo($viewcandrow['year_section']); ?></p>
								<p><?php echo($viewcandrow['partylist']); ?></p>
							</div>
						</div>		
					<?php }} ?>
			</div>

			<div class="candidate_container">
				<div class="candidate_position blue">
					<p>P.R.O</p>
				</div>

				<!--<div class="candidate">
					<div class="candidate_photo">
						<img src="images/classprofile.png" width="100%">
					</div>
					<div class="candidate_details">
						<input type="radio"  name="secretary" value="6">
						<label for="radios">Kathleen Claire D. Saquilayan</label>
						<input type="radio" style="visibility:hidden;" id="" value="<?php echo ($viewcandrow['first_name']." ".$viewcandrow['middle_name']." ".$viewcandrow['last_name']); ?>">
						<p>III-ACSAD</p>
						<i><p>BATAK</p></i>
					</div>
				</div>-->

				<?php
					$viewcandq = "select * from candidates where college like('%$hanapimg)%') and position='P.R.O'";
					$viewcandresult = mysqli_query($conn,$viewcandq);
					if(mysqli_num_rows($viewcandresult)==0){
						echo("<div class='no lightBlue'><span style='font-size:24px;color:white;text-align:center;'><center>(NO CANDIDATES)</center></span></div>");
					}
					else{
				
					while($viewcandrow=mysqli_fetch_assoc($viewcandresult)){?>
						<div class="candidate lightBlue" onclick=<?php echo('"cand_onclick('.$viewcandrow['id'].',7)"'); ?>>
							<div class="candidate_photo">
							<div class="candi-image">
							<div class="imagecrop">
								<img src="<?php echo $viewcandrow['candidatepic'];?>" width="100%">
							</div>
							</div>
							</div>
							<div class="candidate_details">
								<input type="text" style = "display:none;" name="hdn_pro" value="<?php echo ($viewcandrow['first_name']." ".$viewcandrow['middle_name']." ".$viewcandrow['last_name']); ?>" id=<?php echo('"'.$viewcandrow['id'].'hdn"'); ?>>								
								<input type="radio" name="pro" value=<?php echo('"'.$viewcandrow['id'].'"'); ?> id=<?php echo('"'.$viewcandrow['id'].'"'); ?>>
								<label for="radios"><?php echo($viewcandrow['last_name']); ?></label>
								<h3 for="radios"><?php echo($viewcandrow['first_name']." ".$viewcandrow['middle_name']); ?></h3>
								<p><?php echo($viewcandrow['year_section']); ?></p>
								<p><?php echo($viewcandrow['partylist']); ?></p>
							</div>
						</div>		
					<?php }} ?>
			</div>



			<div class="candidate_container" id="representative_candidate" <?php rep_voting($viewnamerow['year_level'],"3rd Year"); ?> >
				<div class="candidate_position yellow">
					<p>4TH YEAR REPRESENTATIVE</p>
				</div>

				<!--<div class="candidate">
					<div class="candidate_photo">
						<img src="images/classprofile.png" width="100%">
					</div>
					<div class="candidate_details">
						<input type="radio"  name="secretary" value="6">
						<label for="radios">Kathleen Claire D. Saquilayan</label>
						<input type="radio" style="visibility:hidden;" id="" value="<?php echo ($viewcandrow['first_name']." ".$viewcandrow['middle_name']." ".$viewcandrow['last_name']); ?>">
						<p>III-ACSAD</p>
						<i><p>BATAK</p></i>
					</div>
				</div>-->

				<?php
					$viewcandq = "select * from candidates where college like('%$hanapimg)%') and position='4th Year Rep'";
					$viewcandresult = mysqli_query($conn,$viewcandq);
					
					if(mysqli_num_rows($viewcandresult)==0){
						echo("<div class='no lightYellow'><span style='font-size:24px;color:white;text-align:center;'><center>(NO CANDIDATES)</center></span></div>");
					}
					else{
					
					while($viewcandrow=mysqli_fetch_assoc($viewcandresult)){?>
						<div class="candidate lightYellow" onclick=<?php echo('"cand_onclick('.$viewcandrow['id'].',8)"'); ?>>
							<div class="candidate_photo">
							<div class="candi-image">
							<div class="imagecrop">
								<img src="<?php echo $viewcandrow['candidatepic'];?>" width="100%">
							</div>
							</div>
							</div>
							<div class="candidate_details">
								<input type="text" style = "display:none;" name="hdn_4th_year_rep"  value="<?php echo ($viewcandrow['first_name']." ".$viewcandrow['middle_name']." ".$viewcandrow['last_name']); ?>" id=<?php echo('"'.$viewcandrow['id'].'hdn"'); ?>>
								<input type="radio" name="4th_year_rep" value=<?php echo('"'.$viewcandrow['id'].'"'); ?> id=<?php echo('"'.$viewcandrow['id'].'"'); ?>>
								<label for="radios"><?php echo($viewcandrow['last_name']); ?></label>
								<h3 for="radios"><?php echo($viewcandrow['first_name']." ".$viewcandrow['middle_name']); ?></h3>
								<p><?php echo($viewcandrow['year_section']); ?></p>
								<p><?php echo($viewcandrow['partylist']); ?></p>
							</div>
						</div>		
					<?php }} ?>
			</div>

			<div class="candidate_container" id="representative_candidate" <?php rep_voting($viewnamerow['year_level'],"2nd Year"); ?> >
				<div class="candidate_position blue">
					<p>3RD YEAR REPRESENTATIVE</p>
				</div>

				<!--<div class="candidate">
					<div class="candidate_photo">
						<img src="images/classprofile.png" width="100%">
					</div>
					<div class="candidate_details">
						<input type="radio"  name="secretary" value="6">
						<label for="radios">Kathleen Claire D. Saquilayan</label>
						<input type="radio" style="visibility:hidden;" id="" value="<?php echo ($viewcandrow['first_name']." ".$viewcandrow['middle_name']." ".$viewcandrow['last_name']); ?>">
						<p>III-ACSAD</p>
						<i><p>BATAK</p></i>
					</div>
				</div>-->

				<?php
					$viewcandq = "select * from candidates where college like('%$hanapimg)%') and position='3rd Year Rep'";
					$viewcandresult = mysqli_query($conn,$viewcandq);
					if(mysqli_num_rows($viewcandresult)==0){
						echo("<span style='font-size:24px;color:white;text-align:center;'><center>(NO CANDIDATES)</center></span>");
					}
					else{
					while($viewcandrow=mysqli_fetch_assoc($viewcandresult)){?>
						<div class="candidate lightBlue" onclick=<?php echo('"cand_onclick('.$viewcandrow['id'].',9)"'); ?>>
							<div class="candidate_photo">
							<div class="candi-image">
							<div class="imagecrop">
								<img src="<?php echo $viewcandrow['candidatepic'];?>" width="100%">
							</div>
							</div>
							</div>
							<div class="candidate_details">
								<input type="text" style = "display:none;"  name="hdn_3rd_year_rep" value="<?php echo ($viewcandrow['first_name']." ".$viewcandrow['middle_name']." ".$viewcandrow['last_name']); ?>" id=<?php echo('"'.$viewcandrow['id'].'hdn"'); ?>>
								<input type="radio" name="3rd_year_rep" value=<?php echo('"'.$viewcandrow['id'].'"'); ?> id=<?php echo('"'.$viewcandrow['id'].'"'); ?>>
								<label for="radios"><?php echo($viewcandrow['last_name']); ?></label>
								<h3 for="radios"><?php echo($viewcandrow['first_name']." ".$viewcandrow['middle_name']); ?></h3>
								<p><?php echo($viewcandrow['year_section']); ?></p>
								<p><?php echo($viewcandrow['partylist']); ?></p>
							</div>
						</div>		
					<?php }} ?>
			</div>

			<div class="candidate_container" id="representative_candidate" <?php rep_voting($viewnamerow['year_level'],"1st Year"); ?> >
				<div class="candidate_position yellow">
					<p>2ND YEAR REPRESENTATIVE</p>
				</div>

				<!--<div class="candidate">
					<div class="candidate_photo">
						<img src="images/classprofile.png" width="100%">
					</div>
					<div class="candidate_details">
						<input type="radio"  name="secretary" value="6">
						<label for="radios">Kathleen Claire D. Saquilayan</label>
						<input type="radio" style="visibility:hidden;" id="" value="<?php echo ($viewcandrow['first_name']." ".$viewcandrow['middle_name']." ".$viewcandrow['last_name']); ?>">
						<p>III-ACSAD</p>
						<i><p>BATAK</p></i>
					</div>
				</div>-->

				<?php
					$viewcandq = "select * from candidates where college like('%$hanapimg)%') and position='2nd Year Rep'";
					$viewcandresult = mysqli_query($conn,$viewcandq);
					if(mysqli_num_rows($viewcandresult)==0){
						echo("<span style='font-size:24px;color:white;text-align:center;'><center>(NO CANDIDATES)</center></span>");
					}
					else{
					
					while($viewcandrow=mysqli_fetch_assoc($viewcandresult)){?>
						<div class="candidate lightYellow" onclick=<?php echo('"cand_onclick('.$viewcandrow['id'].',10)"'); ?>>
							<div class="candidate_photo">
							<div class="candi-image">
							<div class="imagecrop">
								<img src="<?php echo $viewcandrow['candidatepic'];?>" width="100%">
							</div>
							</div>
							</div>
							<div class="candidate_details">
								<input type="text" style = "display:none;" name="hdn_2nd_year_rep"  value="<?php echo ($viewcandrow['first_name']." ".$viewcandrow['middle_name']." ".$viewcandrow['last_name']); ?>" id=<?php echo('"'.$viewcandrow['id'].'hdn"'); ?>>
								<input type="radio" name="2nd_year_rep" value=<?php echo('"'.$viewcandrow['id'].'"'); ?> id=<?php echo('"'.$viewcandrow['id'].'"'); ?>>
								<label for="radios"><?php echo($viewcandrow['last_name']); ?></label>
								<h3 for="radios"><?php echo($viewcandrow['first_name']." ".$viewcandrow['middle_name']); ?></h3>
								<p><?php echo($viewcandrow['year_section']); ?></p>
								<p><?php echo($viewcandrow['partylist']); ?></p>
							</div>
						</div>		
					<?php }} ?>
			</div>

			<input type = "button" name ="btncast" value = "Cast Vote" id="btnSubmit" data-toggle="modal" data-target="#btnmodalvote">

						<!-- Modal -->
			<div class="modal fade" id="btnmodalvote" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel" >VOTE REVIEW</h4>
			      </div>
			      <div class="modal-body">
			      		<h3>You want to vote this candidate.</h3>
			      		<h3>Please review the list before you vote.</h3>
					<br>
					<p id="demoa"></p>

					<p id="demob"></p>

					<p id="democ"></p>

					<p id="demod"></p>

					<p id="demoe"></p>

					<p id="demof"></p>

					<p id="demog"></p>

					<p id="demoh"></p>

					<p id="demoi"></p>

					<p id="demoj"></p>
					<br><br>

					<div class="modal-body-footer">
						<p><b>Click "Vote" if you want to proceed</b></p>
						<p><b>And close if this is not your desired candidates, and choose again</b></p>
						<p><b>Thank you!</b></p>
					</div>

			      </div>
			      <div class="modal-footer">
			      	<input type = "submit" data-dismiss="modal" class="btn btn-trans" value = "Close" id="btnSubmits">
			        <input type = "submit" class="btn btn-vote" name = "btnSubmit" value = "Vote" id="btnSubmits">
			    </div>
			    </div>
			  </div>
			</div>


		</form>
		
	</div>

</body>
<?php
	if(isset($_POST['btnSubmit'])){
		function vote_add($student_id,$candidate_id){
			$conn = mysqli_connect("localhost","root","","ccsvoting2017");
			$votequery = "insert into votes(student_id,candidate_id,date_time) values('".$student_id."','".$candidate_id."',now())";
			mysqli_query($conn,$votequery);
		}
		//echo("<script>alert('131');</script>");
		//$chairman = $_POST['v_chairman'];
		if(isset($_POST['president'])){
			$chairman = $_POST['president'];
			vote_add($_SESSION['student_id'],$chairman);
			insert_log($_SESSION['student_id'],"Voted for",$chairman);
		}
		if(isset($_POST['vp_internal'])){
			$position = $_POST['vp_internal'];
			vote_add($_SESSION['student_id'],$position);
			insert_log($_SESSION['student_id'],"Voted for",$position);
		}
		if(isset($_POST['vp_external'])){
			$position = $_POST['vp_external'];
			vote_add($_SESSION['student_id'],$position);
			insert_log($_SESSION['student_id'],"Voted for",$position);
		}
		if(isset($_POST['secretary'])){
			$position = $_POST['secretary'];
			vote_add($_SESSION['student_id'],$position);
			insert_log($_SESSION['student_id'],"Voted for",$position);
		}
		if(isset($_POST['treasurer'])){
			$position = $_POST['treasurer'];
			vote_add($_SESSION['student_id'],$position);
			insert_log($_SESSION['student_id'],"Voted for",$position);
		}
		if(isset($_POST['auditor'])){
			$position = $_POST['auditor'];
			vote_add($_SESSION['student_id'],$position);
			insert_log($_SESSION['student_id'],"Voted for",$position);
		}
		if(isset($_POST['pro'])){
			$position = $_POST['pro'];
			vote_add($_SESSION['student_id'],$position);
			insert_log($_SESSION['student_id'],"Voted for",$position);
		}
		if(isset($_POST['4th_year_rep'])){
			$position = $_POST['4th_year_rep'];
			vote_add($_SESSION['student_id'],$position);
			insert_log($_SESSION['student_id'],"Voted for",$position);
		}
		if(isset($_POST['3rd_year_rep'])){
			$position = $_POST['3rd_year_rep'];
			vote_add($_SESSION['student_id'],$position);
			insert_log($_SESSION['student_id'],"Voted for",$position);
		}
		if(isset($_POST['2nd_year_rep'])){
			$position = $_POST['2nd_year_rep'];
			vote_add($_SESSION['student_id'],$position);
			insert_log($_SESSION['student_id'],"Voted for",$position);
		}
		include "smsGateway.php";
		$smsGateway = new SmsGateway('kim_patrick001@yahoo.com', 'Rinskf0ksfS6ksAlLj7IngmaEs1');
		$numberwho = $_GET['contact_num'];
		$deviceID = 39768;
		//$number = '+63'.$numberwho;
		$message = 'Thank You!!!';
		/*
		$message = 'Thank you for voting! <br> you have voted the following. <br> <br> $chairman, for the Chairman position <br>
		 $vice_chairman, for the Vice-Chairman <br> $secretary, for the Secretary <br>
		  $treasurer, for the Treasurer <br> $auditor, for the Auditor <br> 
		  $trd_year_rep, for the 3rd year Representative <br> $snd_year_rep, for the 2nd year Representative <br>
		  $fst_year_rep, for the 1st year Representative';*/
		$options = [
		'send_at' => strtotime('+1 minutes'), // Send the message in 1 minutes
		'expires_at' => strtotime('+3 hour') // Cancel the message in 1 hour if the message is not yet sent
		];
		//Please note options is no required and can be left out
		$result = $smsGateway->sendMessageToNumber($numberwho, $message, $deviceID);
		//mark as already voted
		$alreadyvotedq = "update enabled_students set already_voted=1 where student_id='".$_SESSION['student_id']."'";
		//echo("<script>alert('".$alreadyvotedq."');window.location='index.php';</script>");
		mysqli_query($conn,$alreadyvotedq);
		//end of mark as already voted
		insert_log($_SESSION['student_id'],"Done Voting",null);
		session_unset();									
		session_destroy();
		echo("<script>window.location='index.php';</script>");
	}
?>


<script type="text/javascript">
	// var chairman = document.getElementById('chairman');
	// function 
</script>
</html>