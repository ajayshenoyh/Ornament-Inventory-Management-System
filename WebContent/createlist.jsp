<html>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="css/stylem.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/demom.css" media="all" />
	 <link rel="stylesheet" type="text/css" href="css/itemstyle.css" media="all" />
	<style>body {
    background-image: url("images/bgnoise_lg.png");
}</style>
<%@ page import ="java.sql.*" import ="java.io.*" import="java.io.*,java.text.*,java.util.*"%>
<%!public String id,pass="a",lid,nam; %>
<%

 Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mercer1","root", "dhanush");
    %>
   

    <% 
       %><!--  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="6"><% out.println("Item Searched is :  "+nam); %>-->
        <br>
      <% 

Statement stmt=con.createStatement();

ResultSet rs=null,resultset=null,rss;
//rs=stmt.executeQuery("select * from itemdetails where name='"+ nam +"'");
String nam=request.getParameter("s");
String id=request.getParameter("y");
Statement sm=con.createStatement();

if(id=="")
{
	rs=sm.executeQuery("select * from itemdetails where name='"+ nam +"'");
}
else
{

	rs=sm.executeQuery("select * from itemdetails where id='"+ id +"'");
}

%>
 
</html>