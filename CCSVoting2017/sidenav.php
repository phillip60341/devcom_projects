<?php 
include("resources.php");

if (!loggedin())
{
header ("Location: Adminlog.php");
exit();
}

?>

<!DOCTYPE HTML>

<html>
<head>

	<link rel="icon" type="image/ico" href="img/umak.png">
	<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="font-awesome-4.5.0/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="font-awesome-4.5.0/css/font-awesome.min.css">

	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<link rel="stylesheet" type="text/css" href="css/circle.css">

	<style type="text/css">


.fa {
	font-size: 25px;
	color: black;
}

	</style>
</head>


<body>
<div class="container-fluid container-style">

	<nav class="navbar navbar-default nav-design">
	  <div class="container-fluid nav-design-contain">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <a class="navbar-brand" href="AdminHome.php"><img src="img/umak.png"></a>
	      <a class="navbar-brand" href="AdminHome.php"><img src="img/ssg.png"></a>
	    </div>

	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	   			<div class="title-head">
	   				<p><a href="enabling.php">Enable a student</a> &nbsp; &nbsp;<i class="fa fa-user"></i> Welcome Admin &nbsp; &nbsp; <a href="adminlogout.php"><i class="fa fa-sign-out"></i></a></p>
	   			</div>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>

</div>

</body>

</html>