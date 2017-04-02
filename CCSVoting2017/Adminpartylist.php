<?php 	$current_url = urlencode($_SERVER['REQUEST_URI']); ?>

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
			$_SESSION['college'] = $college;
		

			$sql = "SELECT * FROM college WHERE college='$college'";
				$result = mysqli_query($conn,$sql);


				if (mysqli_num_rows($result)>0){
					$row = mysqli_fetch_array($result);
					

					echo " ";
					$id = $row['id'];
					$college = $row["college"];
					$picture = $row['picture'];

				}
					else {
					echo " ";
					}

		?>

<div class="container-fluid container-style">
	<div class="page-header header-page">
	  <h2>Partylist | <?php echo $college; ?></h2>
	</div>

	  
	<div class="add-college">
 			 <!-- Button trigger modal -->
			<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Add Partylist</button>

			<!-- Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">ADD PARTYLIST</h4>
			      </div>
			      <div class="modal-body">
					<form method="POST" action="add_partylist_php.php" enctype="multipart/form-data">
						<input type="file" name="partyimg" id="image_src"/>
						<label>Partylist Name: </label><input type="text" name="parname">
					<label>Partylist Slogan: </label><input type="text" name="parslogan">
					<input type="hidden" value="<?php echo $college; ?>" name="department">
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

			$college = $_GET['college'];

			$sql = "SELECT * FROM partylist WHERE college='$college'";
				$result = mysqli_query($conn,$sql);


				if (mysqli_num_rows($result)>0){
					while ($row = mysqli_fetch_array($result)) {
					

					echo " ";
					$id = $row['id'];
					$partylist_name = $row["partylist_name"];
					$partylist_slogan = $row['partylist_slogan'];
					$partylist_logo = $row['partylist_logo'];
					$_SESSION['partylist_can'] = $partylist_name;


		?>
	
	  <div class="col-sm-6 col-md-4">
	    <div class="thumbnail ">
	     <div class="clearfix">
			<p align="right"><a href="" class="btn btn-default button-size" role="button" data-toggle="modal" data-target="#<?php echo $id;?>deletemodal"><i class="fa fa-trash-o"></i></a>


			<a href="" class="btn btn-default button-size" role="button" data-toggle="modal" data-target="#updatemodal"><i class="fa fa-edit"></i></a></p>

			<!-- Modal -->
			<div class="modal fade" id="<?php echo $id;?>deletemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">DELETE PARTYLIST | <?php echo $partylist_name;?></h4>
			      </div>
			      <div class="modal-body">
			      		Are you sure you want to delete this Partylist?
					<form method="POST" action="delete_partylist.php">
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
			<div class="modal fade" id="updatemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">UPDATE PARTYLIST</h4>
			      </div>
			      <div class="modal-body">
			       <img src="<?php echo $partylist_logo;?>" alt="..." class="img-thumbnail">
					<form method="POST" action="update_party.php" enctype="multipart/form-data">
						<input type="file" name="image_src" id="image_src"/>


					<label>Partylist Name: </label><input type="text" name="parname" value="<?php echo $partylist_name;?>">
					<label>Partylist Slogan: </label><input type="text" name="parslogan" value="<?php echo $partylist_slogan;?>">
					<input type="hidden" name="paid" value="<?php echo $id;?>">
					<input type="hidden" name="url" value="<?php echo $current_url; ?>">
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
            	<img src="<?php echo $partylist_logo;?>" alt="" class="img-rounded">
            </div>
	      <div class="caption">
	        <h5><b><?php echo $partylist_name;?></b></h5>
	        <p align="center"><a href="<?php echo "AdminCandidates.php?partylist=$partylist_name&college=$college";?>" class="btn btn-yellow btn-full" role="button">View Candidates</a></p>
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