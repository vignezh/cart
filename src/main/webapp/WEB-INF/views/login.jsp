<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Login Form</title>
<link href="<c:url value='/resources/css/font-awesome.css'/>"
	rel="stylesheet">
<!-- Bootstrap -->
<link href="<c:url value='/resources/css/bootstrap.css'/>"
	rel="stylesheet">

<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js">
        </script>
</head>
<body>
	
	
	<div class="top-content">
		<div class="inner-bg">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2 text">
						<marquee>
							<h1>Check out BRAND new collections and grab those to your
								foot...</h1>
						</marquee>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-6 col-sm-offset-3 form-box">
					<div class="form-top">
						<div class="form-top-left">
							<h3>Login to our FootBazzar</h3>
							<p>Enter your user name and password to continue:</p>
						</div>
						<div class="form-top-right">
							<i class="fa fa-key"></i>
						</div>
					</div>
					<div class="form-bottom">
						<form action="j_spring_security_check" method="POST"
							class="login-form">
							<div class="form-group">
								<label class="sr-only" for="form-username">Username</label> <input
									type="text" name="user_name" placeholder="Username..."
									class="form-username form-control" id="form-username">
							</div>
							<br></br>
							<div class="form-group">
								<label class="sr-only" for="form-password">Password</label> <input
									type="password" name="password" placeholder="Password..."
									class="form-password form-control" id="form-password">
							</div>
							<br></br>
							<button type="submit" value="submit" class="btn">Sign
								in!</button>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />

						</form>
						<br>
						<button type="submit" class="btn"
								onclick="javascript:history.back()" /></button>
					 <script>
    $(document).ready(function() {
        function disableBack() { window.history.forward() }

        window.onload = disableBack();
        window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
    });
</script>
					</div>
				</div>


			</div>

		</div>

	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 <!-- Javascript -->
	<script src="assets/js/jquery-1.11.1.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.backstretch.min.js"></script>
	<script src="assets/js/scripts.js"></script>
 
 </body>
</html>
<%@ include file="footer.jsp"%>