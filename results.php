<!DOCTYPE html>
<html lang="en">
<?php include("./server.php") ?>

<?php
session_start();


// ************************************************************
// SEARCH FORM SUBMISSION
// ************************************************************
if(isset($_GET['showRes'])){
  if(!empty($_GET['search'])){
    $search_param = strtolower(trim($_GET['search']));
    if(!preg_match("/^[A-Za-z0-9\s]+$/", $search_param)){
      $error = "Search string can be letters and numbers only";
    }
    $search_param = explode(' ',$search_param);



    if(empty($error)){
      $sql = "SELECT recipe_id,name,date_created,instructions,time, image_url,difficulty from RECIPES";
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



// ************************************************************
// FRIDGE FORM SUBMISSION
// ************************************************************
if(isset($_GET['fridgeRes'])){
  if(isset($_GET['selectedIngs'])){
    if(!empty(trim($_GET['selectedIngs']))){
      $selectedIngs = trim($_GET['selectedIngs']);
      $explodedIngs = explode(",",$selectedIngs);
      $array = array();
      foreach($explodedIngs as $value){
        if(!empty($value)){
          array_push($array, $value);
        }
      }

      $explodedIngs = $array;



      $sql = "SELECT recipe_id, text from RECIPEINGREDIENTS";
      $result = mysqli_query($conn, $sql);
      mysqli_fetch_all($result);
      $selectedRecIds = array();
      foreach($result as $value){
        foreach($explodedIngs as $val){
          if(strpos(strtolower($value['text']), strtolower(strval($val)))){
            array_push($selectedRecIds, intval($value['recipe_id']));
          }

        }
      }
      $selectedRecIds = array_unique($selectedRecIds);


      $results2= array();
      foreach($selectedRecIds as $value){
        $sql = "SELECT recipe_id,name,date_created,instructions,time, image_url,difficulty from RECIPES where recipe_id=$value";
        $indiRecipe = mysqli_query($conn, $sql);
        mysqli_fetch_all($indiRecipe);
        foreach($indiRecipe as $rec){
          array_push($results2, $rec);
        }
      }


      $result = $results2;

    }else{
      $error = "Ingredients cannot be empty";
    }
  }

  if(isset($error)){
		$_SESSION["error"] = $error;
		header("location: ./fridge");}
}

 ?>


<head>
  <title>Recipe Results</title>
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

<?php
include("navbar.php")
 ?>

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Results</h2>
          <ol>
            <li><a href="index">Home</a></li>
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
            if(isset($result)){
              if(count($result)>0){
                foreach($result as $value){
                  echo "
                   <div class='card'>

                     <div class='card-body'>
                      <div class='row'>
                      <div class='col-lg-9'>
                      <a class='link-res' href='./recipe?id=".$value['recipe_id']."'><h5 class='card-title'>".$value['name']."</h5></a>

                        <p class='card-text'>".substr($value['instructions'],0,200).".... <a href='./recipe?id=".$value['recipe_id']."'><span id='checkedd'>Read More</span></a><br><span id='opti'>Cooking time : ".$value['time']." minutes</span></p>
                      </div>

                      <div class='col-lg-3'>
                        <img class=' thumb' src='".$value['image_url']."' alt='Card image cap' style='width: 250px; height: 200px; object-fit: cover;'>
                      </div>

                     </div></div>
                     <div class='card-footer'>
                       <small class='text-muted'>".$value['date_created']."</small>
                       <span class='overview-title'> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Difficulty level : ";
                       $star = $value['difficulty'];
                       for($i=1;$i<=$star;$i++){
                         echo "<span class='fa fa-star checked' style='color: orange;'></span>";
                       }
                       for($i=1;$i<=5-$star;$i++){
                         echo "<span class='fa fa-star '></span>";
                       }

                     echo "</div>
                   </div><br><br>
                 ";
               }
              }else{
                echo "<div class='alert alert-danger' role='alert'>Sorry, no recipes found. <a href='./search'>Search for something else?</a> </div>";
                echo "<div class='alert alert-primary' role='alert'>Have a recipe on your mind? Add it to our database. <a href='./login/login'>Login and Add</a> </div>";
              }
            }

              ?>

              </span></li>





          </div>

        </div>

      </div>
    </section>

  </main><!-- End #main -->

<?php include("footer.php") ?>



</body>

</html>
