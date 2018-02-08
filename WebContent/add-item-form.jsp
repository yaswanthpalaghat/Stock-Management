<!DOCTYPE html>
<html>

<head>
	<title>Add Item</title>
<style>
      input:invalid {
        border: 2px dashed red;
      }
      input:valid {
        border: 2px solid black;
      }
    </style>
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link type="text/css" rel="stylesheet" href="css/add-student-style.css">	
	
	<script type="text/javascript" src="js/validation.js"></script>
</head>

<body>
	<div id="wrapper">
		<div id="header">
			<h2>Stock Management</h2>
		</div>
	</div>
	
	<div id="container">
		<h3>Add Item</h3>
		
		<form action="StockControllerServlet" method="POST" name="item">
		
			<input type="hidden" name="command" value="ADD" />
			
			<table>
				<tbody>
					<tr>
						<td><label>Item Name:</label></td>
						
						<td><input type="text" name="itemName" required="required" placeholder="Item Name" pattern="[a-zA-Z0-9\s\.]+"/></td>
					</tr>
			
					<tr>
						<td><label>Date_Of_entry:</label></td>
						<td><input type="date" name="dateOfManufacture" required="required" placeholder="Date Of" /></td>
					</tr>
					
					
					
					<tr>
						<td><label>Location:</label></td>
						<td>
						<select name="location">
						<option>Lab 1</option>
						<option>Lab 2</option>
						<option>Lab 3</option>
						<option>Lab 4</option>
						<option>Lab 5</option>
						</select>
						</td>
					</tr>
					
					
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" onclick="return requiredItem();" /></td>
					</tr>
					
				</tbody>
			</table>
		</form>
		
		<div style="clear: both;"></div>
		
		<p>
			<a href="StockControllerServlet">Back to List</a>
		</p>
	</div>
</body>

</html>