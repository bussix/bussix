<?php
	include '../admin/connection.php';

	$result = mysqli_query($conn,"select * from tbl_bus_station");
	$response=array();
	while($row=mysqli_fetch_assoc($result))
	{
		$response[]=$row;
	}
	echo json_encode($response);
?>