<%@ page import ="java.sql.*" import ="java.io.*" import ="java.util.*"  %>
<%!public int tid; %>
<%!public String nam,lid,id,tb; %>
<% 
 Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mercer1","root", "dhanush");
    String nam=request.getParameter("nam1");
String id=request.getParameter("lid1");
String tb=request.getParameter("s");
    Statement sm=con.createStatement();
    Statement sm1=con.createStatement();
    Statement sm2=con.createStatement();
    Statement sm3=con.createStatement();
    ResultSet rs=null;
    ResultSet rss=null;
    ResultSet rps,rs1=null;
    String idd;
  int flag=0;
  
	  
  
 /* 
  rs=sm3.executeQuery("select * from "+tb+"");
    
  if(rs.next())
  {
	  rs.previous();
  
    while(rs.next())
    {
     idd=rs.getString(1);
    if(nam!="")
    {
   
     	rss=sm.executeQuery("select * from itemdetails where name='"+ nam +"'");
  
     	if(rss.next()){
    	if(!(idd.equals(rss.getString(1))))
    	{
         
         flag=1;
         lid=rss.getString(1);
    	}
     	}
    	else
    	{
    		flag=0;
    		break;
    	}
    	
    }
    if(id!="")
     {
    	
     	if(!(idd.equals(id)))
    	{
         flag=1;
         lid=id; 
         
         }
     	else
     	{
     		flag=0;
     		break;
     	
     	}
     	
     }
    }
    

	
if(flag==1)
{
		
	sm2.executeUpdate("insert into "+tb+"(firstName) values('"+lid+"')");
	out.println("Added into"+tb);
    id=null;
    nam=null;
    
	
}
else
{
	
	out.println("already present");
}
  }
  else
  {

	 if(nam!=null)
	  {
		  rs=sm.executeQuery("select * from itemdetails where name='"+nam+"'");
		  rs.next();
		  id=rs.getString(1);
		  sm2.executeUpdate("insert into "+tb+"(firstName) values('"+id+"')");
	       out.println("Added into" +tb);
	       id=null;
	       nam=null;
	  }
	 if(id!=null)
	  {
		  
		  sm2.executeUpdate("insert into "+tb+"(firstName) values('"+id+"')");
		  out.println("Added into"+tb);
	       id=null;
	       nam=null;
	  }

  }
   */
   rss=sm3.executeQuery("select * from "+tb+"");
   
   if(rss.next())
   {
   if(nam=="")
   {
   rs=sm.executeQuery("select * from itemdetails,"+tb+" where "+tb+".firstName=itemdetails.id and itemdetails.id='"+ id +"'");
	if(!rs.next())
	{
		sm2.executeUpdate("insert into "+tb+"(firstName) values('"+id+"')");
	  out.println("Added into"+tb);
      id=null;
      nam=null;
	}
	else
	{
		out.println("already present");
		
	}
	
   }
   if(id=="")
   {
   rs=sm.executeQuery("select * from itemdetails,"+tb+" where "+tb+".firstName=itemdetails.id and itemdetails.name='"+ nam +"'");
  
	if(!rs.next())
	{
		rs1=sm1.executeQuery("select * from itemdetails where name='"+ nam +"'");
		  rs1.next();
		 id=rs1.getString(1);
		sm2.executeUpdate("insert into "+tb+"(firstName) values('"+id+"')");
	  out.println("Added into"+tb);

	}
	else
	{
		out.println("already present");
		
	}
	
   }
   }
   else
   {
	   if(nam=="")
	   {
		   sm2.executeUpdate("insert into "+tb+"(firstName) values('"+id+"')");
			  out.println("Added into"+tb);
	   }
	   else
	   {
		   rs1=sm1.executeQuery("select * from itemdetails where name='"+ nam +"'");
			  rs1.next();
			 id=rs1.getString(1);
		   sm2.executeUpdate("insert into "+tb+"(firstName) values('"+id+"')");
			  out.println("Added into"+tb);
		   
	   }
	   
	   
   }
   
	
	
%>