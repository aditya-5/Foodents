<!DOCTYPE html>
<html lang="en">
<?php
session_start();
if(isset($_SESSION["error"])){
	$error = $_SESSION["error"];
	unset($_SESSION["error"]);
}else{
	unset($error);
}
 ?>

<head>
  <title>Search Recipes-Foodents</title>

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
          <h2>Search Recipes</h2>
          <ol>
            <li><a href="index.php">Home</a></li>
            <li>Recipes</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

<section id="contact" class="contact">
      <div class="container">
        <div class="section-title" data-aos="fade-up" style = "padding-bottom: 0px">
          <h2>Search <strong>Recipes</strong></h2>
        </div>
        <div class="row mt-5 justify-content-center" data-aos="fade-up">
          <div class="col-lg-10">

            <?php
            if(isset($error)){
            echo "<div class='alert alert-danger' role='alert'>".$error."</div>";
            }
            ?>
            <form action="results.php" method="get" role="form" class="php-email-form">
              <div class="row">
                <div class="col-md-12 form-group">
                  <input type="text" name="search" class="form-control" id="search" placeholder="Search by recipe name" required>
                </div>
              <div class="text-center" style = "padding-top: 10px">
                <button type="submit" name="showRes">Search</button></div>
            </form>




          </div>

        </div>

      </div>
    </section>

  </main><!-- End #main -->

<?php include("footer.php") ?>



</body>

</html>
