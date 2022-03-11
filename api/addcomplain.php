<?php
include '../admin/connection.php';


$Userid = $_POST["Userid"];
$Complain = $_POST["Complain"];
$image = $_POST["image"];


$result = mysqli_query($conn,"insert into tbl_complaint (User_id,Com_text,com_img_url) values('$Userid','$Complain','$image')");

$response=array();

if($result==true)
{
	$response["status"]="yes";
}
else
{
	$response["status"]="no";
}
echo json_encode($response);
?>