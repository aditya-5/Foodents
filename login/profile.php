<?php
session_start();
if(!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] == false){
	header("location: login.php");
	exit();
}

if(isset($_SESSION['loggedin'])){
  if($_SESSION['loggedin']==true){
  	$fname = $_SESSION['first_name'];
    $lname = $_SESSION['last_name'];
		$em = $_SESSION['email'];
		$us = $_SESSION['username'];
    $log = true;
  }
}

if(isset($_SESSION["msg"])){
	$msg = $_SESSION["msg"];
	unset($_SESSION["msg"]);
}else{
	unset($msg);
}

if(isset($_SESSION["error"])){
	$error = $_SESSION["error"];
	unset($_SESSION["error"]);
}else{
	unset($error);
}


require('index.php') ;

// ************************************
// ************************************
// RESET PASSWORD PHP
// ************************************
// ************************************
// if($_SERVER['REQUEST_METHOD']=="POST"){
if(isset($_POST["resetForm"])){


	$curpass = $newpass =$confirmpass = "";


	// Checking if current password is empty
	if(empty(trim($_POST['curpass']))){
		$error = "Current password field cannot be empty";
	}
	else{
		$curpass = trim($_POST['curpass']);
	}

	// Checking if new password is less than 6 characters or empty
	if(empty(trim($_POST['newpass']))){
		$error = "New password field cannot be empty";
	}
	elseif(strlen(trim($_POST['newpass']))<6){
		$error = "New Password field cannot be less than 6 characters";
	}
	else{
		$newpass = trim($_POST['newpass']);
	}

	// Checking if confirm new password is empty
	if(empty(trim($_POST['confirmpass']))){
		$error = "Confirm New Password field cannot be empty";
	}
	else{
		$confirmpass = trim($_POST['confirmpass']);
	}

	// Validation if no errors
	if(empty($error)){

		// Checking if new password and confirm new password match
		if(strcmp($newpass,$confirmpass)==0){

		$sql = "SELECT password from USERS where user_id =?";

		if($stmt = mysqli_prepare($conn, $sql)){
			mysqli_stmt_bind_param($stmt, 'i', $param_id);
			$param_id = $_SESSION['id'];

			if(mysqli_execute($stmt)){
				mysqli_stmt_store_result($stmt);
				mysqli_stmt_bind_result($stmt, $passhash);
				if(mysqli_stmt_fetch($stmt)){
					if(password_verify($curpass, $passhash)){
						$sql = "UPDATE USERS SET password = ? where user_id =?";
						if($stmt1 = mysqli_prepare($conn, $sql)){
							mysqli_stmt_bind_param($stmt1, 'si',$param_password, $param_id);
							$param_password = password_hash($newpass,PASSWORD_DEFAULT);
							$param_id = $_SESSION['id'];
							if(mysqli_execute($stmt1)){
								$_SESSION["msg"]="Password changed";
								header("location: profile.php");
							}
							else{
								echo "Something went wrong with the stmt 2 part";
							}
						}
						echo "Something went wrong with the stmt 2 part";
							mysqli_stmt_close($stmt1);
				}
				else{
					echo "Your current password doesn't match the one in the database";
				}
			}
		}else{
			echo "Something went wrong with the stmt 1 part";
			}
		mysqli_stmt_close($stmt);
		}
	}
	else{
		echo "New Password and Confirm New Password don't match";
	}

}

if(isset($error)){
	$_SESSION["error"] = $error;
	header("location: ./profile.php");
}
mysqli_close($conn);
}
// ************************************
// ************************************
// ************************************
// ************************************


if(isset($_POST["profileForm"])){
	// if(isset($_POST("fname"))|| isset($_POST("lname"))|| isset($_POST("email"))|| isset($_POST("user")) ){
		if((!empty(trim($_POST["fname"]))) && (!empty(trim($_POST["lname"]))) && (!empty(trim($_POST["email"]))) && (!empty(trim($_POST["user"])))){

			// ***************************************************************************
			// Checking if username already exists
				$sql = "SELECT user_id from USERS WHERE username=?";
				if($stmt = mysqli_prepare($conn,$sql)){
					mysqli_stmt_bind_param($stmt, "s", $param_username);
					$param_username = trim($_POST['user']);
					if(mysqli_stmt_execute($stmt)){
						mysqli_stmt_store_result($stmt);
						if(mysqli_stmt_num_rows($stmt)==1){
							mysqli_stmt_bind_result($stmt, $uid);
							if(mysqli_stmt_fetch($stmt)){
								if($uid == $_SESSION['id']){
									$form_user = strtolower(trim($_POST['user']));
									if(strpos($form_user,' ')){
										$error = "Username cannot contain spaces.";
									}
									else{
										if(!preg_match('/^[a-z0-9]+$/',$form_user)){
											$error = "Username can contain only letters and numbers";
										}
									}
								}
								else{
									$error = "Username already exists";
								}
							}
						}else if(mysqli_stmt_num_rows($stmt)==0){
							$form_user = strtolower(trim($_POST['user']));
							if(strpos($form_user,' ')){
								$error = "Username cannot contain spaces";
							}
							else{
								if(!preg_match('/^[a-z0-9]+$/',$form_user)){
									$error = "Username can contain only letters and numbers";
								}
							}
						}
						else{
							$error = "Interval - More than 1 users exist with the same username already";
						}
					}else{
						$error = "Interval - Couldn't execute the Username query";
					}
					}
				else{
					echo("Something went wrong with the dollar stmt part");
				}



				mysqli_stmt_close($stmt);
				// ***************************************************************************
				// Checking if email already exists
				$sql = "SELECT user_id from USERS WHERE email=?";

				// Prepare the SQL query and bind the username param to it (in place of the question mark)
				if($stmt = mysqli_prepare($conn,$sql)){
					// Bind params to the query, s means string here.
					mysqli_stmt_bind_param($stmt, "s", $param_email);
					$param_email = trim($_POST['email']);

					if(mysqli_stmt_execute($stmt)){

						// To store the result received (doesn't cause performance loss)
						mysqli_stmt_store_result($stmt);

						if(mysqli_stmt_num_rows($stmt)==1){
							mysqli_stmt_bind_result($stmt, $uid);
							if(mysqli_stmt_fetch($stmt)){
								if($uid == $_SESSION['id']){
									$form_email = strtolower(trim($_POST['email']));
									if(!filter_var($form_email, FILTER_VALIDATE_EMAIL)){
										$error = "Email Validation failed";
									}
								}
								else{
									$error = "E-mail already in use";
								}
							}
						}
						else if(mysqli_stmt_num_rows($stmt)==0){
							$form_email = strtolower(trim($_POST['email']));
							if(!filter_var($form_email, FILTER_VALIDATE_EMAIL)){
								$error = "Email Validation failed";
							}
						}
						else{
							$error = "Interval - More than 1 users exist with the same email already";
						}
					}
				}
				else{
					echo("Something went wrong with the dollar stmt part");
				}


				mysqli_stmt_close($stmt);

				// ***************************************************************************
				// ***************************************************************************
				// Checking first name and last name


				$form_fname = trim($_POST['fname']);
				$form_lname = trim($_POST['lname']);
				if(empty($form_fname)){
					$error = "First Name cannot be empty";
				}

				if(empty($form_lname)){
					$error = "Last Name cannot be empty";
				}

				$form_fname = strtolower($form_fname);
				$form_fname = ucfirst($form_fname);
				$form_fname = explode(' ', $form_fname);
				$form_fname = $form_fname[0];

				$form_lname = strtolower($form_lname);
				$form_lname = ucfirst($form_lname);
				$form_lname = explode(' ', $form_lname);
				$form_lname = $form_lname[0];

				if(!preg_match("/^[A-Z][a-z]*$/",$form_fname)){
					$error = "First Name can contain only letters";
				}

				if(!preg_match("/^[A-Z][a-z]*$/",$form_lname)){
					$error = "Last Name cannot contain spaces";
				}

				// ***************************************************************************
				// ***************************************************************************


				if(empty($error)){
								$sql = "UPDATE USERS SET email = ?,first_name=?,last_name=?,username=?  where user_id =?";
								if($stmt = mysqli_prepare($conn,$sql)){
									mysqli_stmt_bind_param($stmt, "ssssi",$form_email,$form_fname,$form_lname,$form_user,$param_id);
									$param_id = $_SESSION['id'];
									if(mysqli_stmt_execute($stmt)){
											$_SESSION["msg"] = "Details Updated";
											$_SESSION['first_name']= $form_fname;
											$_SESSION['last_name']= $form_lname;
											$_SESSION['email']= $form_email;
											$_SESSION['username']=$form_user ;
											header("location: profile.php");
											}else{
												$error = "Internal - Couldn't execute the update statement";
											}
										}else{
											$error = "Internal - Couldn't prepare the first statement";
										}
									}

							}
							else{
								$error = "Fields cannot be empty";
							}

							if(isset($error)){
								$_SESSION["error"] = $error;
								header("location: ./profile.php");
							}
	mysqli_close($conn);
}

// ************************************
// ************************************
// ************************************
// ************************************
if(isset($_POST["addRecipe"])){

// if(isset($_POST['name']) && isset($_POST['servings']) && isset($_POST['time'])
// && isset($_POST['rating']) && isset($_POST['imgurl']) && isset($_POST['instruction']) && isset($_POST['ing'])){

	if(true){

	$name = trim($_POST['name']);
	$servings = $_POST['servings'];
	$time = $_POST['time'];
	$difficulty = $_POST['rating'];
	$imgurl = trim($_POST['imgurl']);
	$instruction = trim($_POST['instruction']) ;
	$ings = $_POST['ing'] ;

	if(isset($_POST['story'])){
		$story = trim($_POST['story']);
	}else{
		$story = "";
	}

	if(preg_match("/^\d+$/",$servings)){
		$servings = strval($servings);
	}
	else{
		$error= "Number of servings needs to be a number.";
	}

	if(preg_match("/^\d+$/",$time)){
		$time = strval($time);
	}
	else{
		$error= "Time (number of minutes) needs to be a number.";
	}

	if(preg_match("/^\d+$/",$difficulty)){
		$difficulty = strval($difficulty);
		// $rating = bcdiv($rating, 2, 1);
	}
	else{
		$error= "Something is wrong with the difficulty system";
	}

	if(empty($name)){
		$error = "Recipe Name cannot be empty";
	}else{
		$name = strtolower($name);
		$name = ucwords($name);
	}

	if(empty($imgurl)){
		$error = "Image URL cannot be empty";
	}else{
				if (!filter_var($imgurl, FILTER_VALIDATE_URL)) {
				    $error  = "It is not a valid URL";
				}
	}

	if(empty($instruction)){
		$error = "Instructions cannot be empty";
	}else if(strlen($instruction)<25){
		$error = "Instructions need to be a minimum of 25 characters";
	}

	if(empty($error)){
		$sql = "INSERT INTO RECIPES (user_id, name, date_created, servings, instructions, story, time, difficulty, image_url)
		VALUES(?,?,?,?,?,?,?,?,?)";
		if($stmt = mysqli_prepare($conn, $sql)){
			mysqli_stmt_bind_param($stmt, "ississiis", $param_userid,$param_name,
			$param_date,$param_servings,$param_instructions,$param_story,$param_time,$param_difficulty,$param_image_url,);
			$param_userid= $_SESSION['id'];
			$param_name= $name;
			$param_date= date("Y-m-d");
			$param_servings= $servings;
			$param_instructions= $instruction;
			$param_story= $story;
			$param_time= $time;
			$param_difficulty= $difficulty;
			$param_image_url= $imgurl;

			if(mysqli_stmt_execute($stmt)){
				$inserted_id =  mysqli_insert_id($conn);
				foreach($ings as $value){
					$sql = "INSERT INTO RECIPEINGREDIENTS(recipe_id, ingredient_id, text) VALUES(?,NULL,?)";
					if($stmt = mysqli_prepare($conn, $sql)){
						mysqli_stmt_bind_param($stmt, 'is', $param_id, $param_text);
						$param_id = $inserted_id;
						$param_text = $value;
						if(mysqli_stmt_execute($stmt)){
							$error = "Added ".$value;
						}else{
							$error = "Couldn't execute the ingredient add query";
						}
					}else{
						$error = "Couldn't prepare the ingredient add statement";
					}
					mysqli_stmt_close($stmt);
				}


				header("location: profile.php");
				$_SESSION["msg"] = "Recipe Added";
			}else{
				$error = "Couldn't execute the query";
			}

		}else{
			$error = "Couldn't prepare the STMT statement";
		}
	}

}
else{
	$error = "Not set";
}
	if(isset($error)){
		$_SESSION["error"] = $error;
		header("location: ./profile.php");
	}

	mysqli_close($conn);
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>
		Reset Password
	</title>
</head>
<body>

	<?php
	include("account_navbar.php")
	?>
	<!-- ======= Breadcrumbs ======= -->
	<section id="breadcrumbs" class="breadcrumbs">
		<div class="container">

			<div class="d-flex justify-content-between align-items-center">
				<h2>Profile</h2>
				<ol>
					<li><a href="../index">Home</a></li>
					<li>Profile</li>
				</ol>
			</div>

		</div>
	</section><!-- End Breadcrumbs -->
<br><br>
<div class="container">

<?php

if(isset($msg)){
echo "<div class='alert alert-success' role='alert'>".$msg."</div>";
}
if(isset($error)){
echo "<div class='alert alert-danger' role='alert'>".$error."</div>";
}
?>
	<!-- Nav Tabs -->
<div class="ner">
	<div class="d-flex justify-content-start">
  <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
    <button class="nav-link active" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="true">Profile</button>
    <button class="nav-link" id="v-pills-pass-tab" data-bs-toggle="pill" data-bs-target="#v-pills-pass" type="button" role="tab" aria-controls="v-pills-pass" aria-selected="false">Password</button>
    <button class="nav-link" id="v-pills-addrecipe-tab" data-bs-toggle="pill" data-bs-target="#v-pills-addrecipe" type="button" role="tab" aria-controls="v-pills-addrecipe" aria-selected="false">Add Recipe</button>
    <button class="nav-link" id="v-pills-myrecipes-tab" data-bs-toggle="pill" data-bs-target="#v-pills-myrecipes" type="button" role="tab" aria-controls="v-pills-myrecipes" aria-selected="false">My Recipes</button>
  </div>
  <div class="tab-content" id="v-pills-tabContent"  style="width:60vw" >




    <div class="tab-pane fade show active" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
			<div class="container  p-4">
				<form action="profile.php" method="POST" >
					<div class="form-group mb-3">
						<label for="fname">First Name</label>
						<input type="text" id="fname" name="fname" value="<?php if($log==True){echo $fname;} ?>
" class="form-control">
					</div>
					<div class="form-group mb-3">
						<label for="lname">Last Name</label>
						<input type="text" id="lname" name="lname" value="<?php if($log==True){echo $lname;} ?>" class="form-control">
					</div>
					<div class="form-group mb-3">
						<label for="email">Email</label>
						<input type="email" id="email" name="email" value="<?php if($log==True){echo $em;} ?>" class="form-control">
					</div>
					<div class="form-group mb-3">
						<label for="user">Username</label>
						<input type="text" id="user" name="user" value="<?php if($log==True){echo $us;} ?>" class="form-control">
					</div><br>
					<div class="text-center">
						<button class="btn btn-primary" name="profileForm" type="submit">Save Changes</button>
					</div>
				</form>
			</div>
    </div>


		<div class="tab-pane fade" id="v-pills-pass" style="max-width:60vw"  role="tabpanel" aria-labelledby="v-pills-pass-tab">
			<div class="container  p-4">
				<form action="profile.php" method="POST" >
					<div class="form-group mb-3">
						<label for="curpass">Current Password</label>
						<input type="password" id="curpass" name="curpass" class="form-control">
					</div>
					<div class="form-group mb-3">
						<label for="newpass">New Password</label>
						<input type="password" id="newpass" name="newpass" class="form-control">
					</div>
					<div class="form-group mb-3">
						<label for="confirmpass">Confirm New Password</label>
						<input type="password" id="confirmpass" name="confirmpass" class="form-control">
					</div><br>
					<div class="text-center">
						<button class="btn btn-primary" name="resetForm" type="submit">Reset Password</button>
					</div>
				</form>
			</div>
    </div>


    <div class="tab-pane fade" id="v-pills-addrecipe" role="tabpanel" aria-labelledby="v-pills-addrecipe-tab">
			<div class="container  p-4">
				<form action="profile.php" method="POST" >



					<div class="form-group mb-3">
						<label for="name">Recipe Name</label>
						<input type="text" id="name" name="name" class="form-control">
					</div>


					<div class="row">
						<div class="col">
							<div class="form-group mb-3">
								<label for="servings">Servings</label>
								<input type="number" id="servings" min="1" name="servings" class="form-control">
							</div>
						</div>
						<div class="col">
							<div class="form-group mb-3">
								<label for="time">Total Time <span id="opti">(Number of minutes)</span></label>
								<input type="number" id="time" min="1" name="time" class="form-control">
							</div>
						</div>
						<div class="col">
								<label for="difficulty">Difficulty</label>
								<span class="star-rating">
		  <input type="radio" name="rating" value="1"><i></i>
		  <input type="radio" name="rating" value="2"><i></i>
		  <input type="radio" name="rating" value="3"><i></i>
		  <input type="radio" name="rating" value="4"><i></i>
		  <input type="radio" name="rating" value="5"><i></i>
		  <input type="radio" name="rating" value="6"><i></i>
		  <input type="radio" name="rating" value="7"><i></i>
		  <input type="radio" name="rating" value="8"><i></i>
		  <input type="radio" name="rating" value="9"><i></i>
		  <input type="radio" name="rating" value="10"><i></i>
		</span>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-3">
							<img src="../assets/img/logo.png" alt="RECIPE IMAGE" id="recipeimghold">
						</div>
						<div class="col-lg-9">
							<br>
								<label for="imgurl">Image URL <span id="opti">(Ensure that it loads)</span></label>
							<input type="text" name="imgurl" id="imgurl" class="form-control">
						</div>
					</div>

					<br>


					<div class="form-group mb-3">
						<div class="row">
							<div class="col">
								<label for="name">Instructions <span id="opti">(Separate steps by a new line) (>25 chars)</span></label>
								<textarea class="form-control" placeholder="Start by heating the pan.... " name="instruction" id="instruction" style="height: 300px"></textarea>
							</div>
							<div class="col">
								<label for="story">Story <span id="opti">(Optional)</span></label>
								<textarea class="form-control" placeholder="I discovered this recipe while...." id="story" name="story" style="height: 300px"></textarea>
							</div>
						</div>
					</div>


					<div class="form-group mb-3" id="ings">
						<label for="ing1">Ingredients <span><i class="fas fa-plus-circle" id="addIng"></i></span></label>
						<input type="text" id="ing1" name="ing[]" placeholder="Ingredient #1" class="form-control mb-2">
					</div><br>

					<div class="text-center">
						<button class="btn btn-primary" name="addRecipe" type="submit">Add Recipe</button>
					</div>
				</form>
			</div>
    </div>



    <div class="tab-pane fade" id="v-pills-myrecipes" role="tabpanel" aria-labelledby="v-pills-myrecipes-tab">...</div>
  </div>
</div>
  </div>
</div>
<br><br><br>
	<?php include("account_footer.php") ?>
</body>
</html>
