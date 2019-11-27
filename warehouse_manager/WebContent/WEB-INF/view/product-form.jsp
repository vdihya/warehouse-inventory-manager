<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
	<title>Add Stock</title>

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
		<h3>Add Stock</h3>
	<br>
		<form:form action="saveProduct" modelAttribute="product" method="POST">
		<form:hidden path="productid"/>
		
	
		<div class="input-group mb-3">
  			<div class="input-group-prepend">
   				 <span class="input-group-text" id="basic-addon1">product category</span>
 		 	</div>
  				<form:input path="productcat" class="form-control" aria-describedby="basic-addon1"/>
  				<form:errors path="productcat" cssClass="error"/>
		</div>
		<div class="input-group mb-3">
  			<div class="input-group-prepend">
   				 <span class="input-group-text" id="basic-addon1">product name</span>
 		 	</div>
  				<form:input path="productname" class="form-control" aria-describedby="basic-addon1"/>
  				<form:errors path="productname" cssClass="error"/>
		</div>
		<div class="input-group mb-3">
  			<div class="input-group-prepend">
   				 <span class="input-group-text" id="basic-addon1">units available</span>
 		 	</div>
  				<form:input path="units" class="form-control" aria-describedby="basic-addon1"/>
  				<form:errors path="units" cssClass="error"/>
  				
		</div>
		<div class="input-group mb-3">
  			<div class="input-group-prepend">
   				 <span class="input-group-text" id="basic-addon1">per unit cost</span>
 		 	</div>
  				<form:input path="puc" class="form-control" aria-describedby="basic-addon1"/>
  					<form:errors path="puc" cssClass="error"/>
  				
		</div>
		<div class="input-group mb-3">
  			<div class="input-group-prepend">
   				 <span class="input-group-text" id="basic-addon1">minimum units purchasable</span>
 		 	</div>
  				<form:input path="min" class="form-control" aria-describedby="basic-addon1"/>
  				<form:errors path="min" cssClass="error"/>
		</div>
		<div class="input-group mb-3">
  			<div class="input-group-prepend">
   				 <span class="input-group-text" id="basic-addon1">date of stocking</span>
 		 	</div>
  				<form:input path="stockdate" class="form-control" aria-describedby="basic-addon1"/>
		</div>
	<button type="submit" class="btn btn-dark">Submit</button>
	<a class="btn btn-outline-dark" href="${pageContext.request.contextPath}/products/list" role="button">Back to stock list</a>
		
	</form:form>
	
	</div>

</body>

</html>













					




