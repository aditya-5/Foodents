<?php
include('./server.php');
$sql = "SELECT name from INGREDIENTS";
$result = mysqli_query($conn, $sql);
mysqli_fetch_all($result);
$ings = array();
foreach($result as $value){
  array_push($ings, $value['name']);
}

echo json_encode($ings);


 ?>
