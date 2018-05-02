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
	 <style>body {
    background-image: url("images/bgnoise_lg.png");
}</style>
</head>

 <%@ page import ="java.sql.*" import ="java.io.*" %>
<%!public String base,id,nam,col,pric,weight,desc,p1,p2,p3,p4,p5,p6,p7,p8,p9; %>
<%

 Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mercer1","root", "dhanush");
   String nam;
    nam= request.getParameter("a");
    id= request.getParameter("b");
    
    ResultSet rs=null;
    
Statement stmt=con.createStatement();
if(id=="")
{
	rs=stmt.executeQuery("select * from itemdetails where name='"+ nam +"'");
}
else
{

	rs=stmt.executeQuery("select * from itemdetails where id='"+ id +"'");
}


if ((rs.next())) {
	
	id=rs.getString(1);
	nam=rs.getString(2);
	col=rs.getString(3);
	base=rs.getString(4);
	pric=rs.getString(6);
	weight=rs.getString(5);
	desc=rs.getString(7);
	p1=rs.getString(8);
	p2=rs.getString(11);
	p3=rs.getString(12);
	p4=rs.getString(13);
	p5=rs.getString(14);
	p6=rs.getString(15);
	p7=rs.getString(16);
	p8=rs.getString(17);
	p9=rs.getString(18);
	}
	else
	{
	out.println("<p>Unsuccessful</p>");
	}
if(p2==null)
{
	p2="0";
}
if(p3==null)
{
	p3="0";
}if(p4==null)
{
	p4="0";
}if(p5==null)
{
	p5="0";
}if(p6==null)
{
	p6="0";
}if(p7==null)
{
	p7="0";
}if(p8==null)
{
	p8="0";
}if(p9==null)
{
	p9="0";
}

%>

<body>

<div  class="form">
<div class="container">
			<!-- freshdesignweb top bar -->
            <div class="freshdesignweb-top">                
                <div class="clr"></div>
            </div><!--/ freshdesignweb top bar -->
			<header>
				<h1><u>SRI VENKATARAMAN TEMPLE</u><span>MULKI</span></h1>
				<h1><u><a href="index.html" accesskey="1" title="">Home </u></a></h1>
            </header>   
       
 
 <form id="contactform" name="contactform" method="post" action="itemmissing.jsp"> 
 
                <p class="contact"><label for="name">NAME</label></p> 
    			<input id="name" name="name" placeholder="name" required="" tabindex="1" type="text" value=<%=nam%> /> 
 
   <p class="contact"><label for="name">ID</label></p> 
             <input type="text" name="id" value=<%=id%> />
               <p class="contact"><label for="name">Base Metal</label></p> 
             <input type="text" id="basemetal"  name="basemetal" value=<%=base%> />
 
    			<p class="contact"><label for="name">COLOUR</label></p> 
    			<input id="colour" value=<%=col%> name="colour" placeholder="" required="" tabindex="1" type="text" /> 

<p class="contact"><label for="name">WEIGHT</label></p> 
    			<input id="weight" name="weight" placeholder="in grams" required="" tabindex="1" type="text" value=<%=weight%> /> 


<p class="contact"><label for="name">PRICE</label></p> 
<input id="price" name="price" placeholder="Rs" required="" tabindex="1" type="text" value=<%=pric%> /> 


<p class="contact"><label for="name">PEARLS</label></p> 
<label>
  <!--  <input type="radio" id="ruby"  name="ruby" onClick="pp1()"  />-->
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/ruby.jpg">
  <input name="p1" type="text" style="width:75px;" tabindex="1" placeholder="Ruby count" value=<%=p1%> />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <!--<input type="radio" name="blue" value="big" />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/blues.jpg">
   <input name="p2" type="text" style="width:75px; tabindex="1"" placeholder="Blues count" value=<%=p2%> />
   <br>
  <!--<input type="radio"  name="diamond" value="big"  />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/Diamond.jpg">
   <input name="p3" type="text" style="width:75px;" tabindex="1" placeholder="Diamond count" value=<%=p3%> />
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
 <!--<input type="radio" name="emerald" value="big" />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/emerald.jpg">
   <input name="p4" type="text" style="width:75px;" tabindex="1" placeholder="Emerald count" value=<%=p4%> />
  <br>
  <!--<input type="radio" name="hessonite" value="big" />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/hessonite.jpg">
   <input name="p5" type="text" style="width:75px;" tabindex="1" placeholder="Hessonite count" value=<%=p5%> />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  <!--<input type="radio" name="cateye" value="big" />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/cateye.jpg">
   <input name="p6" type="text" style="width:75px;" tabindex="1" placeholder="cateye count" value=<%=p6%> />
  <br>
  <!--<input type="radio"  name="pearl" value="big" />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/pearl.jpg">
   <input name="p7" type="text" style="width:75px;" tabindex="1" placeholder="Pearl count" value=<%=p7%> />
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <!--<input type="radio"  name="redcoral" value="big" />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/Redcoral.jpg">
   <input name="p8" type="text" style="width:75px;" tabindex="1" placeholder="RedCoral count" value=<%=p8%> />
  <br>
    <!--<input type="radio"  name="pearl" value="big" onClick='var p9= prompt("Count of YellowSaphhire")' />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/yellowsapphire.jpg">
   <input name="p9" type="text" style="width:75px;" tabindex="1" placeholder="yellowsapphire count" value=<%=p9%> />
   
   <p class="contact"<label for="textarea"><label>DESCRIPTION</label></p>
<textarea name="textarea" tabindex="1" value=<%=desc%>></textarea> 

<br>
<br>
 <input class="buttom" name="submit" id="submit" tabindex="5" value="Update" type="submit"> 
   
</label>
</form>
 </body>
</html>