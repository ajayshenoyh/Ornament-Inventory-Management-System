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
    <%@ page contentType="text/html; charset=utf-8" language="java" import="javax.xml.parsers.DocumentBuilderFactory,javax.xml.parsers.DocumentBuilder,org.w3c.dom.*" errorPage="" %> 

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
	

  
    <link rel="stylesheet" type="text/css" href="/css/normalize.css">
  

  

  
    <link rel="stylesheet" type="text/css" href="/css/result-light.css">
  

  

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
	function refer()
	 {
		 window.location.href="listeditname.jsp";
		 	 }</script>


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
            </header>       
   <div id="abc" >      
      <div  class="form">
     

     <h1> <p class="contact"><label for="name" id="fid1">Festival Name</label></h1>
 
    			
    			 
    			    			</p> 
    		<form id="contactform" method="post" action="prelist.jsp"> 
<input id="fid" name="fid" placeholder="Festival Name" required="" tabindex="1" type="text">
 

<input class="buttom" name="festb" id="festb" tabindex="5" value="Create/Add into existing list" type="submit" >
<input class="buttom" name="feste" id="feste" tabindex="5" value="Edit List Existing List" type="button" onclick="refer()">
  </form> 
 </div> 
 </div>  
 
 
  <div id="prtCnt" class="form"></div>

 </div>
 
 
 </body>
</html>