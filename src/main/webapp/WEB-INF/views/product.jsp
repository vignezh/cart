<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="header.jsp"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product page</title>
<!-- Font awesome -->
<link href="<c:url value='/resources/css/font-awesome.css'/>"
	rel="stylesheet">
<!-- Bootstrap -->
<link href="<c:url value='/resources/css/bootstrap.css'/>"
	rel="stylesheet">
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



</head>
<body background="giphy.gif">
<li><security:authorize access="hasRole('ROLE_ADMIN')">
	<div class="col-md-6">
		<div class="aa-myaccount-register">
			<h3>Product Data</h3>
			<form:form action="product" method="POST"
				enctype="multipart/form-data" commandName="product">
							
							Name: 
				<p>
					<input type="text" id="name" name="productname" required=true>
					<tr>
						<td colspan="2"><form:errors path="productname"
								cssStyle="color : orange;" /></td>
					</tr>

				</p>
				<hr>
						
							Quantity: 
				<p>
					<input type="text" id="name" name="productquantity" required="true">
					<tr>
						<td colspan="2"><form:errors path="productquantity"
								cssStyle="color : yellow;" /></td>
					</tr>

				</p>
				<hr>
						
							Size: 
				<p>
					<input type="text" id="name" name="productsize" required=true>
					<tr>
						<td colspan="2"><form:errors path="productsize"
								cssStyle="color : grey;" /></td>
					</tr>

				</p>
				<hr>
						
							Price: 
				<p>
					<input type="text" id="name" name="productprice" required=true>
					<tr>
						<td colspan="2"><form:errors path="productprice"
								cssStyle="color : pink;" /></td>
					</tr>

				</p>
				<hr>
							Description: 
				<p>

					<input type="text" id="name" name="productdescription" required=true>
					<tr>
						<td colspan="2"><form:errors path="productdescription"
								cssStyle="color : blue;" /></td>
					</tr>

				</p>
				<hr>
							Image:
							<p>
					<input type="file" id="name" name="image" required=true>
				</p>
				<hr>
							ImageName: 
					<p>
					<input type="text" id="name" name="imagename" required=true>
					<tr>
						<td colspan="2"><form:errors path="imagename"
								cssStyle="color : purple;" /></td>
					</tr>
				</p>
				<hr>
							Category:
				<form:select path="category" style="color:black">
					<form:option selected="--category--" value="category">Select a category</form:option>
					<form:option value="formals">Formals</form:option>
					<form:option value="casuals">Casuals</form:option>
					<form:option value="sports">Sports</form:option>
				</form:select>
				<hr>
				<td colspan="2" class="h">
				<input type="submit" name="action"
					value="Add" style="color: black" /> 
				<input type="submit" name="action" 
					value="Edit" style="color: black" /></td>
				<input type="submit" name="action"
					value="Search" style="color:black"/></td>
			</form:form>

			<input type="button" value="back" onclick="javascript:history.back()" />
		</div>
	</div>
	</security:authorize></li>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<c:url value='/resources/js/bootstrap.js'/>"></script>
</body>
</html>
<%@include file="footer.jsp"%>