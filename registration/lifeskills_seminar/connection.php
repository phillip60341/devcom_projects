<?php

$connection=mysqli_connect("localhost","root","","comscocregdb-3");
	$ut="utf8";
	mysqli_set_charset($connection,$ut);

	if(!$connection){
		echo "Could not connect ".mysqli_error();
	}

?>