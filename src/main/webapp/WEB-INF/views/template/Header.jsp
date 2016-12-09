
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<title>Phonaholic</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"></script>
<script src="https://use.fontawesome.com/034feea29c.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>




<style>
.navbar-fixed-top {
	min-height: 70px;
}

#navig {
	color: #1E7145;
}

#navig:HOVER {
	background-color: #1E7145;
	color: white;
}

.navbar-nav>li>a {
	padding-top: 0px;
	padding-bottom: 0px;
	line-height: 80px;
}

.navbar-default .navbar-toggle .icon-bar {
	background-color: #1E7145;
}

.navbar-default .navbar-toggle {
	border-color: #1E7145;
}

.form-signin {
	max-width: 330px;
	padding: 15px;
	margin: 0 auto;
}

.form-signin .form-control {
	position: relative;
	height: auto;
	padding: 10px;
	font-size: 16px;
}

.button {
	background-color: white;
	color: #1E7145;
	border: 2px solid #1E7145;
}

.button:HOVER {
	background-color: #1E7145;
	color: white;
	border: 2px solid #1E7145;
}
</style>



</head>

<body>

	<nav class="navbar navbar-default navbar-fixed-top"
		style="background-color: white;">

		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#myNavbar"
					aria-expanded="false" style="margin-top: 20px;">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar" style="color: #1E7145"></span> <span
						class="icon-bar" style="color: #1E7145"></span> <span
						class="icon-bar" style="color: #1E7145"></span>
				</button>
				<a class="navbar-brand" href='<c:url value='/'/>'><img
					class="img-responsive" style="max-width: 175px; margin-top: -3px;"
					src="\phonaholic\images\Logomakr_2A1smS.png" /></a>
			</div>


			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href='<c:url value='/'/>' id="navig">Home</a></li>

					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false" id="navig">Products<span class="caret"
							style="color: #1E7145"></span></a>
						<ul class="dropdown-menu">
							<li><a href='<c:url value='/basic/'/>'>Basic Phone</a></li>
							<li><a href='<c:url value='/smart/'/>'>Smart Phone</a></li>
							<li><a href='<c:url value='/tab'/>'>Tablets</a></li>
						</ul></li>

					<li><a href='<c:url value='/about/'/>' id="navig">About</a></li>
					<li><a href='<c:url value='/contact/'/>' id="navig">Contact
							Us</a></li>
				</ul>


				<ul class="nav navbar-nav navbar-right">
					<li><a href='<c:url value='/register/'/>' id="navig"><i
							class="fa fa-user">Register</i></a></li>
					<li><a href='<c:url value='/login/'/>' id="navig"><i
							class="fa fa-sign-in">Login</i></a></li>
				</ul>


			</div>
			<!-- /.navbar-collapse -->

		</div>
		<!-- /.container-fluid -->

	</nav>

</body>

</html>