<!DOCTYPE html>
<html lang="en">
<?php include("./login/index.php") ?>

<?php
session_start();
if(isset($_GET['showRes'])){
  if(!empty($_GET['search'])){
    $search_param = trim($_GET['search']);
    $search_param = explode(' ',$search_param);
    $sql = "SELECT recipe_id,name,date_created,instructions,time, image_url from RECIPES";
    $result = mysqli_query($conn, $sql);
    mysqli_fetch_all($result);

  }
  else{
    $error = "Search field cannot be empty";
  }

  if(isset($error)){
		$_SESSION["error"] = $error;
		header("location: ./search.php");
	}
}
 ?>


<head>
  <title>Recipe Results</title>

  <!-- =======================================================
  * Template Name: Company - v4.0.1
  * Template URL: https://bootstrapmade.com/company-free-html-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

<?php include("navbar.php") ?>


  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Results</h2>
          <ol>
            <li><a href="index.php">Home</a></li>
            <li>Results</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

<section id="contact" class="contact">
      <div class="container">
        <div class="section-title" data-aos="fade-up" style = "padding-bottom: 0px">
          <h2><strong>Results</strong></h2>
        </div>
        <div class="row mt-5 justify-content-center" data-aos="fade-up">
          <div class="col-lg-10">

            <?php

            foreach($result as $value){
              echo "
               <div class='card'>

                 <div class='card-body'>
                  <div class='row'>
                  <div class='col-lg-9'>
                    <h5 class='card-title'>".$value['name']."</h5>
                    <p class='card-text'>".substr($value['instructions'],0,200)."....<br><span id='opti'>Cooking time : ".$value['time']." minutes</span></p>
                  </div>

                  <div class='col-lg-3'>
                    <img class=' thumb' src='".$value['image_url']."' alt='Card image cap'>
                  </div>

                 </div></div>
                 <div class='card-footer'>
                   <small class='text-muted'>".$value['date_created']."</small>
                 </div>
               </div><br><br>
             ";
            }

              ?>


          </div>

        </div>

      </div>
    </section>

  </main><!-- End #main -->

<?php include("footer.php") ?>



</body>

</html>
