
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
	<title>Log a Purchase</title>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">

<style>
	.error {color: red}
</style>
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
        <a class="nav-link" href="/warehouse_manager/products/list">Products</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/warehouse_manager/clients/list">Clients</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/warehouse_manager/purchases/list">Purchases</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/warehouse_manager/deliveries/list">Deliveries</a>
      </li>
    </ul>
    <span class="navbar-text">
      Pick a table to work on
    </span>
  </div>
</nav>
	
	<div id="wrapper">
		<div id="header">
			<h2>Purchase details:</h2>
		</div>
	</div>

	<div id="container">
		<h3>Log Purchase details</h3>
	
		<form:form action="savePurchase" modelAttribute="purchases" method="POST">
		
		<table>
				<tbody>
				
					<tr>
						<td><label>Client Name:</label></td>
						<td>
							
								<form:select path="purchaseclientid">
								<c:forEach var ="tempClient" items="${clients}">
   										<form:option value="${tempClient.clientid}"  label="${tempClient.clientname}"></form:option>
									</c:forEach>
									</form:select>
							
					</tr>
					<tr>
						<td><label>Product Name:</label></td>
						<td>
							
								<form:select path="purchaseproductid">
								<c:forEach var ="tempProduct" items="${products}">
   										<form:option value="${tempProduct.productid}"  label="${tempProduct.productname}"></form:option>
									</c:forEach>
									</form:select>
							
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
			<a href="${pageContext.request.contextPath}/purchases/list">Go back to Purchase Log</a>
		</p>
	
	</div>

</body>

</html>













					




