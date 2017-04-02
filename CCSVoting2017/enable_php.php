<?php
   include("resources.php");
   $student_id = filter_var($_POST['student_id'],FILTER_SANITIZE_STRING);

   $fquery = "select * from students where student_id='".$student_id."'";

   if(mysqli_num_rows(mysqli_query($conn,$fquery))==0){
      echo("<script>alert('Student ID not in database');window.location='enabling.php';</script>");
   }
   else{
      $checkq = "select * from enabled_students where student_id='".$student_id."'";
      $checkresult = mysqli_query($conn,$checkq);

      $viewq = "select * from students where student_id='".$student_id."'";
      $viewresult = mysqli_query($conn,$viewq);
      $viewrow = mysqli_fetch_assoc($viewresult);

      $fullName = $viewrow['last_name'].", ".$viewrow['first_name']." ".$viewrow['middle_name'];

      if(mysqli_num_rows($checkresult)==1){
         echo("<script>alert('".$fullName." is already Enabled.');window.location='enabling.php';</script>");
      }
      else{
         //echo("<script>alert('".$student_id." is now Enabled');window.location='enabling.php';</script>");
         $enableq = "insert into enabled_students(student_id,date_enabled,already_voted) values('".$student_id."',now(),'0')";
         insert_log("ADMIN","Enabled a student",$student_id);
         echo("<script>alert('".$fullName." is now Enabled');window.location='enabling.php';</script>");
         mysqli_query($conn,$enableq);
      }
   }
?>