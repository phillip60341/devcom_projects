<?php 
   include("resources.php");



if (empty($_FILES["collegeupdateimg"]["name"])){
    echo "qweqweqw";
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

  $id = $_POST['colid'];
  $college = $_POST['colupname'];

    $file_name=$_FILES["collegeupdateimg"]["name"];
    $temp_name=$_FILES["collegeupdateimg"]["tmp_name"];
    $imgtype=$_FILES["collegeupdateimg"]["type"];
    $ext= GetImageExtension($imgtype);
    $imagename=$_FILES["collegeupdateimg"]["name"];
    $target_path = "/devcom_projects/CCSVoting2017/images-data/".$imagename;
    $path="C://xampp/htdocs/";

    if(move_uploaded_file($temp_name,$path.$target_path)) {

   $query = "UPDATE college SET college='$college', picture='$target_path' WHERE id='$id'";

   if(mysqli_query($conn,$query)){
      echo "<script>window.location.href='Adminhome.php'</script>";  
   }
   else{
      echo "Failed";
   }

  }
  else {
    echo "failed to upload";
  }
 }

 ?>