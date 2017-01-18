<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page isELIgnored="false"%>

<%@ include file="template\Header.jsp"%>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="container-fluid">
<c:if test="${!empty itemlist }">
	<div class="row">
		<div class="col-sm-12" style="padding: 0;">
			
				<table class="table">
					<thead>
						<tr>
							<th></th>
							<th>Name</th>
							<th>Brand</th>
							<th>Category</th>
							<th>Descriptiom</th>
							<th>Pricee</th>
							<th>Item Quantity</th>
							<th>Item Total</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${itemlist }" var="item">
							<tr>
								<td><img src="\phonaholic\images\ ${item.product.pid}.jpg"
									style="max-width: 175px; max-height: 100px;" /></td>

								<td style="vertical-align: middle;">${item.product.name }</td>
								<td style="vertical-align: middle;">${item.product.brand }</td>
								<td style="vertical-align: middle;">${item.product.category }</td>
								<td style="vertical-align: middle;">${item.product.desc }</td>
								<td style="vertical-align: middle;">${item.product.price }</td>
								<td style="vertical-align: middle;">${item.quantity }</td>
								<td style="vertical-align: middle;">${item.itemtotal }</td>
								<td style="height: 117px; vertical-align: middle;"><a
									href="<c:url value='/cart/remove/${item.itemid}'/>">Remove</a></td>


							</tr>
						</c:forEach>
					</tbody>
				</table>
			
		</div>
		

	</div>
	<br> <br>
	<div align="right">
		<h4 style="color: #1E7145">Total:${totalprice }</h4>
		<a href='<c:url value='/order' />' class="btn btn-default button">
			Checkout </a>
	</div>
	</c:if>
	<c:if test="${empty itemlist }">
	<div><br><br><br>
	<h1 style="text-align: center;">Please add some items to cart<a href="\phonaholic\" style="color:black;">Back</a></h1>
	</div>
	
	
	
	</c:if>
</div>


<%@include file="template\Footer.jsp"%>