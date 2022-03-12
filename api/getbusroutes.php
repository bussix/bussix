<?php
	include '../admin/connection.php';

	$result = mysqli_query($conn,"select * from tbl_bus_route as br left join tbl_bus_station as b on br.Bussstation_id=b.Bus_station_id");
	$response=array();
	while($row=mysqli_fetch_assoc($result))
	{
		$response[]=$row;
	}
	echo json_encode($response);
?>