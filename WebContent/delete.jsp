<%@ page import ="java.sql.*" import ="java.io.*" import ="java.util.*"  %>
<%!public int tid; %>
<%!public String nam,lid,id; %>
<%
 Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mercer1","root", "dhanush");
    String nam=request.getParameter("w");
    String id=request.getParameter("x");
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
    	
    }
    
    Statement stmt=con.createStatement();
    rs=stmt.executeQuery("select * from treasure where log=1 ");
    if ((rs.next())) {
    tid=rs.getInt(1);
    
    }
    
    Statement stmtt=con.createStatement();
    rs=stmtt.executeQuery("select * from itemdetails where id='"+ lid +"' ");
    if ((rs.next())) {
    nam=rs.getString(2);
    }
   
	
	
	Statement stm=con.createStatement();
	stm.executeUpdate(" delete from itemdetails where id='"+ lid +"'");
	
	
	String texarea1;
	texarea1="Item Id : "+lid+ "      Item Name : "+nam+ "       has been deleted ";
	
	PreparedStatement prep = con.prepareStatement("insert into log(datetime,description) values(?,?)");
	prep.setTimestamp(1, new java.sql.Timestamp(new java.util.Date().getTime()));
	prep.setString(2,texarea1);
	prep.executeUpdate(); 
	out.println("item has been deleted");
%>
