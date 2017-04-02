<?php
   include("resources.php");

   if (empty($_FILES["candiimg"]["name"])){

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
     $year_section = $_POST["yearsec"];
     $target_path = "/devcom_projects/CCSVoting2017/images-data/Layer 5.png";

     $query = "insert into candidates(candidatepic,partylist,first_name,middle_name,last_name,position,college,gender,religion,birthday,birth_place,address,email,guardian,guardian_contact,telephone,mobile,skills_talents,honors_awards,year_section,date_added) 
                            values('".$target_path."','".$partylist."','".$first_name."','".$middle_name."','".$last_name."','".$position."','".$college."','".$gender."','".$religion."','".$birthday."','".$birth_place."','".$address."','".$email."','".$guardian."','".$guardian_contact."','".$telephone."','".$mobile."','".$skills_talents."','".$honors_awards."','".$year_section."',NOW())";

       if(mysqli_query($conn,$query)){
       echo "";
         echo "<script>window.location.href='AdminCandidates.php?partylist=$partylist&college=$college'</script>"; 
       }
        
       else{
          echo("Error");
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
   $year_section = $_POST["yearsec"];

    $file_name=$_FILES["candiimg"]["name"];
    $temp_name=$_FILES["candiimg"]["tmp_name"];
    $imgtype=$_FILES["candiimg"]["type"];
    $ext= GetImageExtension($imgtype);
    $imagename=$_FILES["candiimg"]["name"];
    $target_path = "/devcom_projects/CCSVoting2017/images-data/".$imagename;
    $path="C://xampp/htdocs/";

    if(move_uploaded_file($temp_name,$path.$target_path)) {

   //$fields = "candidatepic,partylist,first_name,middle_name,last_name,position,college,program,gender,religion,birthday,birth_place,address,email,guardian,guardian_contact,telephone,mobile,skills_talents,honors_awards,year_section,date_added";

   //$values = "$target_path,$partylist,$first_name,$middle_name,$last_name,$position,$college,$program,$gender,$religion,$birthday,$birth_place,$address,$email,$guardian,$guardian_contact,$telephone,$mobile,$skills_talents,$honors_awards,$year_section,NOW()";

   //$query = "insert into candidates(".$fields.") values($first_name,$middle_name,$last_name,$position,$college,$program,$gender,$religion,$birthday,$birth_place,$address,$email,$guardian,$guardian_contact,$telephone,$mobile,$skills_talents,$honors_awards,$year_section)";

   $query = "insert into candidates(candidatepic,partylist,first_name,middle_name,last_name,position,college,gender,religion,birthday,birth_place,address,email,guardian,guardian_contact,telephone,mobile,skills_talents,honors_awards,year_section,date_added) 
                          values('".$target_path."','".$partylist."','".$first_name."','".$middle_name."','".$last_name."','".$position."','".$college."','".$gender."','".$religion."','".$birthday."','".$birth_place."','".$address."','".$email."','".$guardian."','".$guardian_contact."','".$telephone."','".$mobile."','".$skills_talents."','".$honors_awards."','".$year_section."',NOW())";

   if(mysqli_query($conn,$query)){
   echo "";
     echo "<script>window.location.href='AdminCandidates.php?partylist=$partylist&college=$college'</script>"; 
   }
    
   else{
      echo("Error");
   }
 }
 }

?>