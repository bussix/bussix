<?php
function haversineGreatCircleDistance(
    $latitudeFrom, $longitudeFrom, $latitudeTo, $longitudeTo, $earthRadius = 6371000)
  {
    // convert from degrees to radians
    $latFrom = deg2rad($latitudeFrom);
    $lonFrom = deg2rad($longitudeFrom);
    $latTo = deg2rad($latitudeTo);
    $lonTo = deg2rad($longitudeTo);
  
    $latDelta = $latTo - $latFrom;
    $lonDelta = $lonTo - $lonFrom;
  
    $angle = 2 * asin(sqrt(pow(sin($latDelta / 2), 2) +
      cos($latFrom) * cos($latTo) * pow(sin($lonDelta / 2), 2)));
    return $angle * $earthRadius;
  }
include '../admin/connection.php';

$response=array();

$stid=$_POST["stid"];
$enid=$_POST["enid"];


$slat="";
$slong="";
$elat="";
$elong="";

$sql=mysqli_query($conn,"select * from tbl_bus_station where Bus_station_id='".$stid."'");
while($row=mysqli_fetch_assoc($sql))
{
    $slat=$row["Bus_station_latitude"];
    $slong=$row["Bus_station_longtitude"];
}

$sql=mysqli_query($conn,"select * from tbl_bus_station where Bus_station_id='".$enid."'");
while($row=mysqli_fetch_assoc($sql))
{
    $elat=$row["Bus_station_latitude"];
    $elong=$row["Bus_station_longtitude"];
}
$km = haversineGreatCircleDistance($slat,$slong,$elat,$elong);
$response["km"]=(string)$km;
$response["price"]=(string)($km*8);
echo json_encode($response);
?>