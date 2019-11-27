<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>

<title>Logged Purchases</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
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
<div class="container-fluid">


<div id="wrapper">

<div id="container">
	<div id="content">
</div>
		<table class="table table-hover">
		<thead>
		<tr>
			<th scope="col">Purchase ID </th>
			<th scope="col">Total Cost </th>
			<th scope="col">Units Purchased </th>
			<th scope="col">Date of Purchase </th>
			<th scope="col">Action </th>
		</tr>
		</thead>
		
		<c:forEach var ="tempPurchaseDetails" items="${purchasedetails}">
		<c:url var="deleteLink" value="/purchases/delete">
		<c:param name="purchaseid" value="${tempPurchaseDetails.purchaseid}" />
		</c:url>
		<tbody>
		<tr>
			<td> ${tempPurchaseDetails.purchaseid}</td>
			<td> ${tempPurchaseDetails.cost} </td>
			<td> ${tempPurchaseDetails.units} </td>
			<td> ${tempPurchaseDetails.date_of_purchase} </td>
			<td>
			<a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this?'))) return false">Delete</a>
			</td>
			
		</tr>
		</c:forEach>
		</tbody>
		</table>
		<br>
		<button type="button" class="btn btn-secondary btn-lg btn-block"value="Log Purchase" onclick="window.location.href='showFormForAddingPurchase'; return false;">Log a purchase</button>
	
	</div>
	</div>
	</div>
</body>

</html>