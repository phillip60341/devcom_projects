<?php
include("resources.php");
include("session.php");
?>

<html>
<head>
<title>
Admin
</title>
</head>
<body>
ADMIN
<form action ="" method = "post">
   <input type = "submit" name = "btnLogout" value = "Logout">
</form>
</body>
</html>

<?php
   if(isset($_POST['btnLogout'])){
      session_unset();
      session_destroy();
      header("location:index.php");
   }
?>