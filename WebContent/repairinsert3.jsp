 <!DOCTYPE html>
<html>
<head>
<script>
function loadContent(str)
{

	var str= document.getElementById('name').value;
	var str1=document.getElementById('lid').value;
	var str2= document.getElementById('weight').value;
	var str3=document.getElementById('q1').value;
	var str4= document.getElementById('q2').value;
	var str5=document.getElementById('q3').value;
	var str6= document.getElementById('q4').value;
	var str7=document.getElementById('q5').value;
	var str8= document.getElementById('q6').value;
	var str9=document.getElementById('q7').value;
	var str10=document.getElementById('q8').value;
	var str11= document.getElementById('q9').value;
	var str12=document.getElementById('t12').value;
 xmlhttp=GetXmlHttpObject();

  if (xmlhttp==null)
  {
   alert ("Your browser does not support Ajax HTTP");
   return;
  }
  else
	  {
    var url="repairfound.jsp";
    url=url+"?a="+str+"&b="+str1+"&c="+str2+"&d="+str3+"&e="+str4+"&f="+str5+"&g="+str6+"&h="+str7+"&i="+str8+"&j="+str9+"&k="+str10+"&l="+str11+"&m="+str12;

    xmlhttp.onreadystatechange=getOutput;
    xmlhttp.open("GET",url,true);
    xmlhttp.send(null);
	  }
}

function getOutput()
{
  if (xmlhttp.readyState==4)
  {
	
alert(xmlhttp.responseText);

  
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

</script>
<style>
#t12 {
    width:425px;
    height:170px;
}
#r
{
position: absolute;
    left: 520px;
    top: 500px;
    z-index: 1;
}
#b
{
position: absolute;
    left: 745px;
    top: 500px;
    z-index: 1;
}
#d
{
position: absolute;
    left: 520px;
    top: 590px;
    z-index: 1;
}
#e
{
position: absolute;
    left: 745px;
    top: 590px;
    z-index: 1;
    
}
#h
{
position: absolute;
    left: 520px;
    top: 680px;
    z-index: 1;
}
#c
{
position: absolute;
    left: 745px;
     top: 680px;
    z-index: 1;
}
#p
{
position: absolute;
    left: 520px;
    top: 770px;
    z-index: 1;
}
#cr
{
position: absolute;
    left: 745px;
    top: 770px;
    z-index: 1;
}
#y
{
position: relative;
    left: 97px;
    top: 405px;
    z-index: 1;
}

#q1,#q2,#q3,#q4,#q5,#q6,#q7,#q8,#q9
{
position:relative ;
  
    top: -10px;
    z-index: 1;
}

</style>
<style>body {
    background-image: url("images/bgnoise_lg.png");
}</style>
<title>Venktaraman temple,Mulki</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="css/stylem.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/demom.css" media="all" />
	 <link rel="stylesheet" type="text/css" href="css/itemstyle.css" media="all" />
</head>
 <%@ page import ="java.sql.*" import ="java.util.*" %>
<%!public String id,lid; %>
<%
 Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mercer1","root", "dhanush");
 
   // lid= request.getParameter("lid");  
   // nam= request.getParameter("nam");
   Statement smt=con.createStatement();
   String nam=request.getParameter("w");
    String id=request.getParameter("x");
    ResultSet rp=null;
    if(id=="")
   {
    	rp=smt.executeQuery("select * from repair where name='"+ nam +"'");
        if(!rp.next())
        {
        	
        	response.sendRedirect("repair22.jsp");	
        	
        }
  
   }
    else
    {

    	rp=smt.executeQuery("select * from repair where id='"+ id +"'");
        if(!rp.next())
        {
        	response.sendRedirect("repair22.jsp");	
        	
        }
    	
    }
    Statement sm=con.createStatement();
    ResultSet rs=null;
    ResultSet rss=null;
 
    if(id=="")
   {
    	rss=sm.executeQuery("select * from itemdetails where name='"+ nam +"'");
        if(rss.next())
    lid=rss.getString(1);
   }
    else
    {

    	rss=sm.executeQuery("select * from itemdetails where id='"+ id +"'");
        if(rss.next())
    lid=rss.getString(1);
        nam=rss.getString(2);
    	
    }

%>
<body>
<div class="container">
			<!-- freshdesignweb top bar -->
            <div class="freshdesignweb-top">                
                <div class="clr"></div>
            </div><!--/ freshdesignweb top bar -->
			<header>
				<h1><u>SRI VENKATARAMAN TEMPLE</u><span>MULKI</span></h1>
				<h1><u><a href="index.html" accesskey="1" title="">Home </u></a></h1>
				<h1>Missing Items</h1>
            </header>       
              
            
      <div  class="form">
    		<!--  <form id="contactform" name="contactform" method="post" action="repairinsert2.jsp"> -->

              
    			<p class="contact"><label for="name">NAME</label></p> 
    			<input id="name"  name="name" placeholder="name" required="" tabindex="1" type="text" value=<%=nam%> /> 
    			
    			<p class="contact"><label for="name">ID</label></p> 
    		    <input type="text" id="lid" name="lid" value=<%=lid%> />    	
    			


<p class="contact"><label for="name">WEIGHT</label></p> 
    			<input id="weight" name="weight" value=<%=rss.getString(5) %> placeholder="in grams" required="" tabindex="1" type="text"> 


<p class="contact"><label for="name">PEARLS</label></p> 
<label>
  <!--  <input type="radio" id="ruby"  name="ruby" onClick="pp1()"  />-->
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/ruby.jpg">
  <input id="q1" name="p1" type="text" style="width:75px;" placeholder="Ruby count" >
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <!--<input type="radio" name="blue" value="big" />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/blues.jpg">
   <input id="q2" name="p2" type="text" style="width:75px;" placeholder="Blues count" >
   <br>
  <!--<input type="radio"  name="diamond" value="big"  />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/Diamond.jpg">
   <input id="q3" name="p3" type="text" style="width:75px;" placeholder="Diamond count" >
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
 <!--<input type="radio" name="emerald" value="big" />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/emerald.jpg">
   <input id="q4" name="p4" type="text" style="width:75px;" placeholder="Emerald count" >
  <br>
  <!--<input type="radio" name="hessonite" value="big" />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/hessonite.jpg">
   <input id="q5" name="p5" type="text" style="width:75px;" placeholder="Hessonite count" >
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  <!--<input type="radio" name="cateye" value="big" />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/cateye.jpg">
   <input id="q6" name="p6" type="text" style="width:75px;" placeholder="cateye count" >
  <br>
  <!--<input type="radio"  name="pearl" value="big" />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/pearl.jpg">
   <input id="q7" name="p7" type="text" style="width:75px;" placeholder="Pearl count" >
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <!--<input type="radio"  name="redcoral" value="big" />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/Redcoral.jpg">
   <input id="q8" name="p8" type="text" style="width:75px;" placeholder="RedCoral count" >
  <br>
    <!--<input type="radio"  name="pearl" value="big" onClick='var p9= prompt("Count of YellowSaphhire")' />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/yellowsapphire.jpg">
   <input id="q9" name="p9" type="text" style="width:75px;" placeholder="yellowsapphire count" >
</label>
<br>
                
<p class="contact"<label for="textarea"><label>DESCRIPTION</label></p>
<textarea id="t12" name="textarea"></textarea> <br><br><br><br>

<input class="buttom" name="submit" id="submit" tabindex="5" value="Insert into Repair" type="button" onclick="loadContent('hi')"> 	


</div>      
</div>

</body>
</html>