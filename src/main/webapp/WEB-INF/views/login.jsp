	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="template\Header.jsp"%>
<title>Login|Phonaholic</title>
<style>
.form-signin {
	max-width: 330px;
	padding: 15px;
	margin: 0 auto;
}

.form-signin .form-control {
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
<br>
<div class="container">
	<form class="form-signin" action="/phonaholic/login" method="POST">
		<h2 class="form-signin-heading" style="color: #1E7145">Login</h2>
		<input type="text" id="username" class="form-control"
			placeholder="User Name" name="username"><br> <input
			type="password" id="password" class="form-control"
			placeholder="Password" name="password"> <br> <input
			class="btn btn-lg btn-default btn-block button" type="submit"
			value="Sign in" /> <a href="<c:url value="/register/"/>"><font
			color="#1E7145"><small>New User Register here</small></font></a>

	</form>
</div>

<%@ include file="template\Footer.jsp"%>