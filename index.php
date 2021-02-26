<?php

require_once('config.inc.php'); 

$con = new mysqli($database_host, $database_user, $database_pass, $group_dbnames[0]);

if($con -> connect_error) {
    die('Connect Error ('.$con -> connect_errno.') '.$con -> connect_error);
}

$sql = "INSERT INTO USERS (username, password, email, first_name, last_name) 
VALUES ('admin', '1234', 'admin@manchester.ac.uk', 'Mr. Admin', 'Realperson')";

if($conn->query($sql) === FALSE) echo "Error: " . $sql . "<br>" . $conn->error;
else
{
  echo "Admin added successfully";

  $sql = "SELECT * FROM USERS";

  $result = mysqli_query($sql);
  while($row = mysqli_fetch_array($result)){
    print_r($row);
  }
}




$con -> close();
?>