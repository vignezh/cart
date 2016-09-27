<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="header.jsp" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SHIPMENT</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Shipping Info</title>

</head>
<body>
	
	<a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>

	<hr>
	<!-- Shipping Address -->
	<div class="panel panel-default aa-checkout-billaddress">
		<div class="panel-heading">
			<hr>
			<h4 class="panel-title">
				<a data-toggle="collapse" data-parent="#accordion"
					href="#collapseFour"> Shipping details </a>
			</h4>
		</div>
		<form:form modelAttribute="shipment" accept-charset="utf-8"
			class="form">

			<div class="row">
				<div class="col-md-6">

					<form:input path="name" pattern="[a-zA-Z]{3,30}" required="true"
						class="form-control input-lg" placeholder="Name" />

					<br />
					<form:input path="lastname" pattern="[a-zA-Z]{3,30}"
						required="true" class="form-control input-lg"
						placeholder="enter your lastname" />
					<br />
					<form:input path="email" pattern="[a-zA-Z]{3,30}" required="true"
						class="form-control input-lg" placeholder="enter your email" />
					<br />
					<form:input path="mobilenumber" pattern="[9|7|8][0-9]{9}"
						required="true" class="form-control input-lg"
						placeholder="enter your Mobile Number" />
					<br />

					<form:input path="address" required="true"
						class="form-control input-lg" placeholder="enter your Address" />
					<br />
					<form:input path="city" id="city" required="true"
						class="form-control input-lg" placeholder="enter your city" />
					<br />
					<form:input path="state" id="pincode" required="true"
						class="form-control input-lg" placeholder="enter your state" />
					<br />
					<form:input path="district" id="pincode" required="true"
						class="form-control input-lg" placeholder="enter your district" />
					<br />
					<form:input path="pincode" id="pincode" required="true"
						class="form-control input-lg" placeholder="enter the Pincode" />
					<br />
					<button class="btn btn-lg btn-primary btn-block signup-btn"
						name="_eventId_submit" type="submit" id="btnSubmit" value="submit">Register</button>
				</div>
			</div>
		</form:form>
	</div>

</body>
</html>

<%@ include file="footer.jsp"%>