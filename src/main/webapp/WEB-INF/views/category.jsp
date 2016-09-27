<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>categories</title>
</head>
<body background="giphy.gif">
	<table border="1">
		<th>ID</th>
		<th>NAME</th>
		<th>DESCRIPTION</th>
		<th>PRICE</th>
		<th>QUANTITY</th>
		<th>SIZE</th>
		<th>CATEGORY</th>
		<c:forEach items="${productList}" var="product">
			<tr>
				<td>${product.productid}</td>
				<td>${product.productname}</td>
				<td>${product.productquantity}</td>
				<td>${product.productdescription}</td>
				<td>${product.productprice}</td>
				<td>${product.productsize}</td>
				<td>${product.category}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>