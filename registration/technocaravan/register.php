<!DOCTYPE HTML>
<html>
<?php
include ("connection.php");
?>
<head>
	<title>TechnoCaravan Registration</title>
	<link rel="stylesheet" type="text/css" href="css/indexreg.css">
</head>

<body onload = "disp_time()">
<script>
	myVar = setInterval("disp_time()",1000);
	
	function addZero(i) {
    if (i < 10) {
        i = "0" + i;
    }
    return i;
	}
	
	function disp_time(){
		var x = new Date();
		var hh = addZero(x.getHours());
		var mm = addZero(x.getMinutes());
		var ss = addZero(x.getSeconds());
		document.getElementById('nudate').innerHTML= hh + ":" + mm + ":" + ss;
	}
	
	document.onkeydown = function (e) {
		if(e.which == 49){
		document.getElementById('rad_year1').checked = true;
		}
		
		switch(e.which){
			case 81:
			document.getElementById('rad_s_major1').checked = true;
			break;
			
			case 87:
			document.getElementById('rad_s_major2').checked = true;
			break;
			
			case 69:
			document.getElementById('rad_s_major3').checked = true;
			break;
			
			case 65:
			document.getElementById('rad_s_section1').checked = true;
			break;
			
			case 83:
			document.getElementById('rad_s_section2').checked = true;
			break;
			
			case 68:
			document.getElementById('rad_s_section3').checked = true;
			break;
			
			case 90:
			document.getElementById('rad_year1').checked = true;
			break;
			
			case 88:
			document.getElementById('rad_year2').checked = true;
			break;
			
			case 67:
			document.getElementById('rad_year3').checked = true;
			break;
			
			case 86:
			document.getElementById('rad_year4').checked = true;
			break;
			
			default:
		}
}
</script>
<div class="heading">

	<div class="eventtitle">

		<p id="gen" >Tech Caravan</p>
		<p id="year" >2016</p>
		<p id="uni" >UNIVERSITY OF MAKATI</p>
		<p id="col" >COLLEGE OF COMPUTER SCIENCE</p>
		<p id="grand">MAIN THEATER | 1:00 PM - 6:00 PM</p>
		

	</div>

	<div class="attendees">
		<p id="numero">
			<?php
			$countsql = "select count(*) from event2";
			$result = mysqli_query($connection,$countsql);
			$number = mysqli_fetch_assoc($result);
			echo($number["count(*)"]);
			?>
			/
			<?php
			$countsql = "select count(*) from studenttbl";
			$result = mysqli_query($connection,$countsql);
			$number = mysqli_fetch_assoc($result);
			echo($number["count(*)"]);
			?>
		</p>
		<p id="number">Number of Attendees: </p>
		
	</div>

</div>

<div class="userlogin">

	<div class="logos">
		<div class="umaklogo">
			<img src="images/umak.png">
		</div>

		<div class="ccslogo">
			<img src="images/CCS.png">
		</div>

		<div class="comsoclogo">
			<img src="images/comsoc.png">
		</div>
	</div>

	<div class="logform">

		<div class="propic">
			<img src="images/classprofile.png">
		</div>

		<form action = "" method = "post">
			<table>
				<tr>
					<td><label>Student Number:</label></td>
				</tr>
				<tr>
				<tr>
					<td><input type="text" name = "student_id" maxlength = "8" required></td>
				</tr>
				<tr>
					<td><label>Last Name:</label></td>
				</tr>
				<tr>
				<tr>
					<td><input type="text" name = "last_name" required></td>
				</tr>
				<tr>
					<td><label>First Name</label></td>
				</tr>
				<tr>
				<tr>
					<td><input type="text" name = "first_name" required></td>
				</tr>
				<tr>
					<td><label>Middle Name</label></td>
				</tr>
				<tr>
				<tr>
					<td><input type="text" name = "mid_name" required></td>
				</tr>
				<tr>
					<td><label>Gender</label></td>
				</tr>
				<tr>
				<tr>
					<td>
						<input type = "radio" name = "gender" value = "Male" id = "rad_gender1" checked> Male</input>
						<input type = "radio" name = "gender" value = "Female" id = "rad_gender2"> Female</input>
					</td>
				</tr>
				<tr>
					<td><label>Program</label></td>
				</tr>
				<tr>
					<td>
						<input type = "radio" name = "s_major" value = "ITSM" id = "rad_s_major1" checked> ITSM</input>
						<input type = "radio" name = "s_major" value = "CSAD" id = "rad_s_major2"> APPDEV</input>
						<input type = "radio" name = "s_major" value = "CNA" id = "rad_s_major3"> NETAD</input>
					</td>
				</tr>
				<tr>
					<td><label>Section</label></td>
				</tr>
				<tr>
					<td>
						<input type = "radio" name = "s_section" value = "A" id = "rad_s_section1" checked>A</input>
						<input type = "radio" name = "s_section" value = "B" id = "rad_s_section2">B</input>
						<input type = "radio" name = "s_section" value = "C" id = "rad_s_section3">C</input>
					</td>
				</tr>
				<tr>
					<td><label>Year Level</label></td>
				</tr>
				<tr>
					<td>
						<input type = "radio" name = "year" value = " I" id = "rad_year1" checked> 1st</input>
						<input type = "radio" name = "year" value = " II" id = "rad_year2"> 2nd</input>
						<input type = "radio" name = "year" value = " III" id = "rad_year3"> 3rd</input>
						<input type = "radio" name = "year" value = " IV" id = "rad_year4"> 4th</input>
					</td>
				</tr>
			</table>
				<center>
					<input type="submit" name="btnsubmit" value = "Register + Login">
				</center>
		</form>
	</div>

	<div class="date">
		<p id="month">JULY</p>
		<p id="day">WED</p>
		<p id="nuday">20</p>
		<p id="nudate"></p>
	</div>

</div>

</body>
<?php
	if(isset($_POST['btnsubmit'])){
		$id_number = strtoupper(" ".$_POST['student_id']);
		$name = strtoupper(" ".$_POST['first_name']." ".$_POST['mid_name']." ".$_POST['last_name']);
		
		$gender = $_POST['gender'];
		$s_section = $_POST['s_section'];
		$s_major = $_POST['s_major'];
		$year = $_POST['year'];
		switch($s_major){
			case "ITSM":
				$major = " BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT";
				break;
			case "CSAD":
				$major = " BACHELOR OF SCIENCE IN COMPUTER SCIENCEMAJOR IN APPLICATION DEVELOPMENT";
				break;
			case "CNA":
				$major = " BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION";
				break;
			default:
		}
		$section = $year."-".$s_section.$s_major;
		echo("<script>alert('".$section."')</script>");
		
		//something
		$checksql = "select * from tbl_students where id_number='".$id_number."'";
		$checkresult = mysqli_query($connection,$checksql);
		if(mysqli_num_rows($checkresult)==0){
			$addsql = "insert into tbl_students(id_number,name,section,course,major,sex) values('".$id_number."','".$name."','".$section."',' COLLEGE OF COMPUTER SCIENCE','".$major."','".$gender."')";
			mysqli_query($connection,$addsql);
			echo("<script>alert('Entry added to database');</script>");
			
			$addquery = "insert into event2 values('".$id_number."',now())";
			mysqli_query($connection,$addquery);
			echo("<script>alert('You have been registered. Thank you!');window.location='index.php';</script>");
		}
		else{
			echo("<script>alert('You are already registered in the CCS database');window.location='index.php';</script>");
		}
		//end something
		
		// $addsql = "insert into tbl_students(id_number,name,section,course,major) values('".$id_number."','".$name."','".$section."',' COLLEGE OF COMPUTER SCIENCE','".$major."')";
		// mysqli_query($connection,$addsql);
		// echo("<script>alert('Entry added to database');</script>");
		
		// $addquery = "insert into event2 values('".$id_number."',now())";
		// mysqli_query($connection,$addquery);
		// echo("<script>alert('You have been registered. Thank you!');window.location='index.php';</script>");
	}
?>
</html>