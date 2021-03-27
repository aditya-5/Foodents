

<?php include("./login/index.php") ?>
<?php

if(session_status() == PHP_SESSION_NONE){
    session_start();
}

$log = false;
if(isset($_SESSION['loggedin'])){
  if($_SESSION['loggedin']==true){
    $id = $_SESSION['id'];
    $log = true;
  }
}
$error = "";
$success = "";
  if(isset($_POST['comment'])){

    if(!empty($_POST['comment'])){
      $comm = trim($_POST['comment']);


      if(strlen($comm)<255){
        $date = date("Y-m-d");
        $id = $_SESSION['id'];
        $rid= $_POST['rid'];

      if (!mysqli_query($conn,"INSERT INTO COMMENTS (user_id, recipe_id, text, date) VALUES('$id' ,'$rid', '$comm', '$date')")) {
        $error = "Error description: " . mysqli_error($conn);
        }
        else{
          $success = "Comment added";
        }
      }else{
        $error = "Comments cannot be greater than 255 characters";
      }
    }
    else{
      $error = "Comment cannot be empty";
    }
  }else{
    $error =  "Something is wrong with the form";
  }


echo json_encode(array("error" => $error, "success"=>$success));

 ?>
