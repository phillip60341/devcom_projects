<?php 
   include("resources.php");

  $id = $_POST['id'];

  $sql = "DELETE FROM candidates WHERE id='$id'";
     
    if (mysqli_query($conn, $sql)){
	 echo "<script> window.history.back();</script>";  
    }

 ?>