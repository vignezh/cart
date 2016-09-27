<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>E-Commerce</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- Bootstrap -->
<link href="<c:url value='/resources/css/bootstrap.css'/>"
	rel="stylesheet">

<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>
	
<style>
/* Remove the navbar's default rounded borders and increase the bottom margin */
.navbar {
	margin-bottom: 50px;
	border-radius: 0;
}

.blink {
    animation-duration: 1s;
    animation-name: blink;
    animation-iteration-count: infinite;
    animation-direction: alternate;
    animation-timing-function: ease-in-out;
}
@keyframes blink {
    from {
        opacity: 1;
    }
    to {
        opacity: 0;
    }
}

/* Remove the jumbotron's default bottom margin */
.jumbotron {
	margin-bottom: 0;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}
</style>
</head>
<body>
	<!-- <marquee bgcolor="yellow">Welcome to FootBazzar..Happy
		shopping folks...</marquee>
 -->
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index">FootBazzar</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					
					<li>
					<security:authorize access="hasRole('ROLE_ADMIN')">
					<a href="product">Product crud</a>
					</security:authorize>
					</li>
					
					<li><a href="about">About</a></li>
					<li><a href="viewall1">All items</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown">Collections<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="sports">Sports</a></li>
							<li><a href="casuals">Casuals</a></li>
							<li><a href="formals">Formals</a></li>
						</ul></li>

				</ul>

				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<ul class="nav navbar-nav navbar-right">

						<li><a href="logout"> Logout</a></li>
					</ul>
				</c:if>
				<c:if test="${pageContext.request.userPrincipal.name == null}">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="login"><span
								class="glyphicon glyphicon-log-in"></span>SignIn</a></li>

						<li><a href="memberShip.obj"><span
								class="glyphicon glyphicon-user"></span> SignUp</a></li>
					</ul>
				</c:if>
				<security:authorize access="hasRole('ROLE_USER')">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="cart"><span
							class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
				</ul>
				</security:authorize>
			</div>
		</div>
		
		<marquee bgcolor="skyblue" direction="right">
			<legend>Always you can grab your shoes from us...</legend>
		</marquee>
	</nav>

	<div class="jumbotron">
		<div class="container text-center">
			<h1 class="blink">Online Shoes Store</h1>
			<p class="blink">Make us to carry you through</p>
		</div>
	</div>
	
	<div id="myCarousel" class="carousel slide">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li class="item1 active"></li>
			<li class="item2"></li>
			<li class="item3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">

			<div class="item active">
				<img src="<c:url value="resources/pics/puma1.jpeg"/>" alt="bt1"
					width="500" height="500" />

				<div class="carousel-caption">
					<h3>Casual Shoes</h3>
					<p>Wear the color that suits you</p>
				</div>
			</div>

			<div class="item">
				<img src="<c:url value="resources/pics/bata1.jpeg"/>" alt="bt2"
					width="500" height="500" />
				<div class="carousel-caption">
					<h3>Formal Shoes</h3>
					<p>Feel like a professional</p>
				</div>
			</div>

			<div class="item">
				<img src="<c:url value="resources/pics/reebok1.jpeg"/>" alt="bt3"
					width="500" height="500" />
				<div class="carousel-caption">
					<h3>Sports Shoes</h3>
					<p>Be like an athlete</p>
				</div>
			</div>


		</div>


		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	



	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="panel panel-primary">
					<div class="panel-heading">Brand New Collections</div>
					<div class="panel-body">
						<i class="glyphicon glyphicon-magnet"><img
							src="https://rukminim1.flixcart.com/image/312/312/shoe/t/h/w/dark-shadow-sulphur-spring-puma-silver-18889502-puma-11-original-imaehq2g97susnfk.jpeg?q=70"
							class="img-responsive" style="width: 100%" alt="Image"></i>
					</div>
					<div class="panel-footer">Pick the one that suits you well</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="panel panel-danger">
					<div class="panel-heading">Brand New Collections</div>
					<div class="panel-body">
						<img
							src="https://rukminim1.flixcart.com/image/312/312/shoe/d/2/w/white-metsil-dk-blue-albis-1-0-m-adidas-8-original-imaejxgcxuefyjpm.jpeg?q=70"
							class="img-responsive" style="width: 100%" alt="Image">
					</div>
					<div class="panel-footer">Pick the one that suits you well</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="panel panel-success">
					<div class="panel-heading">Brand New Collections</div>
					<div class="panel-body">
						<img
							src="https://rukminim1.flixcart.com/image/312/312/shoe/n/w/5/fossil-chestnut-limestone-gray-dandelion-silicis-mid-dp-puma-11-original-imaekxyhcpgh2fpy.jpeg?q=70"
							class="img-responsive" style="width: 100%" alt="Image">
					</div>
					<div class="panel-footer">Pick the one that suits you well</div>
				</div>
			</div>
		</div>
	</div>
	<br>

	<br>
	<br>

	<footer class="container-fluid text-center">
		<p>Online Store Copyright</p>
		<form class="form-inline">
			Get deals: <input type="email" class="form-control" size="50"
				placeholder="Email Address">
			<button type="button" class="btn btn-danger">Sign Up</button>
		</form>
	</footer>

	<script>
		$(document).ready(function() {
			// Activate Carousel
			$("#myCarousel").carousel();

			// Enable Carousel Indicators
			$(".item1").click(function() {
				$("#myCarousel").carousel(0);
			});
			$(".item2").click(function() {
				$("#myCarousel").carousel(1);
			});
			$(".item3").click(function() {
				$("#myCarousel").carousel(2);
			});
			$(".item4").click(function() {
				$("#myCarousel").carousel(3);
			});

			// Enable Carousel Controls
			$(".left").click(function() {
				$("#myCarousel").carousel("prev");
			});
			$(".right").click(function() {
				$("#myCarousel").carousel("next");
			});
		});
	</script>
</body>
</html>
