<!DOCTYPE html>
<html>
<%@ page import ="java.sql.*" import ="java.io.*" %>
<%!public String id,pass,lid,nam; %>
<%

 Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mercer1","root", "dhanush");
    Statement sm=con.createStatement();

    ResultSet rs=null;
    %>
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
   /* #lend {
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
<%String tb=request.getParameter("fid"); %>
	 <script>
	 jQuery(function(){
			$("#name").autocomplete("list.jsp");
			
		});
	
var xmlhttp



function loadContent(str)
{

	var str= document.getElementById('name').value;
	var str1="<%=tb%>";
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
    var url="listedit2.jsp";
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
    var url="delete2.jsp";
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
	var str1="<%=tb%>";
 xmlhttp=GetXmlHttpObject();

  if (xmlhttp==null)
  {
   alert ("Your browser does not support Ajax HTTP");
   return;
  }

    var url="listedit.jsp";
    url=url+"?w="+str+"&x="+str1;

    xmlhttp.onreadystatechange=getOutput1;
    xmlhttp.open("GET",url,true);
    xmlhttp.send(null);
}

function getOutput1()
{
  if (xmlhttp.readyState==4)
  {
	  confirm("The item deleted cannot be recovered,Are you sure to delete ?")
	  alert(xmlhttp.responseText);
	  /*xyz();
	  document.getElementById('name').value="";
		document.getElementById('lid').value="";
	  document.getElementById("prtCnt").style.visibility = 'hidden';
	  document.getElementById("lend").style.visibility = 'hidden';
	  */
	  window.location.href="editlist.jsp?fid=<%=tb%>";
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
 
 </form> 
 
 </div> 
 </div>  
 
 
  <div id="prtCnt" class="form"></div>

 </div>
 
 </body>
</html>