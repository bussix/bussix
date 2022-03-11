<?php
	include '../admin/connection.php';

	$result = mysqli_query($conn,"select * from tbl_ticket as t left join tbl_bus_station as s on t.s_bus_station_id=s.Bus_station_id");
	$response=array();
	while($row=mysqli_fetch_assoc($result))
	{
		$response[]=$row;
	}
	echo json_encode($response);
?>