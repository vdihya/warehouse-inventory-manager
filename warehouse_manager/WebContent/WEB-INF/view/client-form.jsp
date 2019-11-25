 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
	<title>Add new Client form</title>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">

<style>
	.error {color: blue}
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
			<h2>Client details:</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Client</h3>
	
		<form:form action="saveClient" modelAttribute="client" method="POST">
		<form:hidden path="clientid"/> 
			<table>
				<tbody>
					<tr>
						<td><label>Client's Name</label></td>
						<td><form:input path="clientname" />
						<form:errors path="clientname" cssClass="error"/>
						</td>
					</tr>
					<tr>
						<td><label>Client's Address</label></td>
						<td><form:input path="address" />
						<form:errors path="address" cssClass="error"/></td>
					
					</tr>
					
					<tr>
						<td><label>Client's Phone Number</label></td>
						<td>
						<form:input path="phone" />
						<form:errors path="phone" cssClass="error"/>
						</td>
					
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
			<a href="${pageContext.request.contextPath}/clients/list"> Go back to Client List</a>
		</p>
	
	</div>

</body>

</html>













					




