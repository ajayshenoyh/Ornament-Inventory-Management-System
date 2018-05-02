<!DOCTYPE html>
<html>
<%@ page import ="java.sql.*" import ="java.io.*" %>

<%!public String id,pass,lid,nam,tbname; int flag=0; int tag;boolean done; String tb1; %>
<%

 Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mercer1","root", "dhanush");
    Statement sm=con.createStatement();
    tbname=request.getParameter("fid"); 
    DatabaseMetaData md = con.getMetaData();
    ResultSet rsp;
    rsp = md.getTables(null, null, "%", null);
    while(rsp.next())
    {
    if((rsp.getString(3).equals(tbname)))
    {
    	tag=0;
    	break;
    }
    else
    {
    	tag=1;
    	
    }
    }
    
    if(tag==1)
    {
           // execyteUpdate() mothod execute specified sql query. 
sm.executeUpdate("create table "+tbname+"("
	      + "firstName VARCHAR(800) )");
    ResultSet rs=null;
  
}
    
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
  

  

  <style type="text/css">
    li {
 
  margin-bottom: 3px;
  padding: 2px 10px;
}

button {
  margin-left: 10px
}

  </style>
	 
	
	
<script type='text/javascript'>//<![CDATA[
jQuery(function(){
	$("#name").autocomplete("llist.jsp");
	
});
jQuery(function(){
 $("#lid").autocomplete("llist1.jsp");
	
});

</script>

</head>
<style>body {
    background-image: url("images/bgnoise_lg.png");
}
p.contact1
{
visibility: hidden;
}
button.bottom1
{
visibility: hidden;
}
</style>
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
	 <script>


function fest()
{
	document.getElementById('fid1').style.cssText='visibility: visible';
	document.getElementById('fid').style.cssText='visibility: visible';
	document.getElementById('fes').style.cssText='visibility: visible';
	}
var xmlhttp



function loadContent(strj)
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
	
    var url="list4.jsp";
    url=url+"?s="+strj+"&lid1="+str1+"&nam1="+str;

    xmlhttp.onreadystatechange=getOutput;
    xmlhttp.open("GET",url,true);
    xmlhttp.send(null);
	  }
}

function getOutput()
{
  if (xmlhttp.readyState==4)
  {
	 
  //document.getElementById("prtCnt").innerHTML=xmlhttp.responseText; 
  alert(xmlhttp.responseText);
  document.getElementById('name').value="";
	document.getElementById('lid').value="";
  document.getElementById("lend").style.visibility = 'visible';

  
  }
}






function loadContent12(strj)
{
	var str= document.getElementById('lid').value;
	var str1="";
	document.getElementById('name').value="";
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
	
    var url="list4.jsp";
    url=url+"?s="+strj+"&lid1="+str+"&nam1="+str1;

    xmlhttp.onreadystatechange=getOutput;
    xmlhttp.open("GET",url,true);
    xmlhttp.send(null);
	  }
}

function getOutput()
{
  if (xmlhttp.readyState==4)
  {
	
	//document.getElementById("prtCnt").innerHTML=xmlhttp.responseText;
	  alert(xmlhttp.responseText);
	  document.getElementById('name').value="";
		document.getElementById('lid').value="";
  document.getElementById("lend").style.visibility = 'visible';
  //window.location.href="editlist.jsp?fid=<%=tbname%>";
  
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
    var url="lend2.jsp";
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

    var url="lend4.jsp";
    url=url+"?w="+str+"&x="+str1;

    xmlhttp.onreadystatechange=getOutput1;
    xmlhttp.open("GET",url,true);
    xmlhttp.send(null);
}

function getOutput1()
{
  if (xmlhttp.readyState==4)
  {
	  alert(xmlhttp.responseText);
	  /*xyz();
	  document.getElementById('name').value="";
		document.getElementById('lid').value="";
	  document.getElementById("prtCnt").style.visibility = 'hidden';
	  document.getElementById("lend").style.visibility = 'hidden';
	  */
	  window.location.href="lend22.jsp";
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
//////////////////////////festival /////////////////////////////
function fes()
{
fest();
	var str= document.getElementById('fid').value;
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
    var url="lendfest.jsp";
    url=url+"?s="+str;

    xmlhttp.onreadystatechange=getOutput5;
    xmlhttp.open("GET",url,true);
    xmlhttp.send(null);
	  }
}

function getOutput5()
{
  if (xmlhttp.readyState==4)
  {
	  document.getElementById("prtCnt").style.visibility = 'visible';
  document.getElementById("prtCnt").innerHTML=xmlhttp.responseText;
  document.getElementById("lend").style.visibility = 'visible';
  
  }
}

/*function fes()
{
	var str=document.getElementById('fid').value;
	 var url="lendfest.jsp";
	    url=url+"?s="+str;
	    window.location.href=url;
	}*/
function fest()
{
	document.getElementById('fid1').style.cssText='visibility: visible';
	document.getElementById('fid').style.cssText='visibility: visible';
	document.getElementById('fes').style.cssText='visibility: visible';
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
<!-- create table [table name] (personid int(50) not null auto_increment primary key,firstname varchar(35),middlename varchar(50),lastnamevarchar(50) default 'bato'); -->
	
<div class="container">

			<!-- freshdesignweb top bar -->
            <div class="freshdesignweb-top">                
                <div class="clr"></div>
            </div><!--/ freshdesignweb top bar -->
			<header>
				<h1><u>SRI VENKATARAMAN TEMPLE</u><span>MULKI</span></h1>
				
				<h1><u><a href="index.html" accesskey="1" title="">Home </u></a></h1>
				<h1>Festival Name:<%out.println(""+tbname); %></h1>
            </header>       
   <div id="abc" >      
      <div  class="form">
     






    		<form id="contactform" method="post" action=""> 

    			<p class="contact"><label for="name">Item Name</label></p> 
    			<input id="name" name="name" placeholder="name" required="" tabindex="1" type="text"> 
   <input class="buttom" name="submit" id="btnName" tabindex="5" value="Add to list" type="button" onclick="loadContent('<%=tbname %>')" >
  
	<p class="contact"><label for="name">Item ID</label></p> 
    			<input id="lid" name="lid" placeholder="lid" required="" tabindex="1" type="text"> 

   <input class="buttom" name="submit" id="submit" tabindex="5" value="Add to list" type="button" onclick="loadContent12('<%=tbname %>')"> 	
 </form>
 

 

 



 </div> 
 </div>  
 
 
  <div id="prtCnt" class="form"></div>

 </div>
 
 
 </body>
</html>