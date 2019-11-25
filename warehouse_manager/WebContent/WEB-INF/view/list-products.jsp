<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>

<title>Stock</title>
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
			<th> Product Id</th>
			<th> Product category</th>
			<th> Product Name </th>
			<th> Units available</th>
			<th> Per unit cost</th>
			<th> Minimum purchasable units</th>
			<th> Date of stocking</th>
			<th> Action </th>
			
		</tr>
		
		<c:forEach var ="tempProduct" items="${products}">
		<c:url var ="updateLink" value="/products/showFormForUpdatingProduct">
		<c:param name="productid" value ="${tempProduct.productid}" />
		
		</c:url>
		<c:url var="deleteLink" value="/products/delete">
		<c:param name="productid" value="${tempProduct.productid}" />
		</c:url>
		
		<tr> 
		
			<td> ${tempProduct.productid} </td>
			<td> ${tempProduct.productname} </td>
			<td> ${tempProduct.productcat} </td>
			
			<td> ${tempProduct.units} </td>
			<td> ${tempProduct.puc} </td>
			<td> ${tempProduct.min} </td>
			<td> ${tempProduct.stockdate} </td>
			
			
			<td>
			<a href="${updateLink}">Update</a>
			|
			<a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this?'))) return false">Delete</a>
			</td>
			 
		</tr>
		</c:forEach>	
		</table>
		<br>
		<div class="addbutton"></div><input type="button" value="Add Product" onclick="window.location.href='showFormForAddingProduct'; return false;" class="add-button"/>
	</div>
	</div>
	</div>
</body>



</html>