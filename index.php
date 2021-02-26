<?php

require_once('config.inc.php'); 

$con = new mysqli($database_host, $database_user, $database_pass, $group_dbnames[0]);

if($con -> connect_error) {
    die('Connect Error ('.$con -> connect_errno.') '.$con -> connect_error);
}

$sql = "INSERT INTO USERS (username, password, email, first_name, last_name) 
VALUES ('admin', '1234', 'admin@manchester.ac.uk', 'Mr. Admin', 'Realperson')";

if($con->query($sql) === FALSE) echo "Error: " . $sql . "<br>" . $con->error;
else
{
  echo "Admin added successfully";

  $sql = "SELECT * FROM USERS";

  if ($result = $con -> query($sql)) {
    echo "Returned rows are: " . $result -> num_rows;
    $result -> free_result();
  }
}




$con -> close();
?>