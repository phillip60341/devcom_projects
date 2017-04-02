<?php 
   include("resources.php");

  $id = $_POST['id'];

  $sql = "DELETE FROM college WHERE id='$id'";
     
    if (mysqli_query($conn, $sql)){
 echo "<script>window.location.href='Adminhome.php'</script>";
    }

 ?>