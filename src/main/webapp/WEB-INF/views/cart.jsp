<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cart contents</title>
</head>
<body>
	<security:authorize access="hasRole('ROLE_USER')">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-10 col-md-offset-1">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Cart Product</th>
								<th>Quantity</th>
								<th>Total</th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${cartList}" var="cart">
								<tr>
									<td class="col-sm-8 col-md-6">
										<div class="media">
											<a class="thumbnail pull-left"> <img class="media-object"
												src="<c:url value="resources/pics/${cart.product.imagename}.jpeg"/>"
												style="width: 72px; height: 72px;">
											</a>
											<div class="media-body">
												<h4 class="media-heading" style="color: white">
													<a href="index"> ${cart.product.productname}</a>
												</h4>

											</div>
										</div>
									</td>
									<td class="col-sm-1 col-md-1" style="text-align: center"><input
										type="text" class="form-control" id="exampleInputEmail1"
										value="${cart.quantity}"></td>
									<td class="col-sm-1 col-md-1 text-center"><strong>${cart.product.productprice}</strong></td>
									<td class="col-sm-1 col-md-1 text-center"><strong>${cart.total}</strong></td>
									<td class="col-sm-1 col-md-1"><a
										href="<c:url value="/delete/cart/${cart.id}"/>">
											<button type="button" class="btn btn-danger">
												<span class="glyphicon glyphicon-remove"></span> Remove it
											</button>
									</a></td>
									 
								</tr>
							</c:forEach>
							<tr>

								</td>
								<td>
									<button type="button" class="btn btn-success">
										Checkout <span class="glyphicon glyphicon-play"></span>
									</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</security:authorize>
	<%@ include file="footer.jsp"%>
</body>
</html>