
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex, nofollow">
  <meta name="googlebot" content="noindex, nofollow">

  <script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js"></script>

    <link rel="stylesheet" type="text/css" href="/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="/css/result-light.css">
  

  

  <style type="text/css">
    li {
  border: 1px solid #ccc;
  margin-bottom: 3px;
  padding: 2px 5px;
}

button {
  margin-left: 10px
}

  </style>

  <title></title>

  
    




<script type='text/javascript'>//<![CDATA[
$(function(){
$('#btnName').click(function() {
  var text = $('#inputName').val() + '<button>x</button>';
  if (text.length) {
    $('<li />', {
      html: text
    }).appendTo('ul.justList')
  }
});

$('ul').on('click', 'button', function(el) {
  $(this).parent().remove()
});

});//]]> 

</script>

  
</head>

<body>
  <input type="test" id="inputName" />
<button id="btnName">Click me!</button>

<ul class="justList"></ul>

  
</body>

</html>

