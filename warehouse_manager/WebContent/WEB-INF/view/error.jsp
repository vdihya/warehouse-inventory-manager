 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
	<title>Error!</title>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
<head>
        <meta http-equiv="refresh" content="2;url=/warehouse_manager/purchases/showFormForAddingPurchase" />
    </head>
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

<div>
<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <p class="lead"> Added units are invalid! Redirecting to purchases log page, try again! </p>
 </div>
</div>
</div>
</body>
</html>