 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Save Product</title>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
</head>

<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>Client:</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Client</h3>
	
		<form:form action="saveClient" modelAttribute="client" method="POST">
		<form:hidden path="clientid"/> 
			<table>
				<tbody>
					<tr>
						<td><label> Client's Name</label></td>
						<td><form:input path="clientname" /></td>
					</tr>
					<tr>
						<td><label>Client's Address:</label></td>
						<td><form:input path="address" /></td>
					</tr>
					
					<tr>
						<td><label>Client's Phone Number: </label></td>
						<td><form:input path="phone" /></td>
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
			<a href="${pageContext.request.contextPath}/clients/list">Back to Client List</a>
		</p>
	
	</div>

</body>

</html>













					




