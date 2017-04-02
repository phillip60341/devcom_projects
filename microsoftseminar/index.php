<!DOCTYPE HTML>
<html>
<?php
include ("connection.php");
?>
<head>
	<title>ComSoc Registration</title>
	<link rel="stylesheet" type="text/css" href="css/index.css">
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
	if((e.which == 123)||e.which == 122){
		alert("asa bes...nonono sa F12 :D\n\nLabrador,Verde,Villaver");
		return false;
	}
}
</script>
<div class="heading">

	<div class="eventtitle">

		<p id="gen" >Microsoft Seminar</p>
		<p id="year" >2017</p>
		<p id="uni" >UNIVERSITY OF MAKATI</p>
		<p id="col" >COLLEGE OF COMPUTER SCIENCE</p>
		<p id="grand">MINI THEATER | 9:00AM - 4:00PM</p>
		
	</div>

	<div class="attendees">
		<p id="numero">
			<?php
			$countsql = "select count(*) from event5";

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
					<td><input type="text" name = "student_id" maxlength = "8" AUTOFOCUS="FOCUS"></td>
				</tr>
				<!--ENABLE SECTION DROPDOWN-->
				<tr>
					<td><label>Year and Section:</label></td>
				</tr>
				<tr>
					<td><select name = "student_section">
						<option value="I-ACSAD">I-ACSAD</option>
						<option value="I-BCSAD">I-BCSAD</option>
						<option value="I-ACNA">I-ACNA</option>
						<option value="I-BCNA">I-BCNA</option>
						<option value="I-AITSM">I-AITSM</option>
						<option value="I-BITSM">I-BITSM</option>
						<option value="I-CITSM">I-CITSM</option>
						<option value="II-ACSAD">II-ACSAD</option>
						<option value="II-BCSAD">II-BCSAD</option>
						<option value="II-ACNA">II-ACNA</option>
						<option value="II-BCNA">II-BCNA</option>
						<option value="II-AITSM">II-AITSM</option>
						<option value="II-BITSM">II-BITSM</option>
						<option value="II-CITSM">II-CITSM</option>
						<option value="III-ACSAD">III-ACSAD</option>
						<option value="III-BCSAD">III-BCSAD</option>
						<option value="III-ACNA">III-ACNA</option>
						<option value="III-BCNA">III-BCNA</option>
						<option value="III-AITSM">III-AITSM</option>
						<option value="III-BITSM">III-BITSM</option>
						<option value="III-CITSM">III-CITSM</option>
						<option value="IV-ACSAD">IV-ACSAD</option>
					</select></td>
				</tr>
				<!--END OF ENABLE SECTION DROPDOWN-->
			</table>
				<center>
					<input type="submit" name="btnsubmit">
				</center>
		</form>
	</div>

	<div class="date">
		<p id="month">FEB</p>
		<p id="day">SATURDAY</p>
		<p id="nuday">18</p>
		<p id="nudate"></p>
	</div>

</div>

</body>
<?php
	if(isset($_POST['btnsubmit'])){
		$student_id = $_POST['student_id'];
		$student_id = filter_var($student_id,FILTER_SANITIZE_STRING);
		//check if meron sa database ng student
		$checksql = "SELECT * FROM studenttbl WHERE student_idnumber='$student_id'";
		$checksqlresult = mysqli_query($connection,$checksql);
		//no record
		if(mysqli_num_rows($checksqlresult)==0){
			echo("<script>alert('There is no such student ID stored in the database. Approach the server about this problem or consider re-entering your student ID number.');window.location='index.php';</script>");
		}
		//have record
		else{
			
			// DROPDOWN FOR STUDENT SECTION
			$student_section = $_POST['student_section'];
			$addsection = "UPDATE studenttbl SET student_section='$student_section' WHERE student_idnumber='$student_id' ";
			mysqli_query($connection,$addsection);
			// END OF DROPDOWN FOR STUDENT SECTION

			//check if nakapaglogin na sya
			$checksql1 = "select * from event5 where student_id='".$student_id."'"; 
			$checksqlresult1 = mysqli_query($connection,$checksql1);
			//pag hindi pa
			if(mysqli_num_rows($checksqlresult1)==0){
				$addquery = "insert into event5 values('".$student_id."',now())";
				mysqli_query($connection,$addquery);
				
				$row = mysqli_fetch_assoc($checksqlresult);
				
				echo("<script>alert('".$row['student_name'].", You have been registered. Thank you!');window.location='index.php';</script>");
			}
			//pag-nakalogin na
			else{
				echo("<script>alert('You already have been registered in into this event. If you think this is a mistake, approach the server for this problem.');window.location='index.php';</script>");
			}
		}
	}
?>
</html>
<!--
line 121: minodify yung format ng student_id (or id_number) para magcomply sa database
-->