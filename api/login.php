<?php
include '../admin/connection.php';


$contact = $_POST["contact"];
$password = $_POST["password"];

$result = mysqli_query($conn,"select * from tbl_user  where Mobile_no='$contact' and Password='$password'");

$response=array();

if(mysqli_num_rows($result)<=0)
{
	$response["status"]="no";
}
else
{
	$response["status"]="yes";
	while($row=mysqli_fetch_assoc($result))
	{
		$response["userdata"]=$row;
	}
}
echo json_encode($response);
?>