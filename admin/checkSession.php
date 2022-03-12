<?php
if(!isset($_SESSION["name"]))
{
	echo "<script>window.location='/brts/admin/index.php';</script>";
}
?>