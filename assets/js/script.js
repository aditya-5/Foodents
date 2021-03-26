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
});
