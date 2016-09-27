<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sign Up Page</title>

<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet">

<!-- Font awesome -->
<link href="<c:url value='/resources/css/font-awesome.css'/>"
	rel="stylesheet">
<!-- Bootstrap -->
<link href="<c:url value='/resources/css/bootstrap.css'/>"
	rel="stylesheet">

<!-- Main style sheet -->
<link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet">

<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>

</head>
<body>

	<div class="col-md-6">
	<div class="alert alert-info" >
	<strong>Please enter your right info</strong>
	</div>
		<div class="aa-myaccount-register">
			<h1>footbazzaar signin</h1>
			<form:form modelAttribute="userDetails" accept-charset="utf-8"
				class="form" role="form">
				<form:errors path="*" cssClass="errorblock" element="div" />
				<p></p>
							Name:
							<form:input path="user_name" pattern="[a-zA-Z]{3,30}"
					required="true" class="form-control input-lg"
					placeholder="Enter your name" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('user_name')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />
							
						E-mail:
						<form:input path="mail_id"
					pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="true"
					class="form-control input-lg" placeholder="Enter your mail id" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('mail_id')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<br />

						Contact Number:
						<form:input path="contact" pattern="[9|7|8][0-9]{9}"
					required="true" class="form-control input-lg"
					placeholder="Enter your contact number" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('contact')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />

						Password:
						<form:password path="password" required="true"
					class="form-control input-lg" placeholder="Enter your password" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />
						Confirm Password:
						<form:password path="con_password" required="true"
					class="form-control input-lg" placeholder="Confirm Password" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('con_password')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />
				<button class="btn btn-lg btn-primary btn-block signup-btn"
					name="_eventId_submit" type="submit" value="submit">Create
					new account</button>
			</form:form>
			<button class="btn btn-lg">
				<input type="button" value="back"
					onclick="javascript:history.back()" />
			</button>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<c:url value='/resources/js/bootstrap.js'/>"></script>
	<!-- SmartMenus jQuery plugin -->
	<script type="text/javascript"
		src="<c:url value='/resources/js/jquery.smartmenus.js'/>"></script>
	<!-- SmartMenus jQuery Bootstrap Addon -->
	<script type="text/javascript"
		src="<c:url value='/resources/js/jquery.smartmenus.bootstrap.js'/>"></script>
	<!-- To Slider JS -->
	<script src="<c:url value='/resources/js/sequence.js'/>"></script>
	<script
		src="<c:url value='/resources/js/sequence-theme.modern-slide-in.js'/>"></script>
	<!-- Product view slider -->
	<script type="text/javascript"
		src="<c:url value='/resources/js/jquery.simpleGallery.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/resources/js/jquery.simpleLens.js'/>"></script>
	<!-- slick slider -->
	<script type="text/javascript"
		src="<c:url value='/resources/js/slick.js'/>"></script>
	<!-- Price picker slider -->
	<script type="text/javascript"
		src="<c:url value='/resources/js/nouislider.js'/>"></script>
	<!-- Custom js -->
	<script src="<c:url value='/resources/js/custom.js'/>"></script>

<%@ include file="footer.jsp"%>
</body>
</html>