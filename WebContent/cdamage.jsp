<%@ page import ="java.sql.*" import ="java.io.*" %>
<%
 Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mercer1","root", "dhanush");
    Statement stmt = con.createStatement();
    ResultSet rs=null;
    String des= request.getParameter("d");
    String id= request.getParameter("i");
    String nam= request.getParameter("n");
    if(id=="")
    {
    	rs=stmt.executeQuery("select * from itemdetails where name='"+ nam +"'");
    }
    else
    {

    	rs=stmt.executeQuery("select * from itemdetails where id='"+ id +"'");
    }
    rs.next();
    id=rs.getString(1);
     stmt.executeUpdate("insert into cricitald values('"+id+"','"+des+"')");
     PreparedStatement pre = con.prepareStatement("update itemdetails set status=? where id='"+id+"'");
String status="cd";
     pre.setString(1,status);
     pre.executeUpdate();
     out.println("Added to Critical list");
    %>
