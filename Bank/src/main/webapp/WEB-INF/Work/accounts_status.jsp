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
<link rel="stylesheet" type="text/css"
	href="resources/css/accountstatus.css">
</head>
<body>
	<div class="header">

		<!--  Navigation bar -->
		<%@include file="navBar_2.jsp"%>

		<div class="main">
			<div class="container">
				<div class="heading">
					<h2>Account Status</h2>
				</div>
				<table id="example"
					class="table table-striped table-bordered nowrap"
					style="width: 100%">
					<thead>
						<tr>
							<th>Customer ID</th>
							<th>Account ID</th>
							<th>Account Type</th>
							<th>Account Status</th>
							<th>Message</th>
							<th>Last Update</th>
							<th>Operations</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${accounts }" var="a">
							<tr>
								<th scope="row">CutomerID${a.customerid}</th>
								<td>${a.accountid}</td>
								<td>${a.accounttype}</td>
								<td>${a.status}</td>								
								<td>${a.message}</td>
								<td>${a.date}</td>
								<td><a href="accounts_status">Refresh</td>					
							</tr>
						</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
</html>