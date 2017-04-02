<?php 
include("resources.php");

if (!loggedin())
{

$url = "enabling.php";
$_SESSION['url'] = $url;

header ("Location: Adminlog.php?url=$url");
exit();
}



?>


<!DOCTYPE html>

<html>

<head>
	<title>USC Election 2017</title>
	<link rel="icon" type="image/ico" href="img/umak.png">

	<link rel="stylesheet" type="text/css" href="css/admin.css">

	<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="font-awesome-4.5.0/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="font-awesome-4.5.0/css/font-awesome.min.css">


<style type="text/css">
body {
	font-family: century gothic;
	background-image: url(img/tapet_2015-11-30_01-29-46_081_1366x768.png);
	background-size: 100%;
}


</style>

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

	<p class="eventName">Election</p>
	<p class="eventOrganizer">University Student</p>
	<p class="eventOrganizer2">Council</p>
	<p class="year">2017</p>
</div>


<div class="userlogin">

	<div class="logos">

		<div class="ssglogo">
			<img src="images/umak.png">
		</div>

		<div class="umaklogo">
			<img src="images/ssg.png">
		</div>
	</div>

	<div class="logform">

		<div class="propic">
			<img src="images/classprofile.png">
		</div><br>

		<form action = "enable_php.php" method = "post">
			<table>
				<tr>
					<td><label>Student Number:</label></td>
				</tr>
				<tr>
					<td><input type="text" name = "student_id" maxlength = "9" AUTOFOCUS="AUTOFOCUS"></td>
				</tr>

			</table>
				<center>
					<input type="submit" name="btnsubmit" value="Enable Student">
				</center>
		</form>

		<div class="buttons">

			<a href="adminhome.php" class="btno"><i class="fa fa-home"></i></a>
			<a href="adminlogout.php" class="btn"><i class="fa fa-sign-out"></i></a>

		</div>
	</div>

</div>

<div class="time">
	<div class="date">
		<p id="month">FEB</p>
		<p id="day">FRIDAY</p>
		<p id="nuday">10</p>
		<p id="nudate"></p>
	</div>
</div>

</body>


</html>