
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>


<%
      try{ 
          Connection con;
    Statement stmt;
    ResultSet rs;
    String host="jdbc:mysql://localhost:3306/mercer1";
//books is the database name
            String uName="root";
            String uPass="dhanush";
            con=DriverManager.getConnection(host,uName,uPass);
            stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
          
          
          
            String query = (String)request.getParameter("q");
            DatabaseMetaData md = con.getMetaData();
            rs = md.getTables(null, null, ""+query+"%", null);
            while (rs.next()) {
             out.println(rs.getString(3));
            } 
          
            
           /* String sql="show tables from mercer1 like '"+query+"%' ";
            rs=stmt.executeQuery(sql);*/
            rs.last();
            int length=rs.getRow();
 response.setHeader("Content-Type", "text/html");
 int cnt=1;
      
 if(rs.first()){
        for(int i=0;i<length;i++)
 {
  if(rs.getString(1).toUpperCase().startsWith(query.toUpperCase()))
  {
   out.print(rs.getString(1)+"\n");
   if(cnt>=10)
    break;
   cnt++;
                        rs.next();
  }
                            
              
 }
               }
          else{
                               out.println("Invalid Name ");
                               }
    

              
            
%>
<%
      }
      catch(Exception e1){
      out.println("Error!");
      }
%>