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
        <a class="nav-link" href="redirect:/customer/list">Products <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="redirect:/clients/list">Clients</a>
        
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Purchases</a>
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
			<th> Client's Name</th>
			<th> Client's Address</th>
			<th> Client's Phone Number</th>
			<th> Action </th>
			
			
		</tr>
		
		<c:forEach var ="tempClient" items="${clients}">
		<c:url var ="updateLink" value="/clients/showFormForUpdatingClient">
		<c:param name="clientid" value ="${tempClient.clientid}" />
		
		</c:url>
		<c:url var="deleteLink" value="/clients/delete">
		<c:param name="clientid" value="${tempClient.clientid}" />
		</c:url>
		
		<tr> 
			<td> ${tempClient.clientname} </td>
			<td> ${tempClient.address} </td>
			<td> ${tempClient.phone} </td>
			
			<td>
			<a href="${updateLink}">Update</a>
			|
			<a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this?'))) return false">Delete</a>
			</td> 
		</tr>
		
		</c:forEach>	
		</table>
		<br>
		<div class="addbutton"></div><input type="button" value="Add Client" onclick="window.location.href='showFormForAddingClient'; return false;" class="add-button"/>
	</div>
	</div>
	</div>
</body>



</html>