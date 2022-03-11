<?php
include '../admin/connection.php';


$name = $_POST["name"];
$contact = $_POST["contact"];
$email = $_POST["email"];
$password = $_POST["password"];

$otp=rand(1111,9999);
$result = mysqli_query($conn,"insert into tbl_user (Name,Mobile_no,Email,Password,Is_block,otp_code,Is_verify) values('$name','$contact','$email','$password','No','$otp','No')");

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