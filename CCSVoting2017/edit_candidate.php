<?php 
   include("resources.php");

if (empty($_FILES["image_src"]["name"])){
    


   $partylist = $_SESSION['partylist_can'];
   $first_name = $_POST["fname"];
   $middle_name = $_POST["mname"];
   $last_name = $_POST["lname"];
   $position = $_POST["position"];
   $college = $_SESSION['college_can'];
   $gender = $_POST["inlineRadioOptions"];
   $religion = $_POST["religion"];
   $birthday = $_POST["bday"];
   $birth_place = $_POST["bplace"];
   $address = $_POST["address"];
   $email = $_POST["email"];
   $guardian = $_POST["parent"];
   $guardian_contact = $_POST["gcontact"];
   $telephone = $_POST["tel"];
   $mobile = $_POST["mobi"];
   $skills_talents = $_POST["skills"];
   $honors_awards = $_POST["honor"];
   $id = $_POST['id'];

   $query = "UPDATE candidates set partylist='$partylist',first_name='$first_name',middle_name='$middle_name',last_name='$last_name',position='$position',college='$college',gender='$gender',religion='$religion',birthday='$birthday',birth_place='$birth_place',address='$address',email='$email',guardian='$guardian',guardian_contact='$guardian_contact',telephone='$telephone',mobile='$mobile',skills_talents='$skills_talents',honors_awards='$honors_awards' WHERE id='$id'";


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
           case 'image/jpg': return '.jpg';
           case 'image/JPG': return '.jpg';
           case 'image/png': return '.png';
           default: return false;
       }
     }

   $partylist = $_SESSION['partylist_can'];
   $first_name = $_POST["fname"];
   $middle_name = $_POST["mname"];
   $last_name = $_POST["lname"];
   $position = $_POST["position"];
   $college = $_SESSION['college_can'];
   $gender = $_POST["inlineRadioOptions"];
   $religion = $_POST["religion"];
   $birthday = $_POST["bday"];
   $birth_place = $_POST["bplace"];
   $address = $_POST["address"];
   $email = $_POST["email"];
   $guardian = $_POST["parent"];
   $guardian_contact = $_POST["gcontact"];
   $telephone = $_POST["tel"];
   $mobile = $_POST["mobi"];
   $skills_talents = $_POST["skills"];
   $honors_awards = $_POST["honor"];
   $id = $_POST['id'];

    $file_name=$_FILES["image_src"]["name"];
    $temp_name=$_FILES["image_src"]["tmp_name"];
    $imgtype=$_FILES["image_src"]["type"];
    $ext= GetImageExtension($imgtype);
    $imagename=$_FILES["image_src"]["name"];
    $target_path = "/devcom_projects/CCSVoting2017/images-data/".$imagename;
    $path="C://xampp/htdocs/";

    if(move_uploaded_file($temp_name,$path.$target_path)) {

   $fields = "first_name,middle_name,last_name,position,college,gender,religion,birthday,birth_place,address,email,guardian,guardian_contact,telephone,mobile,skills_talents,honors_awards,year_section";

   $values = "$first_name,$middle_name,$last_name,$position,$college,$gender,$religion,$birthday,$birth_place,$address,$email,$guardian,$guardian_contact,$telephone,$mobile,$skills_talents,$honors_awards,$year_section";

   //$query = "insert into candidates(".$fields.") values($first_name,$middle_name,$last_name,$position,$college,$program,$gender,$religion,$birthday,$birth_place,$address,$email,$guardian,$guardian_contact,$telephone,$mobile,$skills_talents,$honors_awards,$year_section)";

   $query = "UPDATE candidates set candidatepic='$target_path',partylist='$partylist',first_name='$first_name',middle_name='$middle_name',last_name='$last_name',position='$position',college='$college',gender='$gender',religion='$religion',birthday='$birthday',birth_place='$birth_place',address='$address',email='$email',guardian='$guardian',guardian_contact='$guardian_contact',telephone='$telephone',mobile='$mobile',skills_talents='$skills_talents',honors_awards='$honors_awards' WHERE id='$id'";


   if(mysqli_query($conn,$query)){
      echo "<script> window.history.back();</script>";  
   }
   else{
      echo("Failed");
   }

  }
 }

 ?>