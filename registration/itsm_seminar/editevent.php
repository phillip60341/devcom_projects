<!DOCTYPE HTML>

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
			<a href="editevent.php" id="edits">EDIT EVENT</a>
			<a href="createevent.php" id="creates">CREATE EVENT</a>
		</div>

		<div class="form">
			<p>EDIT | EVENTS</p>

			<form>
				<table>
					<tr>
						<td><label>Event Name: </label></td><td><input type="text"></td>
					</tr>
					<tr>
						<td><label>Venue: </label></td><td><input type="text"></td>
					</tr>
					<tr>
						<td><label>Event Date: </label></td><td><input type="text" placeholder = "YYYY-MM-DD"></td>
					</tr>
				</table>
				<table>
					<tr>
						<td><label id="start">Start Time: </label></td>
						<td>
							<select>
								<option>8:00AM</option>
							</select>
						</td>
						<td><label id="end">End Time: </label></td>
						<td>
							<select>
								<option>8:00AM</option>
							</select>
						</td>
					</tr>
				</table>
				<input type="submit" value="SAVE CHANGES">
			</form>
		</div>
	
	</div>

</body>

</html>