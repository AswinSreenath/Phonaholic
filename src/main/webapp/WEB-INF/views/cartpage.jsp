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
	<div class="row">
		<div class="col-sm-6" style="padding: 0;">
			<c:if test="${!empty productList }">
				<table class="table">
					<thead>
						<tr>
							<th></th>
							<th>Name</th>
							<th>Brand</th>
							<th>Category</th>
							<th>Descriptiom</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${productList }" var="product">
							<tr>
								<td><img src="\phonaholic\images\ ${product.pid}.jpg"
									style="max-width: 175px; max-height: 100px;" /></td>

								<td style="vertical-align: middle;">${product.name }</td>
								<td style="vertical-align: middle;">${product.brand }</td>
								<td style="vertical-align: middle;">${product.category }</td>
								<td style="vertical-align: middle;">${product.desc }</td>



							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:if>
		</div>
		<div class="col-sm-6" style="padding: 0;">

			<c:if test="${!empty itemlist }">
				<table class="table">
					<thead>
						<tr>
							<th>item quantity</th>
							<th>item total</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${itemlist}" var="item">
							<tr>
								<td style="height: 117px;  vertical-align: middle;">${item.quantity }</td>
								<td style="height: 117px; vertical-align: middle;">${item.itemtotal }</td>
								<td style="height: 117px; vertical-align: middle;"><a
									href="<c:url value='/cart/remove/${item.itemid}'/>">Remove</a></td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:if>


		</div>

	</div>
	<br> <br>
	<div align="right">
		<h4 style="color: #1E7145">Total:${totalprice }</h4>
		<a href='<c:url value='/cartFlow' />' class="btn btn-default button">
			Checkout </a>
	</div>
</div>


<%@include file="template\Footer.jsp"%>