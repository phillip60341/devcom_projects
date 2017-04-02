<!DOCTYPE HTML>
<?php include("connection.php"); ?>
<html>
<head>
	<title></title>
	<link href="css/jquery.bdt.css" type="text/css" rel="stylesheet">
    <link href="css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/studrecord.css">
</head>

<body>
	<div class="main">
		<p id="stud">STUDENTS</p>
		<p id="rec">RECORDS</p>
		<a href="editevent.php" id="evnt">EVENTS</a>
		<form>
			<table>
				<tr>
					<td><label>SEARCH: </label></td><td><input type="text" name="search" id="search"></td>
				</tr>
			</table>
			<!--<table id="selectid">
				<tr>
					<td><label>PROGRAM: </label></td>
					<td>
						<select id="prog">
							<option>APPDEV</option>
							<option>NETADD</option>
							<option>ITSM</option>
						</select>
					</td>
					<td><label id="lvll">LEVEL: </label></td>
					<td>
						<select id="lvl">
							<option>First Year</option>
							<option>Second Year</option>
							<option>Third Year</option>
							<option>Fourth Year</option>
						</select>
					</td>
				</tr>
			</table>-->
		</form>
<div class="container">
    <div class="row">
        <div class="col-md-8">
        	<div class="Studentinfo">
	            <table class="table table-hover table-striped" id="bootstrap-table">
	                <thead>
		                <tr>
		                    <th>ID</th>
		                    <th>NAME</th>
		                    <th>YEAR LEVEL</th>
		                    <th>TIME IN</th>
		                    <th></th>
		                </tr>
	                </thead>
	                <tbody>
						<?php
				//$viewquery = "select studenttbl.last_name,studenttbl.first_name,studenttbl.mid_name,studenttbl.program,studenttbl.year_level,event1.student_id from event1 join studenttbl where studenttbl.student_id=event1.student_id order by last_name";
				$viewquery = "select studenttbl.student_name,event5.time_in,studenttbl.student_section,event5.student_id from event5 join studenttbl where studenttbl.student_idnumber=event5.student_id order by student_name";
				$viewresult = mysqli_query($connection,$viewquery);
				while($row = mysqli_fetch_assoc($viewresult)){
					$time_in = date_format(date_create($row['time_in']),"h:i:s A d/m/Y");
					echo("
					<tr>
					<td>".$row['student_id']."</td><td>".$row['student_name']."</td><td>".$row['student_section']."</td><td>".$time_in."</td>
					</tr>
					");
				}
				?>
	                </tbody>
	            </table>
            </div>
        </div>
    </div>
</div>

		<div class="attendees">
			<p>NUMBER OF ATTENDEES: <?php
			//$countsql = "select count(*) from event4";
			$countsql = "select count(studenttbl.student_name) as 'count(*)' from event5 join studenttbl where studenttbl.student_idnumber=event5.student_id order by student_name";
			$result = mysqli_query($connection,$countsql);
			$number = mysqli_fetch_assoc($result);
			echo($number["count(*)"]);
			?> students</p>
		</div>
		
		<!--<div class="buttons">
			<button>ATTENDEES</button>
			<button>ABSENT</button>
			<button>LATE</button>
		</div>-->

	</div>



<script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/vendor/jquery.sortelements.js" type="text/javascript"></script>
<script src="js/jquery.bdt.js" type="text/javascript"></script>
<script>
    $(document).ready( function () {
        $('#bootstrap-table').bdt();
    });
</script>
</body>

</html>