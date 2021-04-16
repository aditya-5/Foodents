<!DOCTYPE html>
<html lang="en">

<head>
  <title>Foodents by X9</title>
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
  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

      <div class="carousel-inner" role="listbox">

        <div class="carousel-item active" style="background-image: url(assets/img/slide/valeria-aksakova.jpg);"></div>
        <div class="carousel-item" style="background-image: url(assets/img/slide/stockking-1.jpg);"></div>
        <div class="carousel-item" style="background-image: url(assets/img/slide/master1305-2.jpg);"></div>
        <div class="carousel-item" style="background-image: url(assets/img/slide/pvproductions.jpg);"></div>
        <div class="carousel-item" style="background-image: url(assets/img/slide/schantalao.jpg);"></div>
        <div class="carousel-item" style="background-image: url(assets/img/slide/master1305-2.jpg);"></div>
        <div class="carousel-item" style="background-image: url(assets/img/slide/stockking-2.jpg);"></div>
        <div class="carousel-item" style="background-image: url(assets/img/slide/timolina.jpg);"></div>

        <div class="carousel-container">
            <div class="carousel-content animate__animated animate__fadeInUp ">
              <h2>Welcome to <span>Foodents</span></h2>
              <p>Foodents has been designed by the<a href="team"> Team X9</a>. It is an app which lets you to not only look for recipes according to your specific constraints, but also share your own recipe story with the world.  </p>
            </div>
          </div>

      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
      </a>

      <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= About Us Section ======= -->
    <section id="about-us" class="about-us">
      <div class="container" data-aos="fade-up">

        <div class="row content">
          <div class="col-lg-6" data-aos="fade-right">
            <h2>Foodents</h2>
             <blockquote class="blockquote">
         <p>What is the easiest and safest way to savour delicious food during these unfortunate times?</p>
       </blockquote>
       <div class="greyAns">
         <br>It's definitely by cooking yourself! Don't worry if you know nothing about cooking!
       </div>
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0" data-aos="fade-left">
            <p>
              Foodents is your friend in these unfortunate times. With over 500 recipes in store, you can search recipes based on a number of constraints -
            </p>
            <ul>
              <li><i class="ri-check-double-line"></i> Have specific ingredients? Use our <a href="fridge">Fridge Feature</a> to search for recipes based on the specific set of ingredients you have in fridge.</li>
              <li><i class="ri-check-double-line"></i> Have little time to cook? Sort the recipes out based on their cooking times.</li>
              <li><i class="ri-check-double-line"></i> Looking for a particular recipe? Use our <a href="search">Search Recipe</a> feature to search recipes by title.</li>
            </ul>
            <p class="font-italic">
                It isn't over yet. <a href="./login/login">Register/Login </a>to interact with other users on Foodents. Share your personalised recipes and hear what others have to say about it.
            </p>
          </div>
        </div>

      </div>
    </section><!-- End About Us Section -->


    <!-- ======= Recipe Cards Section ======= -->
    <section id="portfolio" class="portfolio section-bg">
      <div class="container">

        <div class="row" data-aos="fade-up">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">All</li>
              <li data-filter=".filter-Desserts">Desserts</li>
              <li data-filter=".filter-Starters">Starters</li>
              <li data-filter=".filter-Main">Main courses</li>
            </ul>
          </div>
        </div>

        <div class="row portfolio-container" data-aos="fade-up">

          <div class="col-lg-4 col-md-6 portfolio-item filter-Desserts">
            <a href="./recipe?id=629"><img src="assets/img/recipeimg/cake.jpg" class="img-fluid" alt=""></a>
            <div class="portfolio-info">
              <h4>Godiva Dark Chocolate Cheesecake</h4>
              <p>Dessert</p>
              <a href="assets/img/recipeimg/cake.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Godiva Dark Chocolate Cheesecake"><i class="bx bx-plus"></i></a>
              <a href="./recipe?id=629" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-Starters">
            <a href="./recipe?id=630"><img src="assets/img/recipeimg/salad.jpg" class="img-fluid" alt=""></a>
            <div class="portfolio-info">
              <h4>Greek Salad</h4>
              <p>Starter</p>
              <a href="assets/img/recipeimg/salad.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Greek Salad"><i class="bx bx-plus"></i></a>
              <a href="./recipe?id=630" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>



          <div class="col-lg-4 col-md-6 portfolio-item filter-Desserts">
            <a href="./recipe?id=631"><img src="assets/img/recipeimg/biscuit.jpg" class="img-fluid" alt=""></a>
            <div class="portfolio-info">
              <h4>Flaky Buttermilk Biscuits</h4>
              <p>Dessert</p>
              <a href="assets/img/recipeimg/biscuit.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Flaky Buttermilk Biscuits"><i class="bx bx-plus"></i></a>
              <a href="./recipe?id=631" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

           <div class="col-lg-4 col-md-6 portfolio-item filter-Main">
            <a href="./recipe?id=619"><img src="assets/img/recipeimg/shrimp.jpg" class="img-fluid" alt=""></a>
            <div class="portfolio-info">
              <h4>Baked Shrimp Scampi</h4>
              <p>Main Course</p>
              <a href="assets/img/recipeimg/shrimp.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Shrimp"><i class="bx bx-plus"></i></a>
              <a href="./recipe?id=619" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

         <!--  _________
 -->

          <div class="col-lg-4 col-md-6 portfolio-item filter-Starters">
            <a href="./recipe?id=620"><img src="https://www.healthywomen.org/media-library/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpbWFnZSI6Imh0dHBzOi8vYXNzZXRzLnJibC5tcy8xOTE1NzM3My9vcmlnaW4uanBnIiwiZXhwaXJlc19hdCI6MTY2MTg3NTE2N30.mc96FoPc8PjMjLsBYF-AwOFOY7bKcXkoSlLmQ39wlxs/image.jpg?width=980&quality=85" class="img-fluid" alt=""></a>
            <div class="portfolio-info">
              <h4>Strawberries Romanov</h4>
              <p>Dessert</p>
              <a href="https://www.healthywomen.org/media-library/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpbWFnZSI6Imh0dHBzOi8vYXNzZXRzLnJibC5tcy8xOTE1NzM3My9vcmlnaW4uanBnIiwiZXhwaXJlc19hdCI6MTY2MTg3NTE2N30.mc96FoPc8PjMjLsBYF-AwOFOY7bKcXkoSlLmQ39wlxs/image.jpg?width=980&quality=85" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Strawberries Romanov"><i class="bx bx-plus"></i></a>
              <a href="./recipe?id=620" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>


          <div class="col-lg-4 col-md-6 portfolio-item filter-Starters">
          <a href="./recipe?id=623"><img src="http://themessybaker.com/wp-content/uploads/2013/04/salmon-ebelskivers.gif" class="img-fluid" alt=""></a>
            <div class="portfolio-info">
              <h4>Smoked Salmon Ebelskivers</h4>
              <p>Starters</p>
              <a href="http://themessybaker.com/wp-content/uploads/2013/04/salmon-ebelskivers.gif" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Michigan Farmhouse Pizza"><i class="bx bx-plus"></i></a>
              <a href="./recipe?id=623" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-Starters">
          <a href="./recipe?id=635"><img src="https://hispanickitchen-nglmedia.netdna-ssl.com/wp-content/uploads/2017/07/Ensalada-de-Pollo_1500-700x500.jpg" class="img-fluid" alt=""></a>
            <div class="portfolio-info">
              <h4>Mexican Ensalada</h4>
              <p>Starters</p>
              <a href="https://hispanickitchen-nglmedia.netdna-ssl.com/wp-content/uploads/2017/07/Ensalada-de-Pollo_1500-700x500.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Sushi"><i class="bx bx-plus"></i></a>
              <a href="./recipe?id=635" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>




        </div>

      </div>
    </section>
    <!-- End Portfolio Section -->



  </main><!-- End #main -->

<?php include("footer.php") ?>


  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>
