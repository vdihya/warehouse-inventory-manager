 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
	<title>Add a new Client</title>

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
		<h3>Add a Client</h3>
	<br>
		<form:form action="saveClient" modelAttribute="client" method="POST">
		<form:hidden path="clientid"/> 
			
			
			
			<div class="input-group mb-3">
  			<div class="input-group-prepend">
   				 <span class="input-group-text" id="basic-addon1">client's name</span>
 		 	</div>
  				<form:input path="clientname" class="form-control" aria-describedby="basic-addon1"/>
  				<form:errors path="clientname" cssClass="error"/>
			</div>
			<div class="input-group mb-3">
  			<div class="input-group-prepend">
   				 <span class="input-group-text" id="basic-addon1">client's address</span>
 		 	</div>
  				<form:input path="address" class="form-control" aria-describedby="basic-addon1"/>
  				<form:errors path="address" cssClass="error"/>
			</div>
			<div class="input-group mb-3">
  			<div class="input-group-prepend">
   				 <span class="input-group-text" id="basic-addon1">client's phone number</span>
 		 	</div>
  				<form:input path="phone" class="form-control" aria-describedby="basic-addon1"/>
  				<form:errors path="phone" cssClass="error"/>
			</div>
	<button type="submit" class="btn btn-dark">Submit</button>
	<a class="btn btn-outline-dark" href="${pageContext.request.contextPath}/clients/list" role="button">Back to stock list</a>
		
		
		</form:form>
	
	</div>

</body>

</html>













					




