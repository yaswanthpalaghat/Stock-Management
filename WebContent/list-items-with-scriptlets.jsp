<%@ page import="java.util.*, com.sanjeevtech.model.*" %>
<!DOCTYPE html>
<html>

<head>
	<title>Student Tracker App</title>
	
	<link type="text/css" rel="stylesheet" href="css/style.css">
</head>

<%
	// get the students from the request object (sent by servlet)
	List<Stock> theStocks = 
					(List<Stock>) request.getAttribute("STOCK_LIST");
%>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>FooBar University</h2>
		</div>
	</div>

	<div id="container">
	
		<div id="content">
		
			<table>
			
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
				</tr>
				
				<% for (Stock tempStudent : theStocks) { %>
				
					<tr>
						<td> <%= tempStudent.getItemName() %> </td>
						<td> <%= tempStudent.getLocation() %> </td>
					</tr>
				
				<% } %>
				
			</table>
		
		</div>
	
	</div>
</body>


</html>








