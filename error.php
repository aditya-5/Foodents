<?php
header( "refresh:6;url=index" );
 ?>

 <!DOCTYPE html>
 <html lang="en">
 <?php include("./login/index.php") ?>

 <?php
 session_start();
 if(isset($_GET['showRes'])){
   if(!empty($_GET['search'])){
     $search_param = strtolower(trim($_GET['search']));
     if(!preg_match("/^[A-Za-z0-9\s]+$/", $search_param)){
       $error = "Search string can be letters and numbers only";
     }
     $search_param = explode(' ',$search_param);



     if(empty($error)){
       $sql = "SELECT recipe_id,name,date_created,instructions,time, image_url from RECIPES";
       $result = mysqli_query($conn, $sql);
       mysqli_fetch_all($result);
       $results2 = array();

       foreach($result as $value){
         $occur = 0;
         foreach($search_param as $word){


           if(strpos( strtolower($value['name']), $word ) !== false){
             $occur = 1;
             continue;
           }else{
             $occur = 0;
           }
           if($occur==0){
             break;
           }
         }
         if ($occur ==1){
           array_push($results2, $value);
         }

       }
       $result = $results2;
     }



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

 <?php
 include("navbar.php")
  ?>

   <main id="main">

     <!-- ======= Breadcrumbs ======= -->
     <section id="breadcrumbs" class="breadcrumbs">
       <div class="container">

         <div class="d-flex justify-content-between align-items-center">
           <h2></h2>
           <ol>
             <li><a href="index.php">Home</a></li>
           </ol>
         </div>

       </div>
     </section><!-- End Breadcrumbs -->


     <section id="contact" class="contact">
       <div class="section-title" data-aos="fade-up" style = "padding-bottom: 0px">
         <h2><strong>Redirecting in <span id="timer">5</span> ...</strong></h2>
       </div>

             <div class="row justify-content-center" data-aos="fade-up">

                 <img src="./assets/img/stories.jpg" alt="" style="height:70vh; width:70vh">

             </div>

         </section>

   </main><!-- End #main -->

 <?php include("footer.php") ?>

 <script>
 $(document).ready(function() {
var i =5

var x = setInterval(function(){
   as();
   i--;
   if(i<0){
     clearInterval(x);
   }
 },1000)


function as(){
  $("#timer").text(i);
}



 })
 </script>
 </body>
 </html>
