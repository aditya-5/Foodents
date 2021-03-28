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

$(".profDP").click(function(){
  $('.profDP').css("border","none");
  $(this).css("border","2px solid black");
})

var arr = [];
var ingData = []
var i =1;
$("#ings").on("keyup",function(){
  if(i==1){
    $.ajax({
      type:'post',
      url:"ing-retrieve.php",
      success: function(data){
        ingData = JSON.parse(data);
        i++;
      }
    })
  }

  if(i>1){
   arr = [];
    var vals= $("#ings").val();
    if(vals.length>1){
      ingData.forEach(function(item,index){
        if(item.toLowerCase().includes(vals.toLowerCase())){
          arr.push(item)
        }
      })
      $('#displayIng').html("<tr><td><span id='opti'>Click on ingredients to select them</span></td></tr>")

      arr.forEach(function(item,index){
        $('#displayIng').append("<tr class='displayRow' style='cursor:pointer'><td><center>"+item+"</center></td></tr>")
      })
    }else{
      $('#displayIng').html("<tr><td><span id='opti'>Click on ingredients to select them</span></td></tr>")
    }
  }


})

  $("#displayIng").on('click','.displayRow',function(){
    console.log('sdd')
    var item2 = $(this).text();

    var index2 = arr.indexOf(item2);
    if (index2 > -1) {
    arr.splice(index2, 1);
    }
    var index3 = ingData.indexOf(item2);
    if (index3 > -1) {
    ingData.splice(index3, 1);
    }

    $('#displayIng').html("<tr><td><span id='opti'>Click on ingredients to select them</span></td></tr>")
    arr.forEach(function(item,index){
      $('#displayIng').append("<tr class='displayRow' style='cursor:pointer'><td><center>"+item+"</center></td></tr>")
    })

    $('#selectedIng').append("<span class='badge bg-info p-2 mb-3 mx-2'>"+item2+"</span>")

    var existingValue = $('#selectedIngs').val();
    $('#selectedIngs').val(existingValue+","+item2)

  })

});
