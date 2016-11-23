<!DOCTYPE html>
<html lang="en">
<head>
  <title>Phonaholic</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"></script>
  <script src="https://use.fontawesome.com/034feea29c.js"></script>

<style>
 
#navig{
color:#1E7145;
}
#navig:HOVER{
background-color:#1E7145;
color:white;
}
.navbar-fixed-top {
    min-height: 80px;
}

.navbar-nav > li > a {
    padding-top: 0px;
    padding-bottom: 0px;
    line-height: 80px;
}


.navbar-default .navbar-toggle .icon-bar {
    background-color:#1E7145 ;
}
.navbar-default .navbar-toggle {
    border-color: #1E7145;
}

.imager div{
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;

}
.button{
background-color: white;
    border: 2px solid #1E7145;
    }
    .button:HOVER{
    
    background-color: #1E7145;
    color:white;
    border: 2px solid #1E7145;
    }
    .nopadding {
   padding: 0 ;
}
  </style>


</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top" style="background-color:white;">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar" aria-expanded="false" style="margin-top:20px;">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar" style="color:#1E7145"></span>
        <span class="icon-bar" style="color:#1E7145"></span>
        <span class="icon-bar" style="color:#1E7145"></span>
      </button>
      <a class="navbar-brand" href="#"><img style="max-width:175px;margin-top:0px;" src="images\Logomakr_2A1smS.png" /></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#" id="navig">Home</style><span class="sr-only">(current)</span></a></li>
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" id="navig">Products<span class="caret" id="navig"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Basic Phone</a></li>
            <li><a href="#">Smart Phone</a></li>
            <li><a href="#">Tablets</a></li>
            
          </ul>
        </li>
			
	<li><a href="#" id="navig">About</a></li>
	<li><a href="#" id="navig">Contact Us</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#" id="navig"><i class="fa fa-user" aria-hidden="true"> Register</i></a></li>      
        <li><a href="#" id="navig"><i class="fa fa-sign-in" aria-hidden="true">Login</i></a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
	  <form class="navbar-form">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search" style="margin-top:12px;">
        
        <button type="submit" class="btn btn-default  btn-sm button" style="margin-top:12px;"><i class="fa fa-search" aria-hidden="true"></i>Search</button>
      </div>	
      </form>
	  </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<div class="container-fluid" style="padding: 0px;">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    
    

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img class="img-responsive center-block" src="images\iphone.jpg" alt="" >
        <div class="carousel-caption">
         <h1>iPhone</h1>
         <h2>iPhones at 29999</h2>
        </div>
      </div>

      <div class="item">
        <img class="img-responsive center-block"src="images\bw.jpg" alt="" >
        <div class="carousel-caption">
          
        </div>
      </div>

      <div class="item">
        <img class="img-responsive center-block"src="images\tablet.jpg" alt="" >
        <div class="carousel-caption">
          
        </div>
      </div>
      
      <div class="item">
        <img class="img-responsive center-block"src="images\phonaholic.jpg" alt="" >
        <div class="carousel-caption">
          
        </div>
      </div>
      
	  
	  

    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
	<li data-target="#carousel-example-generic" data-slide-to="3"></li>
  </ol>
</div>
 </div>

 <div class="section"> 
<div class="container-fluid">
<div class="row">
  <div class="col-sm-6 nopadding"><div class="embed-responsive embed-responsive-16by9"><img  class="embed-responsive-item"  src="images\lenovok5.jpg"/></div></div>
  <div class="col-sm-6 nopadding">
  <div class="embed-responsive embed-responsive-16by9"><iframe  class="embed-responsive-item" src="https://www.youtube.com/embed/_9G7CGbk4SA"></iframe>
            </div>
			</div>
</div>
</div>
</div>
<div class="container-fluid">
<div class="row imager" style="background-color: #f1f4f6;">
<div class="col-md-4" ><br><br><img src="images\smartphone.png" class="img-circle" alt="" width="243" height="241" align="middle" ><br><h4 style="color:#1E7145" align="center">Smart Phone</h4></div>
<div class="col-md-4" ><br><br><img src="images\oldphone.png" class="img-circle" alt="" width="243" height="241" align="middle" ><br><h4 style="color:#1E7145" align="center">Basic Phone</h4></div>
<div class="col-md-4"><br><br><img src="images\tab.png" class="img-circle" alt="" width="243" height="241" align="middle" ><br><h4 style="color:#1E7145" align="center">Tablet</h4></div>
</div>
</div>

<footer class="footer" style="border-style:solid; border-color:#1E7145; border-width:1px 0px 0px 0px; background-color:#efefef;padding:1rem">
<div class="container-fluid">
<text style="color:#1E7145;font-size:20px;">&copy Phonaholic</text>
<ul class="nav navbar-nav navbar-right" style="float: right;">
		<a href="#"><i class="fa fa-facebook-official fa-2x" aria-hidden="true" style="color:#1E7145;"></i></a>&nbsp&nbsp      
        <a href="#"><i class="fa fa-twitter fa-2x" aria-hidden="true" style="color:#1E7145;"> </i></a>
		</ul>
</div>
</footer>


</body>
</html>
