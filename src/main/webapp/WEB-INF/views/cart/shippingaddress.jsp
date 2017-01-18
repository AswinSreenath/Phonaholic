<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
	
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
.button {
	background-color: white;
	color: #1E7145;
	border: 2px solid #1E7145;
}

.button:HOVER {
	background-color: #1E7145;
	color: white;
	border: 2px solid #1E7145;
}
</style>
</head>
<body>
<div class="container">
		
		<form:form class="form-signup" 
			commandName="shippingAddress" >
			<h2 style="color: #1E7145">ShippingAddress</h2>
			<form:input type="text" id="phonenumber" class="form-control"
				placeholder="phone number" path="phonenumber" />
			<br>
			<form:input type="text" id="city" class="form-control"
				placeholder="City" path="city" />
			<br>
			<form:input type="text" id="district" class="form-control"
				placeholder="District" path="district" />
			<br>
			<form:input type="text" id="pin" class="form-control"
				placeholder="PIN" path="pin" />
			<br>
			<form:input type="text" id="state" class="form-control"
				placeholder="State" path="state" />
			<br>
			<input name="_eventId_event1" class="btn btn-lg btn-default btn-block button" type="submit" value="Confirm">
		</form:form>
	</div>

</body>
</html>