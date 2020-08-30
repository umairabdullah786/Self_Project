<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Create Account</title>
<%@include file="all_js_css.jsp"%>
<link rel="stylesheet" type="text/css"
	href="resources/css/createaccount.css">
</head>
<body>
	<div class="header">

		<!--  Navigation bar -->
		<%@include file="navBar_2.jsp"%>

		<div class="main">
			<div class="container">
				<div class="heading">
					<h2>Create Account</h2>
				</div>
				<form action="Account-CreateHandle" method="post">

					<div class="form-group row">
						<label class="col-sm-2 col-form-label">Customer ID</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" name="customerid"
								required>
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
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">Deposit Amount</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" name="balance" required>
						</div>
					</div>
					<button type="submit" class="btn btn-dark btn-lg">Submit</button>
					&nbsp;&nbsp;&nbsp;
				</form>
			</div>
		</div>
		<div class="footer"></div>
	</div>
</body>
</html>