<%@ page import ="java.sql.*" import ="java.io.*" %>
<%
 Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mercer1","root", "dhanush");
    int tid,id;
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String cno=request.getParameter("cno");
    String addr=request.getParameter("addr");
    String pass=request.getParameter("pass");
    String uname=request.getParameter("uname");
    
	String co,lfname,lcno,laddr,llname,fdate;
    
    Statement stmt=con.createStatement();
    ResultSet rs=null;
    rs=stmt.executeQuery("select * from treasure where log=1 ");
    if ((rs.next())) {
    	id=rs.getInt(1);
    	tid=id;
    	lfname=rs.getString(2);
    	lcno=rs.getString(3);
    	laddr=rs.getString(4);
    	llname=rs.getString(7);
    	fdate=rs.getString(5);
        		
    	//log
    	
    	String texarea1;
    	texarea1="Treasurer Id : "+tid+ "      Treasurer Name : "+fname+ "       has been registered";
      PreparedStatement prep = con.prepareStatement("insert into log(datetime,description) values(?,?)");
    	prep.setTimestamp(1, new java.sql.Timestamp(new java.util.Date().getTime()));
    	prep.setString(2,texarea1);
    	prep.executeUpdate();  
    	
    
    	
  
  PreparedStatement pre = con.prepareStatement("insert into treasurerlog(tfname,phno,address,tlname,fdate,ldate) values(?,?,?,?,?,?)");
  pre.setString(1,lfname);
  pre.setString(2,lcno);
  pre.setString(3,laddr);
  pre.setString(4,llname);
  pre.setString(5,fdate);
  pre.setTimestamp(6, new java.sql.Timestamp(new java.util.Date().getTime()));  
  pre.executeUpdate();
  pre.close(); 
 

  
  
  //add new treasurer
  PreparedStatement prem = con.prepareStatement("update treasure set tid=?,tfname=?,phno=?,address=?,date=?,password=?,tlname=?,username=?,log=? where tid='"+id+"'");
  prem.setInt(1,tid);
  prem.setString(2,fname);
  prem.setString(3,cno);
  prem.setString(4,addr);
  prem.setTimestamp(5, new java.sql.Timestamp(new java.util.Date().getTime()));
  prem.setString(6,pass);
  prem.setString(7,lname);
  prem.setString(8,uname);
  prem.setInt(9,0);
  int z=prem.executeUpdate();
  if(z>0) {
  out.println("Updated item details successfully !");
  response.sendRedirect("login2.html");
  
  
  }
  
  
  
    }
    
%>