
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
</head>

<body background="${pageContext.request.contextPath}/resources/images/index.jpg" style='background-size: cover;background-repeat:no-repeat;'>
   
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/warehouse_manager">Warehouse manager</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="products/list">Products </a>
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

</body>

</html>