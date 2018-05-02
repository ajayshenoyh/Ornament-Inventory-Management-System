<!DOCTYPE html>
<html>

<head>
<script type="text/javascript">
    function printpage() {
        //Get the print button and put it into a variable
        var printButton = document.getElementById("printpagebutton");
        //Set the print button visibility to 'hidden' 
        printButton.style.visibility = 'hidden';
        //Print the page content
        window.print()
        //Set the print button to 'visible' again 
        //[Delete this line if you want it to stay hidden after printing]
        printButton.style.visibility = 'visible';
    }
</script>
	<meta charset='UTF-8'>
	
	<title>Repair Report</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	 
	<link rel="stylesheet" href="css/stylep.css">
	
	<style>

	@media 
	only screen and (max-width: 760px),
	(min-device-width: 768px) and (max-device-width: 1024px)  {
		table, thead, tbody, th, td, tr { 
			display: block; 
		}

		thead tr { 
			position: absolute;
			top: -9999px;
			left: -9999px;
		}
		
		tr { border: 1px solid #ccc; }
		
		td { 
		
			border: none;
			border-bottom: 1px solid #eee; 
			position: relative;
			padding-left: 50%; 
		}
		
		td:before { 
			
			position: absolute;
			
			top: 6px;
			left: 6px;
			width: 45%; 
			padding-right: 10px; 
			white-space: nowrap;
		}
		
		td:nth-of-type(1):before { content: "Lend ID"; }
		td:nth-of-type(2):before { content: "Treasurer ID"; }
		td:nth-of-type(3):before { content: "Description"; }
		td:nth-of-type(4):before { content: "Date"; }
		
	}
	

	@media only screen
	and (min-device-width : 320px)
	and (max-device-width : 480px) {
		body { 
			padding: 0; 
			margin: 0; 
			width: 320px; }
		}
	
	
	@media only screen and (min-device-width: 768px) and (max-device-width: 1024px) {
		body { 
			width: 495px; 
		}
	}
	
	</style>

</head>
<%@ page import ="java.sql.*" import ="java.io.*" %>
<%
 Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mercer1","root", "dhanush");
    Statement st = con.createStatement();
    ResultSet resultset = 
            st.executeQuery("select * from repair") ;
	%>
<body>

	
	 <div id="page-wrap">
	<h1>Repair Report</h1>
  
	<p>Go to <a href="report.html">Report</a></p>
    
	
	<table>
		<thead>
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>DAMAGE</th>
			<th>PEARL1</th>
			<th>PEARL2</th>
			<th>PEARL3</th>
			<th>PEARL4</th>
			<th>PEARL5</th>
			<th>PEARL6</th>
			<th>PEARL7</th>
			<th>PEARL8</th>
			<th>PEARL9</th>			
			<th>WEIGHT</th>
			
		</tr>
		</thead>
		<% while(resultset.next()){ %>
		<tbody>
		<tr>
			<td><%= resultset.getString(1) %></td>
			<td><%= resultset.getString(2) %></td>
			<td><%= resultset.getString(3) %></td>
			<td><%= resultset.getString(4) %></td>
			<td><%= resultset.getString(5) %></td>
			<td><%= resultset.getString(6) %></td>
			<td><%= resultset.getString(7) %></td>
			<td><%= resultset.getString(8) %></td>
			<td><%= resultset.getString(9) %></td>
			<td><%= resultset.getString(10) %></td>
			<td><%= resultset.getString(11) %></td>
			<td><%= resultset.getString(12) %></td>
				<td><%= resultset.getString(13) %></td>
		</tr>
		
		</tbody>
		<% } %>
	</table>
	</div>
	

	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="printpagebutton" type="button" value="Print this page" onclick="printpage()"/>

		
</body>

</html>