<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ include file="template\Header.jsp"%>
<!DOCTYPE html>

<style>
.form-signup {
	max-width: 330px;
	padding: 15px;
	margin: 0 auto;
}

.form-signup .form-control {
	position: relative;
	height: auto;
	padding: 10px;
	font-size: 16px;
}
</style>




	<br>
	<br>
	<br>
	<br>
	<br>



	<div class="container">
		<c:url var="addAction" value="/register/add"></c:url>
		<form:form class="form-signup" action="${addAction}"
			modelAttribute="user" method="POST">
			<h2 style="color: #1E7145">Register</h2>
			<form:input type="text" id="name" class="form-control"
				placeholder="Name" path="name" />
			<br>
			<form:input type="text" id="username" class="form-control"
				placeholder="UserName" path="username" />
			<br>
			<form:input type="password" id="password" class="form-control"
				placeholder="Password" path="password" />
			<br>
			<form:input type="text" id="address" class="form-control"
				placeholder="Adress" path="address" />
			<br>
			<button class="btn btn-lg btn-default btn-block button" type="submit">Register</button>
		</form:form>
	</div>
	<br>
	<br>
	<br>


<%@ include file="template\Footer.jsp"%>