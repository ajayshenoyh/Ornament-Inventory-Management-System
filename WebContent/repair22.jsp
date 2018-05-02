<!DOCTYPE html>
<html>
<head>
<title>Venktaraman temple,Mulki</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="css/stylem.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/demom.css" media="all" />
	 <link rel="stylesheet" type="text/css" href="css/itemstyle.css" media="all" />
	   <link rel="stylesheet" type="text/css" href="css/stylemm.css" media="all" />
	 <script type="text/javascript" src="jss/jquery-1.4.2.min.js"></script>
	<script src="jss/jquery.autocomplete.js"></script>	
</head>
<style>body {
    background-image: url("images/bgnoise_lg.png");
}</style>
<style>
 #prtCnt{
 position: absolute;
    left: 670px;
    top: 150px;
    z-index: 1;
    }
    div img {
    position: absolute;
    left: 265px;
    top: 70px;
    z-index: 1;
    }
    /*#lend {
     position: absolute;
    left: 585px;
    top: 370px;
    z-index: 1;
    visibility: hidden;
    }*/
    #prtCnt
    {
    visibility: hidden;
    }
     position: absolute;
</style>
	 <script>
	 jQuery(function(){
			$("#name").autocomplete("list.jsp");
			
		});
	 /*jQuery(function(){
		 $("#lid").autocomplete("list1.jsp");
			
		});
	*/
var xmlhttp



function loadContent(str)
{

	var str= document.getElementById('name').value;
	var str1="";
	document.getElementById('lid').value="";
 xmlhttp=GetXmlHttpObject();

  if (xmlhttp==null)
  {
   alert ("Your browser does not support Ajax HTTP");
   return;
  }
  if(str==""&str1=="")
	  {
	  alert("No input");
	  document.getElementById('name').value="";
		document.getElementById('lid').value="";
	  }
  else
	  {
	  abc();
    var url="repair2.jsp";
    url=url+"?s="+str+"&y="+str1;

    xmlhttp.onreadystatechange=getOutput;
    xmlhttp.open("GET",url,true);
    xmlhttp.send(null);
	  }
}

function getOutput()
{
  if (xmlhttp.readyState==4)
  {
	  document.getElementById("prtCnt").style.visibility = 'visible';
  document.getElementById("prtCnt").innerHTML=xmlhttp.responseText;
  document.getElementById("lend").style.visibility = 'visible';
  
  }
}

//////////////////////////
function loadContent2(str)
{

	var str="";
	document.getElementById('name').value="";
	
	var str1=document.getElementById('lid').value;
 xmlhttp=GetXmlHttpObject();

  if (xmlhttp==null)
  {
   alert ("Your browser does not support Ajax HTTP");
   return;
  }
  if(str==""&str1=="")
	  {
	  alert("No input");
	  document.getElementById('name').value="";
		document.getElementById('lid').value="";
	  }
  else
	  {
	  abc();
    var url="repair2.jsp";
    url=url+"?s="+str+"&y="+str1;

    xmlhttp.onreadystatechange=getOutput2;
    xmlhttp.open("GET",url,true);
    xmlhttp.send(null);
	  }
}

function getOutput2()
{
  if (xmlhttp.readyState==4)
  {
	  document.getElementById("prtCnt").style.visibility = 'visible';
  document.getElementById("prtCnt").innerHTML=xmlhttp.responseText;
  document.getElementById("lend").style.visibility = 'visible';
  
  }
}



function loadContent1(str)
{
	
	var str= document.getElementById('name').value;
	var str1=document.getElementById('lid').value;
 xmlhttp=GetXmlHttpObject();

  if (xmlhttp==null)
  {
   alert ("Your browser does not support Ajax HTTP");
   return;
  }

    var url="repairinsert.jsp";
    url=url+"?w="+str+"&x="+str1;


    window.location.href = url;
}



//found
function loadContent4(str)
{
	
	var str= document.getElementById('name').value;
	var str1=document.getElementById('lid').value;
 xmlhttp=GetXmlHttpObject();

  if (xmlhttp==null)
  {
   alert ("Your browser does not support Ajax HTTP");
   return;
  }

    var url="repairinsert3.jsp";
    url=url+"?w="+str+"&x="+str1;


    window.location.href = url;
}



function getOutput1()
{
  if (xmlhttp.readyState==4)
  {
	  alert(xmlhttp.responseText);
	  xyz();
	  document.getElementById('name').value="";
		document.getElementById('lid').value="";
	  document.getElementById("prtCnt").style.visibility = 'hidden';
	  document.getElementById("lend").style.visibility = 'hidden';
  }
}

function GetXmlHttpObject()
{
    if (window.XMLHttpRequest)
    {
       return new XMLHttpRequest();
    }
    if (window.ActiveXObject)
    {
      return new ActiveXObject("Microsoft.XMLHTTP");
    }
 return null;
}



function abc()
{
	document.getElementById('abc').style.cssText=' position: absolute;left:85px;z-index: 0;';
	}
function xyz()
{
	document.getElementById('abc').style.cssText=' position: absolute;left:370px;z-index: 1;';
	}
</script>

<body>

	
<div class="container">
			<!-- freshdesignweb top bar -->
            <div class="freshdesignweb-top">                
                <div class="clr"></div>
            </div><!--/ freshdesignweb top bar -->
			<header>
				<h1><u>SRI VENKATARAMAN TEMPLE</u><span>MULKI</span></h1>
				<h1><u><a href="index.html" accesskey="1" title="">Home </u></a></h1>
            </header>       
   <div id="abc" >      
      <div  class="form">
    		<form id="contactform" method="post" action=""> 

    			<p class="contact"><label for="name">NAME</label></p> 
    			<input id="name" name="name" placeholder="name" required="" tabindex="1" type="text"> 
 <input class="buttom" name="submit" id="submit" tabindex="5" value="Search By Name" type="button" onclick="loadContent('hi')"> 
 <br>
 	 		
	<p class="contact"><label for="name">ID</label></p> 
    			<input id="lid" name="lid" placeholder="lid" required="" tabindex="1" type="text"> 

 <input class="buttom" name="submit" id="submit" tabindex="5" value="Search By Id" type="button" onclick="loadContent2('hi')"> 	

 
 </form> 
 
 </div> 
 </div>  
 
 
  <div id="prtCnt" class="form"></div>

 </div>
 
 </body>
</html>