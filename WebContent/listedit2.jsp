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
String tb1=request.getParameter("y");
Statement sm=con.createStatement();

	rs=sm.executeQuery("select * from itemdetails,"+tb1+" where itemdetails.id="+tb1+".firstName and itemdetails.name='"+nam+"'");


if ((rs.next())) {
	
		%> <font size="6"><% out.println("<p><u>ITEM FOUND </u></p>");%> </font>
		<font size="4"><% out.println("&nbsp&nbspID :"+"&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"+rs.getString(1));%></font>
		<%%><br><br><%
		out.println("<p>&nbsp&nbspNAME :"+"&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" +rs.getString(2));
		%><br><br><%
		out.println("<p>&nbsp&nbspCOLOR :"+"&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" +rs.getString(3));
		%><br><br><%
		out.println("<p>&nbsp&nbspBASEMETAL :"+"&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" +rs.getString(4));
		%><br><br><%
		out.println("<p>&nbsp&nbspWEIGHT :"+"&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" +rs.getString(5));
		%><br><br><%
		out.println("<p>&nbsp&nbspPRICE :"+"&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" +rs.getString(6));
		%><br><br><%
		out.println("<p>&nbsp&nbspDESCRIPTION :"+"&nbsp&nbsp&nbsp&nbsp" +rs.getString(7));
		%><br><br><%
		%><img src="disp.jsp?id=<%=rs.getString(1)%>" width="230" height="230" />
		
		<!-- 	<input class="button" value="Delete this item"<a href ="delete.jsp"onclick="return confirm('are you sure?');"></a> >-->
		
	<input class="buttom" name="lend" id="lend" value="Delete this item from <%=tb1 %>" tabindex="5" type="button" onclick="loadContent1('hi')"  > 
		<%
}
	else
	{
		%> <font size="6"><% out.println("<p><u>STATUS:UNAVAILABLE </u></p>"+tb1);%>  </font> <a href="editlist.jsp?fid=<%=tb1%>">TRY AGAIN</a><% 
		
	}

%>
</font>

 
</html>