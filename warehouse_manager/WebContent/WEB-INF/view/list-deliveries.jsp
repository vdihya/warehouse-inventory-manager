<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>

<title>Deliveries scheduled</title>
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
		<table>
		<tr>
			<th> Delivery Id</th>
			<th> Status </th>
			<th> Estimated delivery within </th>
			<th> Date of schedule</th>
			
			
		</tr>
		
		<c:forEach var ="tempDelivery" items="${deliverydetails}">
		<tr> 
		
			<td> ${tempDelivery.deliveryid} </td>
			<td> ${tempDelivery.status} </td>
			<td> ${tempDelivery.estimated} </td>
			<td> ${tempDelivery.scheduled} </td>
			 
		</tr>
		</c:forEach>	
		</table>
		<br>
		</div>
	</div>
	</div>
</body>



</html>