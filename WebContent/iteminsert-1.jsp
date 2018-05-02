
<%@ page import ="java.sql.*" import ="java.io.*" %>
<%
 Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mercer1","root", "dhanush");
    String name= request.getParameter("a");    
    String basemetal = request.getParameter("b");
    String colour = request.getParameter("c");
    String weigh = request.getParameter("d");
    String pric = request.getParameter("f");
 String p1 = request.getParameter("g");
 String p2 = request.getParameter("h");
 String p3 = request.getParameter("i");
 String p4 = request.getParameter("j");
 String p5 = request.getParameter("k");
 String p6 = request.getParameter("l");
 String p7 = request.getParameter("m");
 String p8 = request.getParameter("n");
 String p9 = request.getParameter("o");
String status = request.getParameter("p");
String textarea = request.getParameter("q");
String file = request.getParameter("r");
String donname= request.getParameter("dn");
String dondu= request.getParameter("dd");
String shf= request.getParameter("sh");
File imgfile = new File(file);
Float weight=Float.parseFloat(weigh);
if(p1=="")
	p1="0";
if(p2=="")
	p2="0";
if(p3=="")
	p3="0";
if(p4=="")
	p4="0";
if(p5=="")
	p5="0";
if(p6=="")
	p6="0";
if(p7=="")
	p7="0";
if(p8=="")
	p8="0";
if(p9=="")
	p9="0";

int price=Integer.parseInt(pric);
int pearl1=Integer.parseInt(p1);
int pearl2=Integer.parseInt(p2);
int pearl3=Integer.parseInt(p3);
int pearl4=Integer.parseInt(p4);
int pearl5=Integer.parseInt(p5);
int pearl6=Integer.parseInt(p6);
int pearl7=Integer.parseInt(p7);
int pearl8=Integer.parseInt(p8);
int pearl9=Integer.parseInt(p9);

 FileInputStream fin = new FileInputStream(imgfile);
   String gold="g";
   String silver="s";
   String diamond="d";
   String platinum="p";
   String idd=null;
   Statement stmt = con.createStatement();
   ResultSet rs = stmt.executeQuery("Select id from itemdetails");
   if (!(rs.next())) {
	   
			  if(basemetal.equals("g"))
			  {
			  idd="g0";
			  }
			  else if(basemetal.equals("s"))
			  {  
			  idd="s0";
			  }
			  else if(basemetal.equals("p"))
			  {  
			  idd="p0";
			  }
			  else 
			  {
			  idd="d0";
			  }
		   

}
   else
   {
	   rs=null;
	   if(basemetal.equals("g"))
	   {
	
	   rs=stmt.executeQuery("SELECT count(id) FROM itemdetails WHERE id REGEXP '^[g].*$'");
	   rs.next();
	   int rowCount = rs.getInt(1);
	   idd=gold+rowCount;
	   }
	   else if(basemetal.equals("s"))
	   {
		  
		   rs=stmt.executeQuery("SELECT count(id) FROM itemdetails WHERE id REGEXP '^[s].*$'");
		   rs.next();
		   int rowCount = rs.getInt(1);
		   idd=silver+rowCount; 
	   }
	   else if(basemetal.equals("p"))
	   {
		  
		   rs=stmt.executeQuery("SELECT count(id) FROM itemdetails WHERE id REGEXP '^[p].*$'");
		   rs.next();
		   int rowCount = rs.getInt(1);
		   idd=platinum+rowCount; 
	   }
	   else if(basemetal.equals("d"))
	   {
		   
		   rs=stmt.executeQuery("SELECT count(id) FROM itemdetails WHERE id REGEXP '^[d].*$'");
		   rs.next();
		   int rowCount = rs.getInt(1);
		    idd=diamond+rowCount; 
	   }
	    
   }
  
	  
PreparedStatement pre = con.prepareStatement("insert into itemdetails(id,name,color,basemetal,weight,price,description,pearl1,status,photo,pearl2,pearl3,pearl4,pearl5,pearl6,pearl7,pearl8,pearl9,donname,dondur) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
pre.setString(1,idd);
pre.setString(2,name);
pre.setString(3,colour);
pre.setString(4,basemetal);
pre.setFloat(5,weight);
pre.setInt(6,price);
pre.setString(7,textarea);
pre.setInt(8,pearl1);
pre.setString(9,status);
pre.setString(10,null);
pre.setBinaryStream(10,(InputStream)fin,(long)imgfile.length());
pre.setInt(11,pearl2);
pre.setInt(12,pearl3);
pre.setInt(13,pearl4);
pre.setInt(14,pearl5);
pre.setInt(15,pearl6);
pre.setInt(16,pearl7);
pre.setInt(17,pearl8);
pre.setInt(18,pearl9);
pre.setString(19,donname);
pre.setString(20,dondu);
int s=pre.executeUpdate();
if(s>0) {
	PreparedStatement prep = con.prepareStatement("insert into Shelf(id,name,shno) values(?,?,?)");
	prep.setString(1,idd);
	prep.setString(2,name);
	prep.setString(3,shf);
	prep.executeUpdate();
out.println("Uploaded successfully !");
}
%>
