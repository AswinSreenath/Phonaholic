<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page isELIgnored="false"%>


<title>Products|Phonaholic</title>
<%@ include file="template\Header.jsp"%>

<script>
var prod=${productList};
angular.module("productApp",[])

.controller("productController",function($scope){
	
	$scope.prodData=prod;
	
	$scope.sort=function(keyname){
		$scope.sortKey=keyname;
		$scope.reverse=!$scope.reverse;
	}
	
});
</script>

<div class="container-fluid" ng-app="productApp"
	ng-controller="productController">
	<br>
	<br>
	<br>
	<br>
	<br> <input type="text" ng-model="search">
	<table class="table table-hover">
		<thead>
			<tr>
				<th></th>
				<th ng-click="sort('id')">Product ID</th>
				<th ng-click="sort('name')">Product Name</th>
				<th ng-click="sort('brand')">band</th>
				<th ng-click="sort('category')">Category</th>
				<th ng-click="sort('price')">Price</th>
			</tr>
		</thead>

		<tbody>
			<tr
				ng-repeat="product in prodData | filter:search | orderBy:sortKey:reverse">
				<td><img src="\phonaholic\images\{{product.id}}.jpg"
					style="max-width: 175px; max-height: 100px;" /></td>
				<td>{{product.id}}</td>
				<td>{{product.name}}</td>
				<td>{{product.brand}}</td>
				<td>{{product.category}}</td>
				<td>{{product.price}}</td>
				<td><button type="submit" class="button" onclick="<c:url value="productdetails/{{product.id}}"/>">View</button></td>
			</tr>
		</tbody>
	</table>




</div>

<%@ include file="template\Footer.jsp"%>