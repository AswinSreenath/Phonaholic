<%@ include file="template\Header.jsp"%>
<title>Phonaholic</title>



<style>
.imager div {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}

.nopadding {
	padding: 0;
}
</style>

<div class="container-fluid" style="padding: 0px;">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">



		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">

			<div class="item active">
				<img class="img-responsive center-block" src="images\iphone.jpg"
					alt="">
				<div class="carousel-caption">
					<h1>iPhone</h1>
					<h2>iPhones at 29999</h2>
				</div>
			</div>

			<div class="item">
				<img class="img-responsive center-block" src="images\bw.jpg" alt="">
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<img class="img-responsive center-block" src="images\tablet.jpg"
					alt="">
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<img class="img-responsive center-block" src="images\phonaholic.jpg"
					alt="">
				<div class="carousel-caption"></div>
			</div>




		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>

		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			<li data-target="#carousel-example-generic" data-slide-to="3"></li>
		</ol>
	</div>
</div>

<div class="section">
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6 nopadding">
				<div class="embed-responsive embed-responsive-16by9">
					<a href="productdetails/41"><img class="embed-responsive-item"
						src="images\lenovok5.jpg" /></a>

				</div>
			</div>
			<div class="col-sm-6 nopadding">
				<div class="embed-responsive embed-responsive-16by9">
					<iframe class="embed-responsive-item"
						src="https://www.youtube.com/embed/_9G7CGbk4SA"></iframe>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid">
	<div class="row imager" style="background-color: white;">
		<a href='<c:url value='/product/smartphone'/>'><div
				class="col-md-4">
				<br> <br> <img src="images\smartphone.png"
					class="img-circle" alt="" width="243" height="241" align="middle"><br>
				<h4 style="color: #1E7145" align="center">Smart Phone</h4>
			</div></a> <a href='<c:url value='/product/basicphone'/>'><div
				class="col-md-4">
				<br> <br> <img src="images\oldphone.png"
					class="img-circle" alt="" width="243" height="241" align="middle"><br>
				<h4 style="color: #1E7145" align="center">Basic Phone</h4>
			</div></a>
		<a href='<c:url value='/product/tablet'/>'><div class="col-md-4">
			<br> <br> <img src="images\tab.png" class="img-circle"
				alt="" width="243" height="241" align="middle"><br>
			<h4 style="color: #1E7145" align="center">Tablet</h4>
		</div></a>
	</div>
</div>

<%@ include file="template\Footer.jsp" %>



