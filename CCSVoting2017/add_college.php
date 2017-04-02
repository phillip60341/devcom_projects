<?php 
   include("resources.php");


if (empty($_FILES["collegeimg"]["name"])){
    echo "";
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

  $college = $_POST['colname'];

    $file_name=$_FILES["collegeimg"]["name"];
    $temp_name=$_FILES["collegeimg"]["tmp_name"];
    $imgtype=$_FILES["collegeimg"]["type"];
    $ext= GetImageExtension($imgtype);
    $imagename=$_FILES["collegeimg"]["name"];
    $target_path = "/devcom_projects/CCSVoting2017/images-data/".$imagename;
    $path="C://xampp/htdocs/";

    if(move_uploaded_file($temp_name,$path.$target_path)) {

   $query = "insert into college(college,picture) values('".$college."','". $target_path."')";

   if(mysqli_query($conn,$query)){
      echo "<script>window.location.href='Adminhome.php'</script>";  
   }
   else{
      echo("Failed");
   }

  }
 }

 ?>