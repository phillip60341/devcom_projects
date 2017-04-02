<!DOCTYPE HTML>
<?php include("connection.php"); ?>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/event.css">
</head>

<body>
	<div class="main">

		<div class="heading">
			<h1 id="h11">EVENT</h1>
			<h1 id="h12">SETTING</h1>
		</div>

		<div class="selection">
			<a href="editevent.php" id="edit">EDIT EVENT</a>
			<a href="createevent.php" id="create">CREATE EVENT</a>
		</div>

		<div class="form">
			<p>CREATE | EVENT</p>

			<form action = "" method = "post">
				<table>
					<tr>
						<td><label>Event Name: </label></td><td><input type="text" name = "event_name"></td>
					</tr>
					<tr>
						<td><label>Venue: </label></td><td><input type="text" name = "event_venue"></td>
					</tr>
					<tr>
						<td><label>Event Date: </label></td><td><input type="text" placeholder = "YYYY-MM-DD" name = "event_date"></td>
					</tr>
				</table>
				<table>
					<tr>
						<td><label id="start">Start Time: </label></td>
						<td>
							<select name = "event_start">
								<option>8:00AM</option>
							</select>
						</td>
						<td><label id="end">End Time: </label></td>
						<td>
							<select name = "event_end">
								<option>8:00AM</option>
							</select>
						</td>
					</tr>
				</table>
				<input type="submit" value="SAVE EVENT" name = "btnSaveEvent">
			</form>
		</div>
	
	</div>
	<?php
		if(isset($_POST['btnSaveEvent'])){
			$aequery = "insert into eventstbl (event_name,event_venue,event_date,event_start,event_end) values ('".$_POST['event_name']."','".$_POST['event_venue']."','".$_POST['event_date']."','".$_POST['event_start']."','".$_POST['event_end']."')";
			
			//$aequery = "ha?";
			mysqli_query($connection,$aequery);
			echo("<script>alert('Event Saved');</script>");
		}
	?>
</body>

</html>