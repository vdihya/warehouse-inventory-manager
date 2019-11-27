 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
	<title>Log Purchase details</title>


<style>
	.error {color: grey}
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
	
	<div class="jumbotron">
	<h3>Log Purchase information / 2</h3>
	<br>
		<form:form action="savePurchaseDetails" modelAttribute="purchasedetails" method="GET">
		<form:hidden path="purchaseid" value="${purchaseid}"/>
			
			<div class="input-group mb-3">
  			<div class="input-group-prepend">
   				 <span class="input-group-text" id="basic-addon1">units purchased</span>
 		 	</div>
  				<form:input path="units" class="form-control" aria-describedby="basic-addon1"/>
  				
			</div>
			<div class="input-group mb-3">
  			<div class="input-group-prepend">
   				 <span class="input-group-text" id="basic-addon1">date of purchase</span>
 		 	</div>
  				<form:input path="date_of_purchase" class="form-control" aria-describedby="basic-addon1"/>
  				
			</div>
			<button type="submit" class="btn btn-dark">Submit</button>
			<a class="btn btn-outline-dark" href="${pageContext.request.contextPath}/purchases/list" role="button">Back to stock list</a>
		
			</form:form>
	
	</div>

</body>

</html>













					




