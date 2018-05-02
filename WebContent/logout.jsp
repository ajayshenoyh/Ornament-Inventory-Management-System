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
 <%@ page import ="java.sql.*" import ="java.io.*" import ="java.util.*" %>
 <%!public String nam; %>
<%

 Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mercer1","root", "dhanush");
   
    int id;
    
Statement stmt=con.createStatement();

ResultSet rs=null;
rs=stmt.executeQuery("select * from treasure where log=1 ");


if ((rs.next())) {
	id=rs.getInt(1);
		stmt.executeUpdate(" UPDATE treasure set log=0 where tid='"+ id +"'");

		 Statement stmtt=con.createStatement();
		    rs=stmtt.executeQuery("select * from treasure where tid='"+ id +"' ");
		    if ((rs.next())) {
		    nam=rs.getString(2);
		    }
		String texarea1;
		texarea1="Treasurer Id : "+id+ "      Treasurer Name : "+nam+ "       has logged out ";
		PreparedStatement prep = con.prepareStatement("insert into log(datetime,description) values(?,?)");
		prep.setTimestamp(1, new java.sql.Timestamp(new java.util.Date().getTime()));
		prep.setString(2,texarea1);
		prep.executeUpdate();  
		
		
		response.sendRedirect("login2.html");
}
	
else
{
	response.sendRedirect("index.html");
	
}
%>

</html>