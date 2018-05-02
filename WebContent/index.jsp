<%@ page import ="java.sql.*" import ="java.io.*" %>
<%
 Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mercer1","root", "dhanush");
    Statement stmt = con.createStatement();
    ResultSet rs=null;
    %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Thumbnail Grid with Expanding Preview</title>
		<meta name="description" content="Thumbnail Grid with Expanding Preview" />
		<meta name="keywords" content="thumbnails, grid, preview, google image search, jquery, image grid, expanding, preview, portfolio" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico"> 
		<link rel="stylesheet" type="text/css" href="css/defaultg.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="jss/modernizr.custom.js"></script>
	</head>
	<body>
		<div class="container">	
			<!-- Codrops top bar -->
			<div class="codrops-top clearfix">
			</div><!--/ Codrops top bar -->
			<header class="clearfix">
				<h1>Photo Gallery <span>with Expanding Preview</span></h1>	
			</header>
			<% rs=stmt.executeQuery("select * from itemdetails");
			%>
			<div class="main">
				<ul id="og-grid" class="og-grid">
				<% while(rs.next())
					{
						
						%>
					<li>
						<a data-largesrc="disp.jsp?id=<%=rs.getString(1)%>" data-title="<%=rs.getString(2)%>" data-description="<%=rs.getString(7)%>">
							<img src="disp.jsp?id=<%=rs.getString(1)%>" width="230" height="230" alt="img+<%=rs.getString(1)%>"/>
						</a>
					</li>
					<%} %>
				</ul>
		
			</div>
			
		</div><!-- /container -->
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script src="jss/grid.js"></script>
		<script>
			$(function() {
				Grid.init();
			});
		</script>
	</body>
</html>