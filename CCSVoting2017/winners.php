<!DOCTYPE HTML>
<html>

<head>
	<title>Voting System | ADMIN LOGIN</title>
	<link rel="icon" type="image/ico" href="img/umak.png">
</head>

<body>
	<?php include('sidenav.php');?>

			<?php 

			$college = $_GET['college'];

			$sql = "SELECT * FROM college where college='$college'";
				$result = mysqli_query($conn,$sql);


				if (mysqli_num_rows($result)>0){
				$row = mysqli_fetch_array($result);
					

					// echo " ";
					$id = $row['id'];
					$college = $row["college"];
					$picture = $row['picture'];
					$college_abr = $row['college_abr'];

					// $collegecountq = "select count(*) as lahat from students where college like('%".$college_abr.")')";
					$collegecountq = "select count(*) as lahat from students where college='".$college_abr."'";
					$collegecountresult = mysqli_query($conn,$collegecountq);
					$collegecountrow = mysqli_fetch_assoc($collegecountresult);

					$college_countq = "select count(distinct(students.student_id)) as bilang,students.college from votes inner join students where votes.student_id=students.student_id and college='".$college_abr."' group by college;";
					$college_countresult = mysqli_query($conn,$college_countq);
					$college_countrow = mysqli_fetch_assoc($college_countresult);

					if($college_countrow['bilang']==""){
						$college_bilang = 0;
					}
					else{
						$college_bilang = $college_countrow['bilang'];
					}
				}

				
		?>

<div class="container-fluid container-style">
	<div class="page-header header-page">
	  <h2>VOTING RESULT</h2>
	  <h3><?php echo $college;?></h3>
	  <h4><?php echo($college_bilang."/".$collegecountrow['lahat']);$allvotepercent=number_format(($college_bilang/$collegecountrow['lahat']),4); ?> has voted (<?php echo($allvotepercent * 100); ?>%)</h4>
	</div>

	<div class="row">

	<div class="col-sm-6 col-md-12">

					<table class="table table-hover">

							<col width="20%"></col>
							<col width="25%"></col>
							<col width="10%"></col>
							<col width="5%"></col>
							<col width="55%"></col>

				      	<tbody>

				      			<thead>
				      				<tr>
				      					<td>Position</td>
				      					<td>Name</td>
				      					<td>Party</td>
				      					<td>Votes</td>
				      					<td>Rate</td>
				      				</tr>
				      			</thead>

										<?php 

											$college = $_GET['college'];

											$sql = "SELECT * FROM candidates where college='$college'";
												$result = mysqli_query($conn,$sql);


												if (mysqli_num_rows($result)>0){
												while ($row = mysqli_fetch_array($result)){
													

													echo " ";
													$lname = $row['last_name'];
													$fname = $row['first_name'];
													$mname = $row['middle_name'];
													$partylist = $row['partylist'];
													$position = $row['position'];

													 $mi = substr($mname, -1);

													?>
													



					      			<tr>
					      				<td><b><?php echo $position;?></b></td><td><?php echo ("$lname, $fname $mi.");?></td>
					      				<td><?php echo $partylist;?></td>
											<!--try-->
											<?php
												$countq = "select count(*) as bilang from votes where candidate_id=".$row['id'];
												$countresult = mysqli_query($conn,$countq);
												$countrow = mysqli_fetch_assoc($countresult);
											?>
											<!--try-->
					      				<td>
											<?php
											if($college_bilang==0){
												echo($countrow['bilang']."/".$college_bilang);$percent = 0;
											}
											else{
												echo($countrow['bilang']."/".$college_bilang);$percent = number_format(($countrow['bilang']/$college_bilang),4)*100;
											}
											 
											?>
										</td>
					      				<td>
					      					<div class="progress">
												<div class="progress-bar progress-bar-primary progress-bar-striped" role="progressbar" aria-valuenow="<?php echo($percent);?>" aria-valuemin="0" aria-valuemax="100" style="width: <?php echo($percent);?>%">
													<?php echo($percent)."%";
													?> 
												</div>
											</div>
										</td>
									</tr>


	  <?php 
	  		}
	  						}
					else {
					echo " ";
					}

	  ?>
			<a href="<?php echo "winnerspdf.php?college=$college";?>" class="btn btn-primary">OPEN PDF</a>
				      	</tbody>

				    </table>

	</div>

	</div>
</div>

</body>

</html>