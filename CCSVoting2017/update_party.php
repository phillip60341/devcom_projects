<?php 
   include("resources.php");

if (empty($_FILES["image_src"]["name"])){
   

  $partyname = $_POST['parname'];
  $partyslo = $_POST['parslogan'];
  $id = $_POST['paid'];

   $query = "UPDATE partylist SET partylist_name='$partyname', partylist_slogan='$partyslo' WHERE id='$id'";

   if(mysqli_query($conn,$query)){
      echo "<script> window.history.back();</script>";  
   }
   else{
      echo("Failed");
   }

}

 else {
      function GetImageExtension($imagetype)
     {
       if(empty($imagetype)) return false;
       switch($imagetype)
       {
           case 'image/bmp': return '.bmp';
           case 'image/gif': return '.gif';
           case 'image/jpeg': return '.jpg';
           case 'image/png': return '.png';
           default: return false;
       }
     }

  $partyname = $_POST['parname'];
  $partyslo = $_POST['parslogan'];
  $id = $_POST['paid'];

    $file_name=$_FILES["image_src"]["name"];
    $temp_name=$_FILES["image_src"]["tmp_name"];
    $imgtype=$_FILES["image_src"]["type"];
    $ext= GetImageExtension($imgtype);
    $imagename=$_FILES["image_src"]["name"];
    $target_path = "/devcom_projects/CCSVoting2017/images-data/".$imagename;
    $path="C://xampp/htdocs/";

    if(move_uploaded_file($temp_name,$path.$target_path)) {

   $query = "UPDATE partylist SET partylist_name='$partyname', partylist_slogan='$partyslo', partylist_logo='$target_path' WHERE id='$id'";

   if(mysqli_query($conn,$query)){
      echo "<script> window.history.back();</script>";  
   }
   else{
      echo("Failed");
   }

  }
 }

 ?>