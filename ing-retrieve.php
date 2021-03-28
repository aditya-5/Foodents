<?php
include('./server.php');
$sql = "SELECT name from INGREDIENTS";
$result = mysqli_query($conn, $sql);
mysqli_fetch_all($result);
$ings = array();
foreach($result as $value){
  array_push($ings, $value['name']);
}

function utf8ize($d) {
    if (is_array($d)) {
        foreach ($d as $k => $v) {
            $d[$k] = utf8ize($v);
        }
    } else if (is_string ($d)) {
        return utf8_encode($d);
    }
    return $d;
}

echo json_encode(utf8ize($ings));



 ?>
