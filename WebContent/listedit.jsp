<%@ page import ="java.sql.*" import ="java.io.*" import ="java.util.*"  %>
<%!public int tid; %>
<%!public String nam,lid,id; %>
<%
 Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mercer1","root", "dhanush");
    String nam=request.getParameter("w");
    String tb=request.getParameter("x");
    Statement sm=con.createStatement();
    ResultSet rs=null;
    ResultSet rss=null;
 
    
  
    rss=sm.executeQuery("select id from itemdetails where name='"+ nam +"'");
    rss.next();
    lid=rss.getString(1);
	
	Statement stm=con.createStatement();
	stm.executeUpdate(" delete from "+tb+" where firstName='"+ lid +"'");
	out.println("Removed from list");
%>
