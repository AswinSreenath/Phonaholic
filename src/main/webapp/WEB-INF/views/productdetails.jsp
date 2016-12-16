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
<div class="container-fluid">
	<div class="col-sm-6">
		<img src="/phonaholic/images/${product.pid}.jpg"
			style="max-width: 400px; max-height: 400px;" />
	</div>
	<div class="col-sm-6">
		<h2>Name:${product.name }</h2>
		<br> <label>Brand:${product.brand }</label> <label>Category:${product.category }</label>
		<br> <label>Desc:${product.desc }</label> <br> <label>Price:${product.price }</label>
		<br> <input type="submit" class="btn btn-lg button">

	</div>
</div>

<%@ include file="template\Footer.jsp"%>