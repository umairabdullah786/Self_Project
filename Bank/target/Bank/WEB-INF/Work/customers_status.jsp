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
<link rel="stylesheet" type="text/css" href="resources/css/customerstatus.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<div class="header">

		<!--  Navigation bar -->
		<%@include file="navBar_2.jsp"%>

		<div class="main">

			<div class="container">
				<div class="heading">
					<h2>Customers Status</h2>
				</div>
				<table id="example"
					class="table table-striped table-bordered nowrap"
					style="width: 100%">
					<thead>
						<tr>
							<th>Customer ID</th>
							<th>Customer SSN ID</th>
							<th>Status</th>
							<th>Message</th>
							<th>Last Update</th>
							<th>View Profile</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${customers }" var="c">
							<tr>
								<th scope="row">CutomerID${c.customerid}</th>
								<td>${c.customerSsdId}</td>
								<td>${c.status}</td>
								<td>${c.message}</td>								
								<td>${c.date}</td>
								<td><a href="viewSingleCustomer/${c.customerid }">View Details</td>					
							</tr>
						</c:forEach>
				</table>
			</div>

		</div>
		<div class="footer"></div>
	</div>
</body>
</html>