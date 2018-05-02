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
int i=0;
ResultSet rs=null,resultset=null,rss;
//rs=stmt.executeQuery("select * from itemdetails where name='"+ nam +"'");
String nam=request.getParameter("s");
Statement sm=con.createStatement();
int tid=0;
int flag=0;
String un="";
String lend="";
	rs=sm.executeQuery("select * from "+nam+"");
	/*	out.println("The List of items in this are");

	while ((rs.next())) {
		id=rs.getString(1);
	rss=stmt.executeQuery("select * from itemdetails where id='"+ id +"'");
	rss.next();
	*/%>
	
	
	<%
	//}

	rs=null;
	rss=null;
	Statement sft=con.createStatement();
	rs=sm.executeQuery("select * from "+ nam +"");
while ((rs.next())) {
	id=rs.getString(1);
	rss=sft.executeQuery("select * from itemdetails where id='"+ id +"'");
rss.next();

%>

<%
	if(rss.getString(9).equals(pass))
	{
		
		    resultset=stmt.executeQuery("select * from treasure where log=1 ");
		    if ((resultset.next())) {
		    tid=resultset.getInt(1);
		    
		    } 
		PreparedStatement pre = con.prepareStatement("insert into lend(lid,tid,date) values(?,?,?)");
			pre.setString(1,id);
			pre.setInt(2,tid);
			//pre.setString(3,textarea);
			pre.setTimestamp(3, new java.sql.Timestamp(new java.util.Date().getTime()));
			pre.executeUpdate(); 
			
			
			Statement stm=con.createStatement();
			stm.executeUpdate(" UPDATE itemdetails set status='na' where id='"+ id +"'");
			
			 Statement stmtt=con.createStatement();
			    resultset=stmtt.executeQuery("select * from itemdetails where id='"+ id +"' ");
			    if ((resultset.next())) {
			    nam=resultset.getString(2);
			    }
			String texarea1;
			texarea1="Item Id : "+id+ "      Item Name : "+nam+ "       has been lended ";
			PreparedStatement prep1 = con.prepareStatement("insert into log(datetime,description) values(?,?)");
			prep1.setTimestamp(1, new java.sql.Timestamp(new java.util.Date().getTime()));
			prep1.setString(2,texarea1);
			prep1.executeUpdate(); 
			lend=lend+" "+rss.getString(2);
		%>
		  
		<% 
}
	else
	{
		un=un+" "+rss.getString(2);
		flag=1;
		
	}
}
if(flag==1)
{
%>

<font size="6"><% out.println("<p><u>STATUS:UNAVAILABLE for </u></p>"+un);%>  </font> <a href="lend22.jsp">TRY AGAIN</a>
<%} else {%>
<font size="6"><% out.println("<p><u>Lended these items </u></p>"+lend);%>  </font> <a href="lend22.jsp">Done</a>
<%} %>
</font>

 
</html>