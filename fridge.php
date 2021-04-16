<!DOCTYPE html>
<html lang="en">


<head>
  <title>Fridge</title>
  <link rel="shortcut icon" href="./assets/img/favicon.png">
  <link rel="bookmark" href="./assets/img/favicon.png">

  <!-- =======================================================
  * Template Name: Company - v4.0.1
  * Template URL: https://bootstrapmade.com/company-free-html-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
<?php include("navbar.php") ?>
<?php
if(isset($_SESSION["error"])){
	$error = $_SESSION["error"];
	unset($_SESSION["error"]);
}else{
	unset($error);
}
 ?>
  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Fridge</h2>
          <ol>
            <li><a href="index">Home</a></li>
            <li>Fridge</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

<section id="contact" class="contact">
      <div class="container">
        <div class="section-title" data-aos="fade-up" style = "padding-bottom: 0px">
          <h2>Fridge</h2>
        </div>
        <div class="row mt-5 justify-content-center" data-aos="fade-up">
          <div class="col-lg-10">

            <?php
            if(isset($error)){
            echo "<div class='alert alert-danger' role='alert'>".$error."</div>";
            }
            ?>
            <form method="get" id="fridgeRes" action="results.php" class="php-email-form">

              <div class="row"><center>
                <h4>How do I use it?</h4>
                <p>Type an ingredient in the search box. Then, click on the ingredient from the list below to select it. <br>
                You can see the current list at the bottom of the page. When you are done, hit search and see what you can cook!<br><br>
                We have over 500 ingredients in store, so don't hesitate to add anything you have in the kitchen!<br><br></p></center>
              </div>

              <div class="row">
                <div class="col-md-12 form-group">
                  <input type="text"  id="ings" class="form-control" placeholder="Search and select ingredients from the table" >
                </div>

              <div class="row d-flex justify-content-center">
                <div class="col-lg-4" >

                    <table class="table">

                      <thead>
                        <tr><th scope="col"><center>Ingredient Name</center></th></tr>
                      </thead>

                      <tbody id="displayIng">
                        <tr><td><center><span id="opti">Click on ingredients to select them</span></center></td></tr>
                      </tbody>
                    </table>
                </div>
              </div>
              <div class="text-center" style = "padding-top: 10px">
                <button type="submit" name="fridgeRes" value="submit">Search</button></div>

                <input type="text" hidden name="selectedIngs" id="selectedIngs" value="">
            </form>
            <br><br><br>
            <div id="selectedIng">
            </div>




          </div>

        </div>

      </div>
    </section>

  </main><!-- End #main -->
<?php include("footer.php") ?>

</body>

</html>
