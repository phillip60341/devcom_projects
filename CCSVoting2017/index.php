<!DOCTYPE html>
<?php include('resources.php'); ?>

<html>

<head>
	<title>USC Election 2017</title>
	<link rel="icon" type="image/ico" href="img/coselLogo.png">
	<link rel="stylesheet" type="text/css" href="css/index.css">
</head>


<body class="back">
	<div class="leftContainer">
		<div class="logoContainer">
			<div class="umakLogo">
				<img src="img/umak.png">
			</div>

			<div class="uscLogo">
				<img src="img/ssg.png">
			</div>

			<div class="coselLogo">
				<img src="img/coselLogo.png">
			</div>


		</div>

		<div class="titleContainer">
			<div class="cosel">
				<p>Commission on Students Election</p>
			</div>

			<div class="usc">
				<img src="img/usc.png">
			</div>

			<div class="year2017">
				<p>2017</p>
			</div>

			<div class="election">
				<p>ELECTION</p>
			</div>
		</div>

	</div>
			<div class="humanLogo">
				<img src="img/Group 1.png">
			</div>
	<div class="rightContainer">
		<div class="loginContainer">
			<p class="welcome">Welcome</p>

			<form action="" method="POST">
				<table>
					<tr>
						<td><p>Student Number:</p></td>
					</tr>
					<tr>
						<td><input type="text" name = "student_id" maxlength = "9" AUTOFOCUS="AUTOFOCUS" placeholder="Your ID Number.."></td>
					</tr>

					<tr>
						<td><p>Contact Number:</p></td>
					</tr>
					<tr>
						<td><input type="text" name = "contact_num" maxlength = "11" AUTOFOCUS="AUTOFOCUS" placeholder="09123456789 (Optional)"></td>
					</tr>
					<tr>
						<td><p class="warning" style="color: #2F5597">Optional to receive a notification about your votes</p></td>
					</tr>

				</table>
				<center>
					<input type="submit" name="btnSubmit" value="LOGIN">
				</center>
			</form>
		</div>
	</div>
</body>

<?php
   if(isset($_POST["btnSubmit"])){
      $username = filter_var($_POST["student_id"],FILTER_SANITIZE_STRING);
      $contact_num = $_POST['contact_num'];

      $loginq = "select * from enabled_students where student_id='".$username."'";
      $loginr = mysqli_query($conn,$loginq);
		
      if(mysqli_num_rows($loginr)==0){
         echo("<script>alert('Wrong ID number, or not yet activated');</script>");
      }
      //successful login
      else{
			$row = mysqli_fetch_assoc($loginr);
			if($row['already_voted']==1){
				echo("<script>alert('You have voted already');window.location='index.php';</script>");	
			}
			else{
				$_SESSION['student_id'] = $row['student_id'];
				// echo($_SESSION['student_id']);
				insert_log($row['student_id'],"Logged in to the voting system (voter)",null);
				echo("<script>window.location='voting.php?contact_num=$contact_num';</script>");
			}    
      }
   }
?>


</html>