<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page isELIgnored="false"%>
<%@ include file="template\Header.jsp"%>

<title>Products|Phonaholic</title>


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
				<th ng-click="sort('pid')">Product ID</th>
				<th ng-click="sort('name')">Product Name</th>
				<th ng-click="sort('brand')">band</th>
				<th ng-click="sort('category')">Category</th>
				<th ng-click="sort('price')">Price</th>
			</tr>
		</thead>

		<tbody>
			<tr
				ng-repeat="product in prodData | filter:search | orderBy:sortKey:reverse" style="color: #1E7145">
				<td><img src="\phonaholic\images\{{product.pid}}.jpg"
					style="max-width: 175px; max-height: 100px;" /></td>
				<td style="vertical-align: middle;"><b>{{product.pid}}</b></td>
				<td style="vertical-align: middle;"><b>{{product.name}}</b></td>
				<td style="vertical-align: middle;"><b>{{product.brand}}</b></td>
				<td style="vertical-align: middle;"><b>{{product.category}}</b></td>
				<td style="vertical-align: middle;"><b>{{product.price}}</b></td>
				<td style="vertical-align:middle;"><a  class="btn btn-sm button"
						href="<c:url value='/productdetails/{{product.pid}}'/>">View</a></td>
			</tr>
		</tbody>
	</table>




</div>

<%@ include file="template\Footer.jsp"%>