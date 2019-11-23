 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
        <a class="nav-link" href="redirect:/customer/list">Products </a>
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
			<h2>Purchase details:</h2>
		</div>
	</div>

	<div id="container">
		<h3>Log Purchase details</h3>
	
		<form:form action="savePurchaseDetails" modelAttribute="purchasedetails" method="GET">
		<form:hidden path="purchaseid" value="${purchaseid}"/>
			<table>
				<tbody>
					 
					<tr>
						<td><label>Units purchased: </label></td>
						<td><form:input path="units" /></td>
					</tr>
					<tr>
						<td><label>Date of purchase: </label></td>
						<td><form:input path="date_of_purchase" /></td>
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
			<a href="${pageContext.request.contextPath}/purchases/list">Back to Client List</a>
		</p>
	
	</div>

</body>

</html>













					




