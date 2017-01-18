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


<br>
<br>
<br>
<br>
<br>
<div class="container-fluid">
	<div>
		<div class="row">
			<div class="col-sm-6">
				<table class="table">
					<thead>
						<tr>
							<th></th>
							<th>Product name</th>
							<th>Product Price</th>
							<th>Quantity</th>
							<th>Total</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${itemlist}" var="item">
							<tr>
								<td><img src="\phonaholic\images\ ${item.product.pid }.jpg"
									style="max-width: 175px; max-height: 100px;" /></td>
								<td style="vertical-align: middle; color: #1E7145;">${item.product.name}</td>
								<td style="vertical-align: middle; color: #1E7145;">${item.product.price }</td>
								<td style="vertical-align: middle; color: #1E7145;">${item.quantity }</td>
								<td style="vertical-align: middle; color: #1E7145;">${item.itemtotal }</td>
							</tr>
						</c:forEach>



					</tbody>
				</table>
				<c:forEach items="${itemlist}" var="item">
					<label style="visibility: hidden;">${total=item.itemtotal+total}</label>
				</c:forEach>
				<label style="float: right; color: #1E7145;">Total:${total}</label>
			</div>



			<div class="col-sm-6"
				style="text-align: justify; color: #1E7145; padding: 0; font-size: x-large;">
				<h6 style="font-size: xx-large; color: #1E7145;">Address</h6>
				<label>Phone no:</label>${order.user.shippingAddress.phonenumber }<br>
				<label>City:</label>${order.user.shippingAddress.city }<br> <label>District:</label>${order.user.shippingAddress.district }<br>
				<label>Pin:</label>${order.user.shippingAddress.pin }<br> <label>State:</label>${order.user.shippingAddress.state }<br>

			</div>
			
		</div>
		<a class="btn btn-default btn-lg button"
				href="${flowExecutionUrl}&_eventId=shippingaddress"
				style="float: left; margin-left: 2px;">Back</a> <a
				class="btn btn-default button btn-lg"
				href="${flowExecutionUrl}&_eventId=event2"
				style="float: right; margin-right: 2px;">Confirm</a>
	</div>
</div>

<%@ include file="Footer.jsp"%>