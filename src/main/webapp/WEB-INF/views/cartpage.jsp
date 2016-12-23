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
		<div class="col-sm-6" style="padding:0;">
			<c:if test="${!empty productList }">
				<table class="table">
					<tr>

						<th></th>
						<th>Name</th>
						<th>Brand</th>
						<th>Category</th>
						<th>Descriptiom</th>



					</tr>
					<c:forEach items="${productList }" var="product">
						<tr>
							<td><img src=" <c:url value='\images\${product.pid }.jpg'/>"
								style="max-width: 175px; max-height: 100px;" /></td>

							<td>${product.name }</td>
							<td>${product.brand }</td>
							<td>${product.category }</td>
							<td>${product.desc }</td>



						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>
		<div class="col-sm-6" style="padding: 0;">

			<c:if test="${!empty itemlist }">
				<table class="table">
					<tr>

						<th>item quantity</th>
						<th>item total</th>
						<th></th>
					</tr>
					<c:forEach items="${itemlist}" var="item">
						<tr>

							<td>${item.quantity }</td>
							<td>${item.itemtotal }</td>
							<td><a href="<c:url value='/cart/remove/${item.itemid}'/>">Remove</a></td>

						</tr>
					</c:forEach>
				</table>
			</c:if>


		</div>

	</div>
	<br>
	<br>
	<div align="right">
	<h4 style="color:#1E7145">Total:${totalprice }</h4>
	<a href="/phonaholic/cartFlow" class="btn btn-default button"> Checkout </a>
	</div>
</div>


<%@include file="template\Footer.jsp"%>