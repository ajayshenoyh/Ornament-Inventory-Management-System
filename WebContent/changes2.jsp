 <!DOCTYPE html>
<html>
<head>
<style>body {
    background-image: url("images/bgnoise_lg.png");
}</style>
<style>
#t12 {
    width:425px;
    height:170px;
}
#r
{
position: absolute;
    left: 520px;
    top: 455px;
    z-index: 1;
}
#b
{
position: absolute;
    left: 745px;
    top: 455px;
    z-index: 1;
}
#d
{
position: absolute;
    left: 520px;
    top: 545px;
    z-index: 1;
}
#e
{
position: absolute;
    left: 745px;
    top: 545px;
    z-index: 1;
    
}
#h
{
position: absolute;
    left: 520px;
    top: 635px;
    z-index: 1;
}
#c
{
position: absolute;
    left: 745px;
     top: 635px;
    z-index: 1;
}
#p
{
position: absolute;
    left: 520px;
    top: 725px;
    z-index: 1;
}
#cr
{
position: absolute;
    left: 745px;
    top: 725px;
    z-index: 1;
}
#y
{
position: relative;
    left: 97px;
    top: 405px;
    z-index: 1;
}

#p1,#p2,#p3,#p4,#p5,#p6,#p7,#p8,#p9
{
position:relative ;
  
    top: -10px;
    z-index: 1;
}
</style>
<title>Venktaraman temple,Mulki</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="css/stylem.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/demom.css" media="all" />
	 <link rel="stylesheet" type="text/css" href="css/itemstyle.css" media="all" />
</head>
 <%@ page import ="java.sql.*" import ="java.io.*" %>
<%!public String base,id,nam,col,pric,weight,desc,p1,p2,p3,p4,p5,p6,p7,p8,p9; %>
<%

 Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mercer1","root", "dhanush");
   String idd;
    idd= request.getParameter("id");  
    
Statement stmt=con.createStatement();

ResultSet rs=null;
rs=stmt.executeQuery("select * from itemdetails where id='"+ idd +"'");

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

%>

<body>
 <div  class="form">
 <form id="contactform" name="contactform" method="post" action="changeinsert.jsp"> 
 
                <p class="contact"><label for="name">NAME</label></p> 
    			<input id="name" name="name" placeholder="name" required="" tabindex="1" type="text" value=<%=nam%> /> 
 
   <p class="contact"><label for="name">ID</label></p> 
             <input type="text" name="id" value=<%=id%> />
               <p class="contact"><label for="name">Base Metal</label></p> 
             <input type="text" id="basemetal" name="basemetal" value=<%=base%> />
 
    			<p class="contact"><label for="name">COLOUR</label></p> 
    			<input id="colour" value=<%=col%> name="colour" placeholder="" required="" tabindex="1" type="text" /> 

<p class="contact"><label for="name">WEIGHT</label></p> 
    			<input id="weight" name="weight" placeholder="in grams" required="" tabindex="1" type="text" value=<%=weight%> /> 


<p class="contact"><label for="name">PRICE</label></p> 
<input id="price" name="price" placeholder="Rs" required="" tabindex="1" type="text" value=<%=pric%> /> 

<font id="r" size="3">Ruby</font>
<font id="b"  size="3">Blues</font>
<font id="d"  size="3">Diamond</font>
<font id="e"  size="3">Emerald</font>
<font id="h"  size="3">Hessonite</font>
<font id="c"  size="3">Cateye</font>
<font id="p" size="3">Pearl</font>
<font id="cr" size="3">Red Coral</font>
<font id="y" size="3">YellowSapphire</font>

<p class="contact"><label for="name">PEARLS</label></p> 
<label>
  <!--  <input type="radio" id="ruby"  name="ruby" onClick="pp1()"  />-->
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/ruby.jpg">
  <input id="p1" type="text" style="width:75px;" placeholder="Ruby count" value=<%=p1%> />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <!--<input type="radio" name="blue" value="big" />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/blues.jpg">
   <input id="p2" type="text" style="width:75px;" placeholder="Blues count" value=<%=p2%> />
   <br>
  <!--<input type="radio"  name="diamond" value="big"  />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/Diamond.jpg">
   <input id="p3" type="text" style="width:75px;" placeholder="Diamond count" value=<%=p3%> />
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
 <!--<input type="radio" name="emerald" value="big" />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/emerald.jpg">
   <input id="p4" type="text" style="width:75px;" placeholder="Emerald count" value=<%=p4%> />
  <br>
  <!--<input type="radio" name="hessonite" value="big" />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/hessonite.jpg">
   <input id="p5" type="text" style="width:75px;" placeholder="Hessonite count" value=<%=p5%> />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  <!--<input type="radio" name="cateye" value="big" />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/cateye.jpg">
   <input id="p6" type="text" style="width:75px;" placeholder="cateye count" value=<%=p6%> />
  <br>
  <!--<input type="radio"  name="pearl" value="big" />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/pearl.jpg">
   <input id="p7" type="text" style="width:75px;" placeholder="Pearl count" value=<%=p7%> />
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <!--<input type="radio"  name="redcoral" value="big" />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/Redcoral.jpg">
   <input id="p8" type="text" style="width:75px;" placeholder="RedCoral count" value=<%=p8%> />
  <br>
    <!--<input type="radio"  name="pearl" value="big" onClick='var p9= prompt("Count of YellowSaphhire")' />-->
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/yellowsapphire.jpg">
   <input id="p9" type="text" style="width:75px;" placeholder="yellowsapphire count" value=<%=p9%> />
   
   <p class="contact"<label for="textarea"><label>DESCRIPTION</label></p>
<textarea id="t12" name="textarea" value=<%=desc %>></textarea> 

<br>
<br>
 <input class="buttom" name="submit" id="submit" tabindex="5" value="Update" type="submit"> 
   
</label>
</form>
 </body>
</html>