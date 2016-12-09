<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log In|Phonaholic</title>
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

.footer {
	position: fixed;
	background: white;
	bottom: 0;
	width: 100%;
	padding: 1em;
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
				<a class="navbar-brand" href="#"><img class="img-responsive"
					style="max-width: 175px; margin-top: -3px;"
					src="images\Logomakr_2A1smS.png" /></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="#" id="navig">Home</a></li>

					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false" id="navig">Products<span class="caret"
							style="color: #1E7145"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Basic Phone</a></li>
							<li><a href="#">Smart Phone</a></li>
							<li><a href="#">Tablets</a></li>

						</ul></li>

					<li><a href="#" id="navig">About</a></li>
					<li><a href="#" id="navig">Contact Us</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#" id="navig"><i class="fa fa-user"
							aria-hidden="true">Register</i></a></li>
					<li class="active"><a href="#" id="navig"><i
							class="fa fa-sign-in" aria-hidden="true"><span
								class="sr-only">(current)</span>Login</i></a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<form class="navbar-form">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search"
								style="margin-top: 12px;">
						</div>
						<button type="submit" class="btn btn-default  btn-sm button"
							style="margin-top: 12px;">
							<i class="fa fa-search" aria-hidden="true"></i>Search
						</button>
					</form>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<form class="form-signin" action="login" method="POST">
			<h2 class="form-signin-heading" style="color: #1E7145">Login</h2>
			<input type="text" id="username" class="form-control"
				placeholder="User Name" name="username"><br> <input
				type="password" id="password" class="form-control"
				placeholder="Password" name="password"> <br> <input
				class="btn btn-lg btn-default btn-block button" type="submit"
				value="Sign in" /> <a href="#"><font color="#1E7145"><small>New
						User Register here</small></font></a>

		</form>
	</div>

	<footer class="footer"
		style="border-style: solid; border-color: #1E7145; border-width: 1px 0px 0px 0px;">
		<div class="container-fluid">
			<text style="color:#1E7145;font-size:20px;">&copy Phonaholic</text>
			<ul class="nav navbar-nav navbar-right" style="float: right;">
				<a href="#"><i class="fa fa-facebook-official fa-2x"
					aria-hidden="true" style="color: #1E7145;"></i></a>&nbsp&nbsp
				<a href="#"><i class="fa fa-twitter fa-2x" aria-hidden="true"
					style="color: #1E7145;"> </i></a>
				<a href="#"><i class="fa fa-youtube fa-2x" aria-hidden="true"
					style="color: #1E7145;"> </i></a>
			</ul>
		</div>
	</footer>
</body>
</html>