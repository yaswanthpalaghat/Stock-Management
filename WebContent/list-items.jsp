<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="css/bootstrap.css"/>
 <link rel="stylesheet" href="custom.css"/>

	<title>Stock Management</title>
	
	<link type="text/css" rel="stylesheet" href="css/style.css">
</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2> Stock Management</h2>
		</div>
	</div>

	<div id="container">
	
		<div id="content">
		
			<!-- put new button: Add Student -->
			<input type="button" value="Home" 
				   onclick="window.location.href='list-items.jsp'; return false;"
				   class="add-student-button"
			/>
			<input type="button" value="Add item" 
				   onclick="window.location.href='add-item-form.jsp'; return false;"
				   class="add-student-button"
			/>
			
			
            <!--  add a search box -->
			<form action="StockControllerServlet" method="GET">
		
				<input type="hidden" name="command" value="SEARCH" />
			
               <strong> Search Item:</strong> <input type="text" name="theSearchName" placeholder="Item Name or Category"/>
                
                <input type="submit" value="Search" class="add-student-button" />
            
            </form>

			<table>
			
				<tr>
					<th>ItemName</th>
					<th>DateOfEntry</th>
					<th>Location</th>
					<th>Action</th>
				</tr>
				
				<c:forEach var="tempStock" items="${STOCK_LIST}">
					
					<!-- set up a link for each student -->
					<c:url var="tempLink" value="StockControllerServlet">
						<c:param name="command" value="LOAD" />
						<c:param name="itemCode" value="${tempStock.itemCode}" />
					</c:url>

					<!--  set up a link to delete a student -->
					<c:url var="deleteLink" value="StockControllerServlet">
						<c:param name="command" value="DELETE" />
						<c:param name="itemCode" value="${tempStock.itemCode}" />
					</c:url>
																		
					<tr>
						<td> ${tempStock.itemName} </td>
						<td> ${tempStock.dateOfManufacture} </td>
						<td> ${tempStock.location} </td>
						<td> 
							<a href="${tempLink}">Update</a>|<a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false">Delete</a>	
						</td>
					</tr>
				
				</c:forEach>
				
			</table>
		
		</div>
	
	</div>
	<script type="text/javascript" src="jquery-3.2.1.js"/>
 <script type="text/javascript" src="javascript/bootstrap.js"/>
</body>


</html>








