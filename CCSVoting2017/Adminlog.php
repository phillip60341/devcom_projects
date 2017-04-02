<?php 

include ('resources.php');



if (loggedin())
{
$url = $_SESSION['url'];
if (!isset($url) ) {
	header ("Location: AdminHome.php");
exit();
}

else {
	header("Location: $url");
	exit();
}

}
?>




<!DOCTYPE HTML>
<html>

<head>
	<title>Voting System | ADMIN LOGIN</title>
	<link rel="icon" type="image/ico" href="img/umak.png">
	<link rel="stylesheet" type="text/css" href="css/admin.css">

<style type="text/css">
body {
	font-family: century gothic;
	background-image: url(img/tapet_2016-02-20_20-24-15_009_1366x768.png);
	background-size: 100%;
}


</style>

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


</head>

<body>










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

			<form action="Adminlog.php" method="POST">
				<input type="text" name="username" placeholder="Username" required>
				<input type="password" name="password" placeholder="Password" required>

				<input type="submit" value="SUBMIT" name="submit">
			</form>
	</div>

</div>

<div class="time">
	<div class="date">
		<p id="month">FEB</p>
		<p id="day"><?php echo date("l");?></p>
		<p id="nuday"><?php echo date("d"); ?></p>
		<p id="nudate"></p>
	</div>
</div>








</body>

</html>

<?php 

if (!isset($_POST['submit'])){

	echo "";

}


else if (isset($_POST['submit'])){

	$username = filter_var($_POST['username'],FILTER_SANITIZE_STRING);
	$password = filter_var($_POST['password'],FILTER_SANITIZE_STRING);

	$selectlogin = "SELECT * from admin where username='$username' AND password='$password'";
	$result = mysqli_query($conn,$selectlogin);
	if (mysqli_num_rows($result)>0){

		$row = mysqli_fetch_array($result);

		$user = $row['username'];
		$pass = $row['password'];

		$_SESSION['Username'] = $user;
		setcookie('Username', $user, time ()+7200);
		insert_log("ADMIN","Logged in to the system (Admin)",null);
		echo "
			<script>window.location.reload()</script>
		";
		
		exit();
	}

	else {
		echo "<script>alert('your password is wrong');</script>";
	}
}


?>