<!DOCTYPE HTML>
<html>

<head>
	<title>Voting System | ADMIN LOGIN</title>
	<link rel="icon" type="image/ico" href="img/umak.png">
</head>

<body>
	<?php include('sidenav.php');?>




<div class="container-fluid container-style">
	<div class="page-header header-page">
	  <h2>Colleges | University Student Council</h2>
	</div>

	  
	<div class="add-college">
			<?php


					$votesSql = "SELECT COUNT(distinct(student_id)) as bilang FROM votes";
					$voteResult = mysqli_query($conn,$votesSql);

					if (mysqli_num_rows($voteResult)>0){
						$voteRow = mysqli_fetch_array($voteResult);

					}
			 ?>

			 <?php 

					$studentSql = "SELECT COUNT(student_id) as bilang FROM students";
					$studentResult = mysqli_query($conn,$studentSql);

					if (mysqli_num_rows($studentResult)>0){
						$studentRow = mysqli_fetch_array($studentResult);

					}
			 ?>

			<tr>
				<td><?php echo $voteRow['bilang']; ?>/<?php echo $studentRow['bilang'];?> has voted</td>
				<td>
  					<div class="progress">
  						<?php 
  							$percent = number_format($voteRow['bilang']/$studentRow['bilang'],4)*100;


  						?>

						<div class="progress-bar progress-bar-primary progress-bar-striped" role="progressbar" aria-valuenow="<?php echo($percent);?>" aria-valuemin="0" aria-valuemax="100" style="width: <?php echo($percent);?>%">
							<?php echo($percent)."%";
							?> 
						</div>
					</div>
				</td>
			</tr>
	


 			 <!-- Button trigger modal -->
			<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Add College</button>

			<!-- Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">ADD COLLEGE / CENTER</h4>
			      </div>
			      <div class="modal-body gitna">
					<form method="POST" action="add_college.php" enctype="multipart/form-data">
						<input type="file" name="collegeimg" id="image_src" />
					

					<label>College Name: </label><input type="text" name="colname" required>
			      </div>
			      <div class="modal-footer">
			        <input type="submit" class="btn btn-yellow btn-full" value="Add">
			        </form>
			      </div>
			    </div>
			  </div>
			</div>
	</div>


	<div class="row row-design">


		<?php 

			$sql = "SELECT * FROM college";
				$result = mysqli_query($conn,$sql);


				if (mysqli_num_rows($result)>0){
					while ($row = mysqli_fetch_array($result)) {
					


					$id = $row['id'];
					$college = $row["college"];
					$picture = $row['picture'];
					$abr = $row['college_abr'];



		?>
	
	  <div class="col-sm-6 col-md-4">
	    <div class="thumbnail ">
	     <div class="clearfix">
			<p align="right"><a href="" class="btn btn-default button-size" role="button" data-toggle="modal" data-target="#<?php echo $id;?>deletemodal"><i class="fa fa-trash-o"></i></a>


			<a href="" class="btn btn-default button-size" role="button" data-toggle="modal" data-target="#<?php echo $id;?>updatemodal"><i class="fa fa-edit"></i></a></p>

			<!-- Modal -->
			<div class="modal fade" id="<?php echo $id;?>deletemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">DELETE COLLEGE / <?php echo $college;?></h4>
			      </div>
			      <div class="modal-body">
			      		Are you sure you want to delete this college?
					<form method="POST" action="delete_college.php">
					<input type="hidden" name="id" value="<?php echo $id;?>">
			      </div>
			      <div class="modal-footer">
			        <input type="submit" class="btn btn-yellow btn-full" value="Delete">
			        </form>
			    </div>
			    </div>
			  </div>
			</div>


				        				<!-- Modal -->
			<div class="modal fade" id="<?php echo $id;?>updatemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">UPDATE COLLEGE / <?php echo $college;?></h4>
			      </div>
			      <div class="modal-body">
			       <img src="<?php echo $picture;?>">
					<form method="POST" action="college_update.php" enctype="multipart/form-data">
					<input type="file" id="<?php echo $abr;?>" name="collegeupdateimg"/>

					<label>College Name: </label><input type="text" name="colupname" value="<?php echo $college;?>" required>
					<input type="hidden" name="colid" value="<?php echo $id;?>">
			      </div>
			      <div class="modal-footer">
			        <input type="submit" class="btn btn-yellow btn-full" value="Save">
			        </form>
			      </div>
			    </div>
			  </div>
			</div>

         </div>
            <div class="college-img">
            	<img src="<?php echo $picture;?>">
            </div>
	      <div class="caption caption-col">
	        <h5><?php echo $college;?></h5>
	        <p align="center"><a href="<?php echo "adminpartylist.php?id=$id&college=$college"; ?>" class="btn btn-yellow button-size" role="button">View Partylist</a>
	        	<a href="<?php echo "winners.php?college=$college";?>" class="btn btn-primary button-size" role="button">View Result</a></p>
	      </div>
	    </div>
	  </div>

	  <?php 


	  							}
				}
					else {
					echo " ";
					}

	  ?>


	</div>
</div>


</body>

</html>