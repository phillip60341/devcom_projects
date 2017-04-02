<?php
include ('resources.php');
insert_log("ADMIN","Logged out",null);
unset($_SESSION['Username']);
unset($_COOKIE['Username']);
session_destroy();

setcookie("Username","",time()-8200);

header("Location: Adminlog.php");
exit();
?>