<?php
include("resources.php");
session_start();
?>

<html>
<head>
<title>

</title>

<body>
   <div>
      <form method = "post" action = "">
         <input type = "text" name = "username">
         <input type = "text" name = "password">
         <input type = "submit" name = "btnSubmit">
      </form>
   </div>
</body>
</html>

<?php
   if(isset($_POST["btnSubmit"])){
      $username = $_POST["username"];
      $password = $_POST["password"];

      $loginq = "select * from admin where username='".$username."' and password ='".$password."'";
      $loginr = mysqli_query($conn,$loginq);
      if(mysqli_num_rows($loginr)==0){
         echo("wrong username or password");
      }
      //successful login
      else{
         $row = mysqli_fetch_assoc($loginr);
         $_SESSION['admin_id'] = $row['id'];
         echo($_SESSION['admin_id']);
         echo("<script>window.location='admin.php';</script>");
      }
   }
?>