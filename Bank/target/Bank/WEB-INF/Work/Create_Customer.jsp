<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Create Customer</title>
<%@include file="all_js_css.jsp"%>
<link rel="stylesheet" type="text/css" href="resources/css/createcust.css">
</head>
<body>

	<script>
		function random() {

			var a = document.getElementById('input').value;
			if (a === "Rajasthan") {
				var array = [ "Kota", "Jaipur" ];
			} else if (a === "Uttar Pradesh") {
				var array = [ "Lucknow", "Kanpur", "Aligarh" ];
			} else if (a === "Madhya Pradesh") {
				var array = [ "Indore", "Bhopal" ];
			} else if (a === "Maharashtra") {
				var array = [ "Mumbai", "Nasik", "Pune" ];
			} else if (a === "Tamil Nadu") {
				var array = [ "Chennai", "Coimbatore" ];
			} else {
				var array = [];
			}
			var string = "";
			for (i = 0; i < array.length; i++) {
				string = string + "<option>" + array[i] + "</option>";
			}

			document.getElementById('output').innerHTML = string;
		}
	</script>

	<div class="header">

		<!--  Navigation bar -->
		<%@include file="navBar_2.jsp"%>
		
		<div class="main">

		<div class="heading">
			<h2>Create Customer Screen</h2>
		</div>
		<form action="Customer-CreateHandle" method="post">

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Customer SSN Id</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="customerSsdId"
						required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Customer Name</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="name" required>
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
					<select class="form-control" name="state" id="input"
						onchange="random()" required>
						<option disabled selected value>Select State</option>
						<option value="Tamil Nadu">Tamil Nadu</option>
						<option value="Uttar Pradesh">Uttar Pradesh</option>
						<option value="Rajasthan">Rajasthan</option>
						<option value="Madhya Pradesh">Madhya Pradesh</option>
						<option value="Maharashtra">Maharashtra</option>
					</select>
				</div>
			</div>
			<div class="form-group row">
						<label class="col-sm-2 col-form-label">City</label>
						<div class="col-sm-5">
							<select class="form-control" name="city" id="output" required>
							<option disabled selected value>Select City</option>
							
							</select>
						</div>
			</div><br>
				<button type="submit" class="btn btn-dark btn-lg">Submit</button>&nbsp;&nbsp;&nbsp;
				<button type="reset" class="btn btn-dark btn-lg">Reset</button>
		</form>

	</div>
	
	<div class="footer"></div>
	
	</div>

</body>
</html>