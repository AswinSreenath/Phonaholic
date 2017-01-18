<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admimistrator</title>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"></script>
<script src="https://use.fontawesome.com/034feea29c.js"></script>
</head>
<body>
	<h1>Product List</h1>

	<c:url var="addAction" value="/admin/add"></c:url>

	<form:form action="${addAction }" commandName="product"
		enctype="multipart/form-data">
		
		<table>
			<c:if test="${!empty product.name }">
				<tr>
					<td><form:label path="pid">
							<spring:message text="ID" />
						</form:label></td>
					<td><form:input path="pid" readonly="true" size="8"
							disabled="true" /> <form:hidden path="pid" /></td>
				</tr>
			</c:if>
			<tr>
				<td><form:label path="name">
						<spring:message text="name" />
					</form:label></td>
				<td><form:input path="name" /> <form:errors path="name"></form:errors>
				</td>
			</tr>
			<tr>
				<td><form:label path="brand">
						<spring:message text="brand" />
					</form:label></td>
				<td><form:input path="brand" /> <form:errors path="brand"></form:errors>
				</td>
			</tr>
			<tr>
				<td><form:label path="category">
						<spring:message text="category" />
					</form:label></td>
				<td><form:input path="category" /> <form:errors
						path="category"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="desc">
						<spring:message text="description" />
					</form:label></td>
				<td><form:input path="desc" /> <form:errors path="desc"></form:errors>
				</td>
			</tr>
			<tr>
				<td><form:label path="price">
						<spring:message text="price" />
					</form:label></td>
				<td><form:input path="price" /> <form:errors path="price"></form:errors>
				</td>
			</tr>


			<tr>
				<td><form:label path="image">
						<spring:message text="image" />
					</form:label></td>
				<td><form:input type="file" path="image" /> <form:errors
						path="image"></form:errors></td>
			<tr>
				<td colspan="2"><c:if test="${!empty product.name }">
						<input type="submit" class="btn btn-primary" value="<spring:message text="Edit Product"/>" />
					</c:if> <c:if test="${empty product.name }">
						<input type="submit" class="btn btn-success" value="<spring:message text="Add Product" />" />
					</c:if></td>
			</tr>
		</table>
	
	</form:form>
	
	
	
	
	
	

	<c:if test="${!empty listproducts }">
		<table>
			<tr>
				<th>Product version</th>
				<th>Product nam</th>
				<th>Product Brand</th>
				<th>Product category</th>
				<th>ProductDescriptiom</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach items="${listproducts }" var="product">
				<tr>
					<td>${product.pid }</td>
					<td>${product.name }</td>
					<td>${product.brand }</td>
					<td>${product.category }</td>
					<td>${product.desc }</td>
					<td>${product.price }</td>
					<td><a href="<c:url value='/admin/edit/${product.pid }'/>">Edit</a></td>
					<td><a href="<c:url value='/admin/remove/${product.pid }'/>">Remove</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>