
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
	<title>Log a Purchase</title>

<style>
	.error {color: grey}
</style>
</head>

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
	<div class="jumbotron">
		<h3>Log Purchase information / 1</h3>
	<br>
	<br>
		<form:form action="savePurchase" modelAttribute="purchases" method="POST">
		<p>
		<label>Client: </label>
 		 <form:select path="purchaseclientid">
					<c:forEach var ="tempClient" items="${clients}">
   									<form:option value="${tempClient.clientid}"  label="${tempClient.clientname}"></form:option>
					</c:forEach>
		</form:select>
		</p>
		<p>
		<label>Product: </label>
 		 	<form:select path="purchaseproductid">
								<c:forEach var ="tempProduct" items="${products}">
   										<form:option value="${tempProduct.productid}"  label="${tempProduct.productname}"></form:option>
									</c:forEach>
									</form:select>
							
		</p>

	<button type="submit" class="btn btn-dark">Submit</button>
	<a class="btn btn-outline-dark" href="${pageContext.request.contextPath}/purchases/list" role="button">Back to purchases log</a>
		
		</form:form>
		
	
	</div>

</body>

</html>













					




