<%@ page import ="java.sql.*" import ="java.io.*" %>
<%
 Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mercer1","root", "dhanush");
    String name= request.getParameter("a"); 
    
    String id = request.getParameter("b");
    String weigh = request.getParameter("c");
 String p1 = request.getParameter("d");
 String p2 = request.getParameter("e");
 String p3 = request.getParameter("f");
 String p4 = request.getParameter("g");
 String p5 = request.getParameter("h");
 String p6 = request.getParameter("i");
 String p7 = request.getParameter("j");
 String p8 = request.getParameter("k");
 String p9 = request.getParameter("l");
String textarea = request.getParameter("m");
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

Statement st = con.createStatement();
Statement st2 = con.createStatement();
Statement st3 = con.createStatement();
st.executeUpdate("delete from lend where lid='" + id + "'");

int pearl1=Integer.parseInt(p1);
int pearl2=Integer.parseInt(p2);
int pearl3=Integer.parseInt(p3);
int pearl4=Integer.parseInt(p4);
int pearl5=Integer.parseInt(p5);
int pearl6=Integer.parseInt(p6);
int pearl7=Integer.parseInt(p7);
int pearl8=Integer.parseInt(p8);
int pearl9=Integer.parseInt(p9);
  
ResultSet rs1;
int a1,a2,a3,a4,a5,a6,a7,a8,a9;
rs1=st2.executeQuery("SELECT * FROM mercer1.repair where id='"+ id +"'");
if((rs1.next()))
{
	a1=rs1.getInt(4);
	a2=rs1.getInt(5);
	a3=rs1.getInt(6);
	a4=rs1.getInt(7);
	a5=rs1.getInt(8);
	a6=rs1.getInt(9);
	a7=rs1.getInt(10);
	a8=rs1.getInt(11);
	a9=rs1.getInt(12);
	
	pearl1=pearl1+a1;
	pearl2=pearl2+a2;
	pearl3=pearl3+a3;
	pearl4=pearl4+a4;
	pearl5=pearl5+a5;
	pearl6=pearl6+a6;
	pearl7=pearl7+a7;
	pearl8=pearl8+a8;
	pearl9=pearl9+a9;
	
}



ResultSet rs3;
rs3=st3.executeQuery("SELECT * FROM mercer1.`repair` where id='"+id+"'");
if (!(rs3.next())) {
	  
PreparedStatement pre = con.prepareStatement("insert into repair(id,name,damage,pearl1,pearl2,pearl3,pearl4,pearl5,pearl6,pearl7,pearl8,pearl9,weight) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
pre.setString(1,id);
pre.setString(2,name);
pre.setFloat(13,weight);
pre.setString(3,textarea);
pre.setInt(4,pearl2);
pre.setInt(5,pearl3);
pre.setInt(6,pearl4);
pre.setInt(7,pearl5);
pre.setInt(8,pearl6);
pre.setInt(9,pearl7);
pre.setInt(10,pearl8);
pre.setInt(11,pearl9);
pre.setInt(12,pearl1);
int s=pre.executeUpdate();
if(s>0) {
out.println("Added to Repair list!");

Statement stm=con.createStatement();
stm.executeUpdate(" UPDATE itemdetails set status='na' where id='"+ id +"'");
}

}
else
{
	st3.executeUpdate(" UPDATE `mercer1`.`repair` SET `pearl1`='"+ pearl1+ "', `pearl2`='"+ pearl2+ "',`pearl3`='"+ pearl3+ "', `pearl4`='"+ pearl4+ "',`pearl5`='"+ pearl5+ "', `pearl6`='"+ pearl6+ "',`pearl7`='"+ pearl7+ "',`pearl8`='"+ pearl8+ "', `pearl9`='"+ pearl9+"' ,`weight`='"+weight+"' WHERE `id`= '"+ id +"' ");
	out.println("Added to Repair list!");
	
	Statement stm=con.createStatement();
	stm.executeUpdate(" UPDATE itemdetails set status='na' where id='"+ id +"'");
}

ResultSet rs=null;

Statement stmtt=con.createStatement();
   rs=stmtt.executeQuery("select * from itemdetails where id='"+ id +"' ");
   if ((rs.next())) {
   name=rs.getString(2);
   }
String texarea1;
texarea1="Item Id : "+id+ "      Item Name : "+name+ "       has been added to repair list ";
PreparedStatement prep = con.prepareStatement("insert into log(datetime,description) values(?,?)");
prep.setTimestamp(1, new java.sql.Timestamp(new java.util.Date().getTime()));
prep.setString(2,texarea1);
prep.executeUpdate();





%>
