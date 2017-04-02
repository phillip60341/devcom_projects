<?php
   include("resources.php");


if (empty($_FILES["partyimg"]["name"])){
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

   $name = $_POST['parname'];
   $slogan = $_POST['parslogan'];
   $department = $_POST['department'];

    $file_name=$_FILES["partyimg"]["name"];
    $temp_name=$_FILES["partyimg"]["tmp_name"];
    $imgtype=$_FILES["partyimg"]["type"];
    $ext= GetImageExtension($imgtype);
    $imagename=$_FILES["partyimg"]["name"];
    $target_path = "/devcom_projects/CCSVoting2017/images-data/".$imagename;
    $path="C://xampp/htdocs/";

    if(move_uploaded_file($temp_name,$path.$target_path)) {

   $query = "insert into partylist(partylist_name,partylist_slogan,partylist_logo,college,date_added) 
   values('".$name."','".$slogan."','".$target_path."','".$department."',NOW())";

   if(mysqli_query($conn,$query)){
      echo "<script>window.location.href='Adminpartylist.php?college=$department'</script>";  
   }
   else{
      echo("Failed");
   }

  }
 }
?>