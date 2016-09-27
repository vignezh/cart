<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>footbazzar</title>
<link href="<c:url value='/resources/css/font-awesome.css'/>"
	rel="stylesheet">

<!-- Bootstrap -->
<link href="<c:url value='/resources/css/bootstrap.css'/>"
	rel="stylesheet">
<!-- SmartMenus jQuery Bootstrap Addon CSS -->
<link
	href="<c:url value='/resources/css/jquery.smartmenus.bootstrap.css'/>"
	rel="stylesheet">
<!-- Product view slider -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/jquery.simpleLens.css'/>">
<!-- slick slider -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/slick.css'/>">
<!-- price picker slider -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/nouislider.css'/>">
<!-- Theme color -->
<link id="switcher"
	href="<c:url value='/resources/css/theme-color/default-theme.css'/>"
	rel="stylesheet">
<!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
<!-- Top Slider CSS -->
<link
	href="<c:url value='/resources/css/sequence-theme.modern-slide-in.css'/>"
	rel="stylesheet" media="all">

<!-- Main style sheet -->
<link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet">


<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="col-md-6">
		<div class="aa-myaccount-register">

			<fieldset>
				<legend>Confirm Details</legend>
				<div class="alert alert-warning">
				<strong>Please check your info</strong>
				</div>
				<form:form modelAttribute="userDetails">
					<form:label path="user_name" >User Name:</form:label>${userDetails.user_name}
					<br />
					<br />
					<form:label path="mail_id">Email Id:</form:label>${userDetails.mail_id}
					<br />
					<br />
					<form:label path="contact">Contact Number:</form:label>${userDetails.contact}
					<br />
					<br />
					
					<input class="btn btn-lg btn-primary" name="_eventId_edit" type="submit" value="Edit" />
					<input class="btn btn-lg btn-primary" name="_eventId_submit" type="submit" value="Confirm Details" />
					<br />
				</form:form>
			</fieldset>

		</div>
	</div>
		
</body>
</html>
<%@include file="footer.jsp"%>