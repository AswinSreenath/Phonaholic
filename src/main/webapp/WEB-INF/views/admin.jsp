<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page isELIgnored="false"%>
<%@ include file="template\Header.jsp"%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admimistrator</title>
<style>
.form-add {
	max-width: 330px;
	padding: 15px;
	margin: 0 auto;
}

.form-add .form-control {
	position: relative;
	height: auto;
	padding: 10px;
	font-size: 16px;
}

.footer {
	position: relative;
	background: white;
	bottom: 0;
	width: 100%;
	padding: 1em;
}
</style>

<br>
<br>
<br>
<div class="container-fluid">
	<h1 align="center">Product List</h1>

	<c:url var="addAction" value="/admin/add"></c:url>

	<form:form class="form-add" action="${addAction }"
		commandName="product" enctype="multipart/form-data">

		<table>
			<c:if test="${!empty product.name }">
				<tr>
					<td><form:label path="pid">
							<spring:message text="ID" />
						</form:label></td>
					<td><form:input path="pid" readonly="true" size="8"
							class="form-control" disabled="true" /> <form:hidden path="pid" /></td>
				</tr>
			</c:if>
			<tr>

				<td><form:input class="form-control" placeholder="Name"
						path="name" /> <form:errors path="name"></form:errors></td>
			</tr>

			<tr>

				<td><form:input class="form-control" path="brand"
						placeholder="Brand" /> <form:errors path="brand"></form:errors></td>
			</tr>

			<tr>

				<td><form:input class="form-control" path="category"
						placeholder="Category" /> <form:errors path="category"
						class="form-control"></form:errors></td>
			</tr>

			<tr>

				<td><form:input class="form-control" path="desc"
						placeholder="Description" /> <form:errors path="desc"></form:errors></td>
			</tr>

			<tr>

				<td><form:input class="form-control" path="price"
						placeholder="Price" /> <form:errors path="price"></form:errors></td>
			</tr>

			<tr>

				<td><form:input type="file" class="form-control" path="image" />
					<form:errors path="image"></form:errors></td>
			</tr>
			<br>
			<tr>
				<td colspan="2"><c:if test="${!empty product.name }">
						<input type="submit" class="btn btn-primary form-control"
							value="<spring:message text="Edit Product"/>" />
					</c:if> <c:if test="${empty product.name }">
						<input type="submit" class="btn btn-success form-control"
							value="<spring:message text="Add Product" />" />
					</c:if></td>
			</tr>
		</table>

	</form:form>

	<c:if test="${!empty listproducts }">
		<table class="table table-responsive">
			<tr>
				<th>Product version</th>
				<th>Product nam</th>
				<th>Product Brand</th>
				<th>Product category</th>
				<th>ProductDescriptiom</th>
				<th>Price</th>
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
</div><%@ include file="template\Footer.jsp"%>