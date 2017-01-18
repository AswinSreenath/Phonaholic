<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ include file="Header.jsp"%>
<title>Shipping Address|Phonaholic</title>
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
<div class="container">

	<form:form class="form-signup" commandName="order.user">
		<h2 style="color: #1E7145">ShippingAddress</h2>
		<form:input type="text" id="shippingAddress.phonenumber"
			class="form-control" placeholder="phone number"
			path="shippingAddress.phonenumber" />
		<br>
		<form:input type="text" id="shippingAddress.city" class="form-control"
			placeholder="City" path="shippingAddress.city" />
		<br>
		<form:input type="text" id="shippingAddress.district"
			class="form-control" placeholder="District"
			path="shippingAddress.district" />
		<br>
		<form:input type="text" id="shippingAddress.pin" class="form-control"
			placeholder="PIN" path="shippingAddress.pin" />
		<br>
		<form:input type="text" id="shippingAddress.state"
			class="form-control" placeholder="State" path="shippingAddress.state" />
		<br>
		<input name="_eventId_event1"
			class="btn btn-lg btn-default btn-block button" type="submit"
			value="Confirm">

	</form:form>
</div>
<%@ include file="Footer.jsp"%>
