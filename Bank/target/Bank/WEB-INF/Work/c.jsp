<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Dashboard</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="header">
	
		<!--  Navigation bar -->
		<%@include file="navBar_2.jsp"%>
		
		
		<div class="main">
			<div class="jumbotron">
				<div class="heading">
					<h1>Create Customer Screen</h1>
				</div>
				<form action="Customer-CreateHandle" method="post">
<!-- 					<div class="form-group row"> -->
<!-- 						<label class="col-sm-2 col-form-label">Customer Id</label> -->
<!-- 						<div class="col-sm-5"> -->
<!-- 							<input type="text" class="form-control" name="customerid" -->
<!-- 								required> -->
<!-- 						</div> -->
<!-- 					</div> -->
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">Customer Name</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" name="name"
								required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">Age</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" name="age" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">Address</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" name="address" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">State</label>
						<div class="col-sm-5">
							<select class="form-control" name="state" required>
							<option disabled selected value>Select State</option>
							<option value="Bihar">Bihar</option>
							<option value="Uttar Pradesh">Uttar Pradesh</option>
							<option value="Rajasthan">Rajasthan</option>
							<option value="New Delhi">New Delhi</option>
							<option value="West Bengal">West Bengal</option>
							<option value="Karnataka">Karnataka</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">City</label>
						<div class="col-sm-5">
							<select class="form-control" name="city" required>
							<option disabled selected value>Select City</option>
							<option value="Aligarh">Aligarh</option>
							<option value="Barabanki">Barabanki</option>
							<option value="Lucknow">Lucknow</option>
							<option value="Sitapur">Sitapur</option>
							<option value="Alahabad">Alahabad</option>
							<option value="Azamgargh">Azamgargh</option>
							<option value="Gonda">Gonda</option>
							<option value="Basti">Basti</option>
							<option value="Vanarasi">Vanarasi</option>
							<option value="Gorakhpur">Gorakhpur</option>	
							</select>
						</div>
					</div>
					<br>
					<button type="submit" class="btn btn-dark">Submit</button>
					&nbsp;&nbsp;&nbsp;
					<button type="submit" class="btn btn-dark">Reset</button>
				</form>
			</div>
		</div>
		<div class="footer"></div>
	</div>
</body>
</html>