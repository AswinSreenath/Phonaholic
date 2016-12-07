<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false"%>
<%@ page isELIgnored="false" %>


<title>Products|Phonaholic</title>
<%@ include file="template\Header.jsp" %>
 
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

<div class="container-fluid" ng-app="productApp" ng-controller="productController"><br><br><br><br><br>
<input type="text" ng-model="search">
<table class="table table-hover">
  <thead>
  	<tr><th ng-click="sort('productid')">Product ID</th><th ng-click="sort('productname')">Product Name</th><th ng-click="sort('brand')">band</th><th ng-click="sort('category')">Category</th><th ng-click="sort('price')">Price</th></tr>
  </thead>
  
  <tbody>
  <tr ng-repeat="product in prodData | filter:search | orderBy:sortKey:reverse"><td>{{product.id}}</td><td>{{product.name}}</td><td>{{product.brand}}</td><td>{{product.category}}</td><td>{{product.price}}</td><td><button type="submit" class="button">View</button></td></tr>
  </tbody>
</table>
	
	
	
	
</div>

<%@ include file="template\Footer.jsp" %>