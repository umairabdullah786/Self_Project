<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Show All Customer Details</title>
<%@include file="all_js_css.jsp"%>
<link rel="stylesheet" type="text/css" href="resources/css/delcust.css">
</head>
<body>
	<div class="container mt-3">
		<div class="main">

			<div class="container text-center">
					<h2>Customer Status</h2>
					<br/>
				</div>
				<table id="example"
					class="table table-striped table-bordered nowrap"
					style="width: 100%">
					<thead>
						<tr>
							<th>Customer Id</th>
							<th>SSN Id</th>
							<th>Customer Name</th>
							<th>Age</th>
							<th>Address</th>
							<th>City</th>
							<th>State</th>
							<th>Date</th>
							<th>Status</th>
						</tr>
					</thead>
					<tbody>
							<tr>
								<th scope="row">CutomerID${customer.customerid}</th>
								<td>${customer.customerSsdId}</td>
								<td>${customer.name}</td>
								<td>${customer.age}</td>
								<td>${customer.address}</td>
								<td>${customer.city}</td>
								<td>${customer.state}</td>
								<td>${customer.date}</td>
								<td>${customer.status}</td>
							</tr>
				</table>
			</div>
			<div class="container text-center">
						<a href="${pageContext.request.contextPath }/customers_status"
							class="btn btn-dark btn-lg">Back</a>
					</div>
		</div>
		<div class="footer"></div>
	</div>
</body>
</html>