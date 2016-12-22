<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page isELIgnored="false"%>

<%@ include file="template\Header.jsp"%>
<title>Products|Phonaholic</title>

<br>
<br>
<br>
<br>
<br>
<c:url var="addAction" value="/cart/add"></c:url>


<div class="container-fluid">
	<div class="col-sm-6">
		<img src="/phonaholic/images/${product.pid}.jpg"
			style="max-width: 400px; max-height: 400px;" />
	</div>

	<div class="col-sm-6">
		<h2>Name:${product.name }</h2>
		<br> <label >Brand:${product.brand }</label> <label>Category:${product.category }</label>
		<br> <label>Desc:${product.desc }</label> <br> <label>Price:${product.price }</label>
		<br> <a href=" <c:url value='/cart/${product.pid}'/> " class="btn btn-lg button" >Add to Cart</a>

	</div>
	

</div>


<%@ include file="template\Footer.jsp"%>