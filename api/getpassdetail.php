<?php
	include '../admin/connection.php';

	$passid = $_POST["passid"];

	$result = mysqli_query($conn,"select * from tbl_pass where Pass_id='".$passid."'");
	$response=array();
	while($row=mysqli_fetch_assoc($result))
	{
		$response[]=$row;
	}
	echo json_encode($response);
?>