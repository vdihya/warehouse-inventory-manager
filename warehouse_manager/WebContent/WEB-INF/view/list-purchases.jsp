<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>

<title>Clients</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
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
        <a class="nav-link" href="customer/list">Products </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="clients/list">Clients</a>
        
      </li>
      <li class="nav-item">
        <a class="nav-link" href="purchases/list">Purchases</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="deliveries/list">Deliveries</a>
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
		<table>
		<tr>
			<th> Purchase ID </th>
			<th> Total Cost </th>
			<th> Units Purchased </th>
			<th> Date of Purchase </th>
			<th> Action </th>
		</tr>
			
		
		<c:forEach var ="tempPurchaseDetails" items="${purchasedetails}">
		
		<tr>
			<td> ${tempPurchaseDetails.purchaseid}</td>
			<td> ${tempPurchaseDetails.cost} </td>
			<td> ${tempPurchaseDetails.units} </td>
			<td> ${tempPurchaseDetails.date_of_purchase} </td>
			
		</tr>
		</c:forEach>
			
		
		
		
		</table>
		
		<br>
		
		<div class="addbutton"></div><input type="button" value="Log Purchase" onclick="window.location.href='showFormForAddingPurchase'; return false;" class="add-button"/>
	</div>
	</div>
	</div>
</body>



</html>