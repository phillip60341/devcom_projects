
<?php include("resources.php"); ?>


<?php
	require('fpdf/fpdf.php');

	class PDF extends FPDF{
	    function Footer(){
	    
	        $this->SetY(-15);
	        $this->SetFont('Arial','I',8);
	        $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
	    }
	}
	

	$college = $_GET['college'];

	$sql = "SELECT * FROM college where college='$college'";
	$result = mysqli_query($conn,$sql);


	if (mysqli_num_rows($result)>0){
		
		$row = mysqli_fetch_array($result);
		

		echo " ";
		$id = $row['id'];
		$college = $row["college"];
		$picture = $row['picture'];
		$college_abr = $row['college_abr'];

		// $collegecountq = "select count(*) as lahat from students where college like('%".$college_abr.")')";
		$collegecountq = "select count(*) as lahat from students where college='".$college_abr."'";
		$collegecountresult = mysqli_query($conn,$collegecountq);
		$collegecountrow = mysqli_fetch_assoc($collegecountresult);

		$college_countq = "select count(distinct(students.student_id)) as bilang,students.college from votes inner join students where votes.student_id=students.student_id and college='".$college_abr."' group by college;";
		$college_countresult = mysqli_query($conn,$college_countq);
		$college_countrow = mysqli_fetch_assoc($college_countresult);

		if($college_countrow['bilang']==""){
			$college_bilang = 0;
		}
		else{
			$college_bilang = $college_countrow['bilang'];
		}
											
	}
			
			$percentage =($college_bilang."/".$collegecountrow['lahat']);
			$allvotepercent=number_format(($college_bilang/$collegecountrow['lahat']),4);
			$finalPercentage= ($allvotepercent * 100);


			$pdf=new PDF('P','mm');
			$pdf->AliasNbPages();
			$pdf->AddPage('');
			$pdf->SetFont('Times','',12);

			$pdf->Image('img/umak.png',25,10,25);
			$pdf->Image('img/SSG.png',150,3,35);

			$pdf->SetFont('Arial','B',16);
			$pdf->Cell(0,10,"UNIVERSITY OF MAKATI",0,1,"C");
			$pdf->SetFont('Arial','I',14);
			$pdf->Cell(0,2,"University Student Council",0,1,"C");
			$pdf->SetFont('Arial','',14);
			$pdf->Cell(0,10,$college,0,1,"C");
			$pdf->Cell(0,10,"USC Election 2016-2017",0,1,"C");
			$pdf->SetFont('Arial','B',14);
			$pdf->Cell(0,10,"Results",0,1,"C");
			$pdf->SetFont('Arial','',14);
			$pdf->Cell(0,10,$percentage.' has voted '.$finalPercentage.'%',0,1,"C");


	
			$pdf->Ln(8);
			$pdf->SetFont('Arial','B',10);
			$pdf->Cell(40,10,"POSITION",1,0,"C");
			$pdf->Cell(70,10,"NAME",1,0,"C");
			$pdf->Cell(40,10,"Party",1,0,"C");
			$pdf->Cell(20,10,"Votes",1,0,"C");
			$pdf->Cell(20,10,"RATING",1,0,"C");
			$pdf->ln();

			
			$sql = "SELECT * FROM candidates where college='$college'";
			$result = mysqli_query($conn,$sql);

	
		while ($rows = mysqli_fetch_array($result)){

			$countq = "select count(*) as bilang from votes where candidate_id=".$rows['id'];
			$countresult = mysqli_query($conn,$countq);
			$countrow = mysqli_fetch_assoc($countresult);

			$pdf->SetFont('Arial','',10);

			$lname = $rows['last_name'];
			$fname = $rows['first_name'];
			$mname = $rows['middle_name'];
			$partylist = $rows['partylist'];
			$position = $rows['position'];

			$mi = substr($mname, -1);

			$pdf->Cell(40,10,'   '.$position,1,0);
			$pdf->Cell(70,10,'   '.$lname.' '.$fname.' '.$mi.'.',1,0);
			$pdf->Cell(40,10,"Independent",1,0,"C");
			$pdf->Cell(20,10,$countrow['bilang'].'/'.$college_bilang,1,0,"C");
			$pdf->Cell(20,10,(round(($countrow['bilang']/$college_bilang)*100,2)).'%',1,0,"C");
			


			$pdf->SetFont('Arial','',10);

			$pdf->ln();

		}
			$pdf->ln(8);
			$pdf->Cell(20,10,"Certified True and Correct: ",0,0,"");$pdf->ln();
			$pdf->Cell(20,10,"____________________________ ",0,0,"");$pdf->ln(5);
			$pdf->SetFont('Arial','B',10);
			$pdf->Cell(20,10,"NINA NICAH MARIANO",0,0,"");$pdf->ln(5);
			$pdf->SetFont('Arial','I',10);
			$pdf->Cell(20,10,"Chairman, COSEL",0,0,"");$pdf->ln();

			$pdf->ln(8);
			$pdf->Cell(20,10,"Noted by: ",0,0,"");$pdf->ln();
			$pdf->Cell(20,10,"____________________________ ",0,0,"");$pdf->ln(5);
			$pdf->SetFont('Arial','B',10);
			$pdf->Cell(20,10,"RHONEIL M. TABORA",0,0,"");$pdf->ln(5);
			$pdf->SetFont('Arial','I',10);
			$pdf->Cell(20,10,"Director, CESAFORD",0,0,"");$pdf->ln();

			$pdf->ln(8);
			$pdf->Cell(20,10,"____________________________ ",0,0,"");$pdf->ln(5);
			$pdf->SetFont('Arial','B',10);
			$pdf->Cell(20,10,"DR. BERNARDO T. OMBROG",0,0,"");$pdf->ln(5);
			$pdf->SetFont('Arial','I',10);
			$pdf->Cell(20,10,"Dean, OSL",0,0,"");$pdf->ln();
			
			$filename=$college;
			$pangalan=$filename.'-USC Election Winners';
			$pdf->Output($pangalan,'I');


?>