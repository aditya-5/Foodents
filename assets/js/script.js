$( document ).ready(function() {
  var ingNo = 1
    $("#addIng").click(function(){
      ingNo++;
      $("#ings").append("<input type='text' id='ing1' name='ing[]' placeholder='Ingredient #"+ingNo+"' class='mb-2 form-control'>");
    })

  $("#imgurl").change(function(){
    var a = $(this).val();
    if(a.length>0){
      $("#recipeimghold").attr("src", a);
    }else{
      a = "https://www.publicdomainpictures.net/pictures/280000/velka/not-found-image-15383864787lu.jpg"
      $("#recipeimghold").attr("src", a);
    }
  })

  $("#recipeimghold").on("error", function(){
          $(this).attr('src', 'https://www.publicdomainpictures.net/pictures/280000/velka/not-found-image-15383864787lu.jpg');
      });



  $('#comAdd').on('submit', function (e) {

       e.preventDefault();


       $.ajax({
         type: 'post',
         url: 'comment_add.php',
         data: $('#comAdd').serialize(),
         success: function (data1) {
           $("#comment").val("");
           data1 = JSON.parse(data1);
           if(data1['error'].length>1){
             $('#commentError').removeAttr("hidden");
             $('#commentError').text(data1['error']);
             setTimeout(function(){
              $('#commentError').attr("hidden",true);
            },5000)
           }
           if(data1['success'].length>1){
             $('#commentSuccess').removeAttr("hidden");
             $('#commentSuccess').text(data1['success']);
             setTimeout(function(){
              $('#commentSuccess').attr("hidden",true);
            },5000)
           }

         }
       });

     });


});
