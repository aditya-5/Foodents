<?php
require("index.php") ;

session_start();
if(!isset($_SESSION['loggedin']) || $_SESSION['loggedin']==false ){
	header("location: login.php");
	exit();
}
 ?>

 <!DOCTYPE html>
 <html>
 <head>
 	<title>
 		Welcome Page
 	</title>
 </head>
 <body>
 	<div class="container middle text-center">
 		<div class="container p-4">
		 	<h3>You are logged in. Hello <?php echo htmlspecialchars($_SESSION['first_name']." ".$_SESSION['last_name']) ?></h3><br><br>
		 	<div class="text-center">
			 	<a href="logout.php"><button class="btn btn-primary">Log Out</button></a>
		 	</div>
		 	<br>
		 	<div class="text-center">
 			<a href="reset-password.php"><button class="btn btn-secondary">Reset</button></a>
 		</div>

 		</div>
 	</div>
 </body>
 </html>
