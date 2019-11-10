<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
	<title>Save Product</title>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">

	
</head>

<body>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/warehouse_manager">Warehouse manager</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="redirect:/products/list">Products </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="redirect:/clients/list">Clients</a>
        
      </li>
      <li class="nav-item">
        <a class="nav-link" href="redirect:/purchases/list">Purchases</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="redirect:/deliveries/list">Deliveries</a>
      </li>
    </ul>
    <span class="navbar-text">
      Pick a table to work on
    </span>
  </div>
</nav>

	<div id="wrapper">
		<div id="header">
			<h2>Warehouse Products:</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Product</h3>
	
		<form:form action="saveProduct" modelAttribute="product" method="POST">
		<form:hidden path="productid"/>
		
			<table>
				<tbody>
					<tr>
						<td><label>Product category:</label></td>
						<td><form:input path="productcat" /></td>
					</tr>
					<tr>
						<td><label>Product name:</label></td>
						<td><form:input path="productname" /></td>
					</tr>
					
					<tr>
						<td><label>Units available:</label></td>
						<td><form:input path="units" /></td>
					</tr>
					
					<tr>
						<td><label>Per unit cost:</label></td>
						<td><form:input path="puc" /></td>
					</tr>
					<tr>
						<td><label>Minimum units:</label></td>
						<td><form:input path="min" /></td>
					</tr>
					<tr>
						<td><label>Date of stocking:</label></td>
						<td><form:input path="stockdate" /></td>
					</tr>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>


				
				</tbody>
			</table>
		
		
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/products/list">Back to List</a>
		</p>
	
	</div>

</body>

</html>













					



