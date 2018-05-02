<html>

<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>

<% Blob image = null;
String id=request.getParameter("id");
Connection con = null;

byte[ ] imgData = null ;

Statement stmt = null;


ResultSet rs = null;
Class.forName("com.mysql.jdbc.Driver");

 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mercer1","root", "dhanush");

stmt = con.createStatement();

rs = stmt.executeQuery("select photo from itemdetails where id = '"+ id +"'");

if (rs.next()) {

image = rs.getBlob(1);

imgData = image.getBytes(1,(int)image.length());

} else {

out.println("Display Blob Example");

out.println("image not found for given id>");

return;

}

// display the image
response.setContentType("text/html");
OutputStream o = response.getOutputStream();
%><img src="data:image/jpg;base64,    <%o.write(imgData);%>" >
   <h1>Vishal</h1>


o.flush();

o.close();


%>
</html>