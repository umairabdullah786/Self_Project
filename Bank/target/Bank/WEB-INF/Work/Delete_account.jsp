<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Delete Account</title>
<%@include file="all_js_css.jsp"%>
<link rel="stylesheet" type="text/css" href="resources/css/deleteaccount.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<div class="header">

		<!--  Navigation bar -->
		<%@include file="navBar_2.jsp"%>

		<div class="main">

			<div class="container">
				<div class="heading">
					<h2>Delete Account</h2>
				</div>
				<form action="Account-deleteHandle" method="post">

					<div class="form-group row">
						<label class="col-sm-2 col-form-label">Account ID</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" name="accountid" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">Account Type</label>
						<div class="col-sm-4">
							<select class="form-control" name="accounttype" required>
								<option disabled selected value>Select Type</option>
								<option>Savings Account</option>
								<option>Current Account</option>
							</select>
						</div>
					</div>
					<button type="submit" class="btn btn-dark btn-lg">Delete
						Account</button>
					&nbsp;&nbsp;&nbsp;
				</form>
			</div>


		</div>
		<div class="footer"></div>
		
	</div>
</body>
</html>