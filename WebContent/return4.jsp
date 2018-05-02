<%@ page import ="java.sql.*" import ="java.io.*" import ="java.util.*"  %>
<%!public int tid; %>
<%!public String nam,lid,id; %>
<%
 Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mercer1","root", "dhanush");
    
    String nam=request.getParameter("w");
    String id=request.getParameter("x");
    String sh=request.getParameter("sh");
    Statement sm=con.createStatement();
    Statement smt=con.createStatement();
    ResultSet rs=null;
    ResultSet rss=null;
    ResultSet rsp=null;
    if(id=="")
   {
    	rss=sm.executeQuery("select * from itemdetails where name='"+ nam +"'");
    	/*rsp=smt.executeQuery("select * from itemdetails,repair where itemdetails.name=repair.name and itemdetails.name='"+ nam +"'");
    	if(rsp.next())
    	{
    		
    		response.sendRedirect("return22.jsp");
    	}*/
        if(rss.next())
    lid=rss.getString(1);
   }
    else
    {
    	/*rsp=smt.executeQuery("select * from itemdetails,repair where itemdetails.id=repair.id and itemdetails.id='"+ id +"'");
    	if(rsp.next())
    	{
    		
    		response.sendRedirect("return22.jsp");
    	}*/
    	rss=sm.executeQuery("select * from itemdetails where id='"+ id +"'");
        if(rss.next())
    lid=rss.getString(1);
    	
    }
    
	 Statement stmtt=con.createStatement();
	    rs=stmtt.executeQuery("select * from itemdetails where id='"+ lid +"' ");
	    if ((rs.next())) {
	    nam=rs.getString(2);
	    }
	    
	    
	String texarea1;
	texarea1="Item Id : "+id+ "      Item Name : "+nam+ "       has been returned ";
	
	PreparedStatement prep = con.prepareStatement("insert into log(datetime,description) values(?,?)");
	prep.setTimestamp(1, new java.sql.Timestamp(new java.util.Date().getTime()));
	prep.setString(2,texarea1);
	prep.executeUpdate();  
    
    int val;
    Statement st = con.createStatement();
    val=st.executeUpdate("delete from lend where lid='" + lid + "'");
 
  if (val!=0) {
	  out.println("Successful");
     }
     else
     {
    	 out.println("Error");
     }
  Statement stm=con.createStatement();
	stm.executeUpdate(" UPDATE itemdetails set status='a' where id='"+ lid +"'");
	  Statement stm1=con.createStatement();
		stm1.executeUpdate(" UPDATE Shelf set shno='"+ sh +"' where id='"+ lid +"'");
		
%>
