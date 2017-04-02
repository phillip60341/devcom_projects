<?php
	//include("resources.php");
	$conn = mysqli_connect("localhost","root","","usc_voting");
	function vote_save($student_id,$candidate_id){
		$votequery = "insert into votes(student_id,candidate_id,date_time) values('$student_id','$candidate_id',now())";
		echo("<script>alert('".$votequery."');</script>");
		mysqli_query($conn,$votequery);
	}
?>