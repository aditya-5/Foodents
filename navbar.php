<?php
session_start();
$log = false;
if(isset($_SESSION['loggedin'])){
  if($_SESSION['loggedin']==true){
  	$fname = $_SESSION['first_name'];
    $lname = $_SESSION['last_name'];
    $log = true;
  }
}
 ?>

 <head>
  <!-- Metadata -->
   <meta charset="utf-8">
   <meta content="width=device-width, initial-scale=1.0" name="viewport">
   <meta content="" name="description">
   <meta content="" name="keywords">

   <!-- Favicons -->
   <link href="assets/img/logo.png" rel="icon">
   <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

   <!-- Google Fonts -->
   <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

   <!-- Vendor CSS Files -->
   <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
   <link href="assets/vendor/aos/aos.css" rel="stylesheet">
   <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
   <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
   <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
   <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
   <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

   <!-- Template Main CSS File -->
   <link href="assets/css/style.css" rel="stylesheet">

   <!-- jQuery Local -->
   <script src="jquery-3.5.1.min.js"></script>

   <!-- MDB ICONS -->
   <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.3.0/mdb.min.css" rel="stylesheet"/>

   <!-- Font Awesome Icons -->
   <script src="https://kit.fontawesome.com/21dbb8851c.js" crossorigin="anonymous"></script>
 </head>

<header id="header" class="fixed-top">
      <div class="container d-flex align-items-center">

        <h1 class="logo me-auto"><a href="index.php"><span>F</span>OODENTS</a></h1>
        <!--Above command for text-title and below for a logo -->
        <!-- <a href="index.html" class="logo me-auto "><img src="assets/img/logo.png" alt="" class="img-fluid"></a> -->

        <!-- <a class="navbar-brand logo me-auto" href="index.html">
    <img src="assets/img/logo.png" width="30" height="30" class="d-inline-block align-top " alt="">
    oodents
  </a> -->


        <nav id="navbar" class="navbar order-last order-lg-0">
          <a href="index.php" class="active">Home</a>

          <span class="dropdown"><a href="#"><span>About</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="about.php">About Us</a></li>
              <li><a href="team.php">Team</a></li>
              <li><a href="testimonials.php">Testimonials</a></li>
            </ul>
          </span>

          <a href="fridge.php">Fridge</a>
          <a href="search.php">Search Recipe</a>
          <a href="contact.php">Contact</a>
          <?php
            if($log){
              echo "<a href='./login/logout.php'>Logout ($fname"." "."$lname)</a>";
            }
            else{
              echo "<a href='./login/login.php'>Login</a>";
            }
           ?>
          <i class="bi bi-list mobile-nav-toggle"></i>
        </nav>

      </div>
</header>
