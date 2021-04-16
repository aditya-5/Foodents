

 <head>
  <!-- Metadata -->
   <meta charset="utf-8">
   <meta content="width=device-width, initial-scale=1.0" name="viewport">
   <meta content="" name="description">
   <meta content="" name="keywords">

   <!-- Favicons -->
   <link href="../assets/img/logo.png" rel="icon">
   <link href="../assets/img/apple-touch-icon.png" rel="apple-touch-icon">

   <!-- Google Fonts -->
   <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

   <!-- Bootstrap JS File -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>


  <!-- Vendor CSS Files -->
  <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

   <!-- Template Main CSS File -->
   <link href="../assets/css/style.css" rel="stylesheet">

   <!-- jQuery Local -->
   <script src="../assets/vendor/jquery/jquery-3.5.1.min.js"></script>

   <!-- jQuery Custom -->
   <script src="../assets/js/script.js"></script>

   <!-- MDB ICONS -->
   <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.3.0/mdb.min.css" rel="stylesheet"/>

   <!-- Font Awesome Icons -->
   <script src="https://kit.fontawesome.com/21dbb8851c.js" crossorigin="anonymous"></script>
 </head>

<header id="header" class="fixed-top">
      <div class="container d-flex align-items-center">

        <h1 class="logo me-auto"><a href="index"><span>F</span>OODENTS</a></h1>
        <!--Above command for text-title and below for a logo -->
        <!-- <a href="index.html" class="logo me-auto "><img src="assets/img/logo.png" alt="" class="img-fluid"></a> -->

        <!-- <a class="navbar-brand logo me-auto" href="index.html">
    <img src="assets/img/logo.png" width="30" height="30" class="d-inline-block align-top " alt="">
    oodents
  </a> -->


        <nav id="navbar" class="navbar order-last order-lg-0">
          <a href="../index" class="active">Home</a>

          <span class="dropdown"><a href="#"><span>About</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="../about">About Us</a></li>
              <li><a href="../team">Team</a></li>
              <li><a href="../testimonials">Testimonials</a></li>
              <li><a href="../terms">Terms and Conditions</a></li>
            </ul>
          </span>

          <a href="../fridge">Fridge</a>
          <a href="../search">Search Recipe</a>
          <a href="../contact">Contact</a>
          <?php
            if($log){
              echo "<span class='dropdown'><a href='#'><i class='fas fa-user-circle'  style='font-size: 1.8em; padding:3px 5px 0px 0px'></i><span>".$fname." ".$lname."</span> <i class='bi bi-chevron-down'></i>"."&nbsp&nbsp&nbsp&nbsp"."</a>
                <ul>
                  <li><a href='./profile'>Profile</a></li>
                  <li><a href='./logout'>Logout</a></li>
                </ul>
              </span>";
            }
            else{
              echo "<a href='./login'>Login&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>";
            }
           ?>

        </nav>

      </div>
</header>
