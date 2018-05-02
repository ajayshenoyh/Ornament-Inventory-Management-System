<html>

<%@ page import ="java.sql.*" import ="java.io.*" %>
<%
 Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mercer1","root", "dhanush");
    String name= request.getParameter("name");    
    String id= request.getParameter("id");   
    String basemetal = request.getParameter("basemetal");
    String colour = request.getParameter("colour");
    String weigh = request.getParameter("weight");
    String pric = request.getParameter("price");
 String p1 = request.getParameter("p1");
 String p2 = request.getParameter("p2");
 String p3 = request.getParameter("p3");
 String p4 = request.getParameter("p4");
 String p5 = request.getParameter("p5");
 String p6 = request.getParameter("p6");
 String p7 = request.getParameter("p7");
 String p8 = request.getParameter("p8");
 String p9 = request.getParameter("p9");
String textarea = request.getParameter("textarea");
//String file = request.getParameter("file");
//File imgfile = new File(file);

Float weight=Float.parseFloat(weigh);


if(p1==""||p1==null)
	p1="0";
if(p2==""||p2==null)
	p2="0";
if(p3==""||p3==null)
	p3="0";
if(p4==""||p4==null)
	p4="0";
if(p5==""||p5==null)
	p5="0";
if(p6==""||p6==null)
	p6="0";
if(p7==""||p7==null)
	p7="0";
if(p8==""||p8==null)
	p8="0";
if(p9==""||p9==null)
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

String nam=null,col=null,desc=null,bas=null,wei=null;
String p11=null,p21=null,p31=null,p41=null,p51=null,p61=null,p71=null,p81=null,p91=null,pri=null;
/*
Statement stmt=con.createStatement();
ResultSet rs=null;
rs=stmt.executeQuery("select * from itemdetails where name='"+ nam +"'");
if ((rs.next())) {
	id=rs.getString(1);
	nam=rs.getString(2);
	col=rs.getString(3);
	bas=rs.getString(4);
    wei=rs.getString(5);
	pri=rs.getString(6);
	desc=rs.getString(7);
	p11=rs.getString(8);
	p21=rs.getString(11);
	p31=rs.getString(12);
	p41=rs.getString(13);
	p51=rs.getString(14);
	p61=rs.getString(15);
	p71=rs.getString(16);
	p81=rs.getString(17);
	p91=rs.getString(18);
	}

Float weig=Float.parseFloat(wei);
int pr=Integer.parseInt(pri);
int p12=Integer.parseInt(p11);
int p22=Integer.parseInt(p21);
int p32=Integer.parseInt(p31);
int p42=Integer.parseInt(p41);
int p52=Integer.parseInt(p51);
int p62=Integer.parseInt(p61);
int p72=Integer.parseInt(p71);
int p82=Integer.parseInt(p81);
int p92=Integer.parseInt(p91);

 // FileInputStream fin = new FileInputStream(imgfile);
    PreparedStatement pre = con.prepareStatement("insert into history(id,name,description,pearl1,pearl2,pearl3,pearl4,pearl5,pearl6,pearl7,pearl8,pearl9,weight,basemetal,price) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
pre.setString(1,id);
pre.setString(2,name);
pre.setString(3,desc);
pre.setInt(4,p12);
//pre.setString(9,status);
//pre.setBinaryStream(10,(InputStream)fin,(int)imgfile.length());
pre.setInt(5,p22);
pre.setInt(6,p32);
pre.setInt(7,p42);
pre.setInt(8,p52);
pre.setInt(9,p62);
pre.setInt(10,p72);
pre.setInt(11,p82);
pre.setInt(12,p92);
pre.setString(14,bas);
pre.setFloat(13,weig);
pre.setInt(15,pr);
int s=pre.executeUpdate();
if(s>0) {
out.println("Uploaded history successfully !");
}
*/	  

Statement st = con.createStatement();
st.executeUpdate("delete from repair where id='" + id + "'");


String status="a";
PreparedStatement pre = con.prepareStatement("update itemdetails set name=?,color=?,basemetal=?,weight=?,price=?,description=?,pearl1=?,status=?,pearl2=?,pearl3=?,pearl4=?,pearl5=?,pearl6=?,pearl7=?,pearl8=?,pearl9=? where id='"+id+"'");
pre.setString(1,name);
pre.setString(2,colour);
pre.setString(3,basemetal);
pre.setFloat(4,weight);
pre.setInt(5,price);
pre.setString(6,textarea);
pre.setInt(7,pearl1);
pre.setString(8,status);
//pre.setBinaryStream(10,(InputStream)fin,(int)imgfile.length());
pre.setInt(9,pearl2);
pre.setInt(10,pearl3);
pre.setInt(11,pearl4);
pre.setInt(12,pearl5);
pre.setInt(13,pearl6);
pre.setInt(14,pearl7);
pre.setInt(15,pearl8);
pre.setInt(16,pearl9);
int z=pre.executeUpdate();
if(z>0) {
out.println("Updated item details successfully !");
}


ResultSet rs=null;

Statement stmtt=con.createStatement();
   rs=stmtt.executeQuery("select * from itemdetails where id='"+ id +"' ");
   if ((rs.next())) {
   name=rs.getString(2);
   }
String texarea1;
texarea1="Item Id : "+id+ "      Item Name : "+name+ "       has been repaired ";
PreparedStatement prep = con.prepareStatement("insert into log(datetime,description) values(?,?)");
prep.setTimestamp(1, new java.sql.Timestamp(new java.util.Date().getTime()));
prep.setString(2,texarea1);
prep.executeUpdate();  

%>
<body>
 <div  class="form">
    		<form id="contactform" method="post" action="index.html"> 

</head>
<body>
 <input class="buttom" name="submit" id="submit" tabindex="5" value="Done" type="submit"> 	
 </form> 
 </body>
 </html>