<?php

// ******************************
// FOR MANCHESTER SERVER DEPLOYMENT
// ******************************
require_once('config.inc.php');
$conn = new mysqli($database_host, $database_user, $database_pass, $group_dbnames[0]);

// ******************************
// FOR LOCAL DEVELOPMENT
// ******************************
// define("DB_SERVER",'localhost');
// define("DB_USERNAME", 'root');
// define("DB_PASSWORD", '');
// define("DB_NAME", '2020_comp10120_x9');
// $conn = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD, DB_NAME);


// ******************************
// ONLY FOR HEROKU DEPLOYMENT
// ******************************
//Get Heroku ClearDB connection information
// $cleardb_url = parse_url(getenv("CLEARDB_DATABASE_URL"));
// $cleardb_server = $cleardb_url["host"];
// $cleardb_username = $cleardb_url["user"];
// $cleardb_password = $cleardb_url["pass"];
// $cleardb_db = substr($cleardb_url["path"],1);
// $active_group = 'default';
// $query_builder = TRUE;
//
// // Connect to DB
// $conn = mysqli_connect($cleardb_server, $cleardb_username, $cleardb_password, $cleardb_db);


// ******************************
// EXTRAS
// ******************************
//
// if($con -> connect_error) {
//     die('Connect Error ('.$con -> connect_errno.') '.$con -> connect_error);
// }
//
// $sql = "INSERT INTO USERS (username, password, email, first_name, last_name)
// VALUES ('admin', '1234', 'admin@manchester.ac.uk', 'Mr. Admin', 'Realperson')";
//
// if($con->query($sql) === FALSE) echo "Error: " . $sql . "<br>" . $con->error;
// else
// {
//   echo "Admin added successfully<br>";
//
//   $sql = "SELECT * FROM USERS";
//
//   if ($result = $con -> query($sql)) {
//     echo "Returned rows are: " . $result -> num_rows;
//     $result -> free_result();
//   }
// }
// $con -> close();


// require_once('./config.inc.php');
// //
// $conn = new mysqli($database_host, $database_user, $database_pass, $group_dbnames[0]);
//
// if($conn === false){
// 	die("ERROR: COULDN'T CONNECT TO DATABASE " .  mysqli_connect_error());
// }
// else{
// 	$msgs = "Connected Successfully";
// }

?>
