<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Update Customer Details</title>
<%@include file="all_js_css.jsp"%>
<link rel="stylesheet" type="text/css" href="resources/css/updatecust.css">
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


	<div class="container mt-3">
		<div class="main">
			<div class="container text-center">
				<h2>Update Customer Screen</h2>
				<br />
				<form
					action="${pageContext.request.contextPath}/Customer-CreateHandle"
					method="post">

					<input type="hidden" value="${customer.customerid }"
						name="customerid" />

					<div class="form-group row">
						<label for="customerid" class="col-sm-2 col-form-label">Customer
							ID</label>
						<div class="col-sm-3">
							<input type="text" class="form-control" id="customerid"
								name="customerid" value="${customer.customerid }" required
								disabled>
						</div>

						<label for="name" class="col-sm-2 col-form-label">Old
							Customer Name</label>
						<div class="col-sm-3">
							<input type="text" class="form-control" id="name" name="name"
								value="${customer.name }" disabled>
						</div>
					</div>
					<div class="form-group row">
						<label for="customerSsdId" class="col-sm-2 col-form-label">Customer
							SSN ID</label>
						<div class="col-sm-3">
							<input type="text" class="form-control" id="customerSsdId"
								name="customerSsdId" value="${customer.customerSsdId }"
								nrequired>
						</div>

						<label for="name" class="col-sm-2 col-form-label">New
							Customer Name</label>
						<div class="col-sm-3">
							<input type="text" class="form-control" id="name" name="name"
								required>
						</div>
					</div>
					<div class="form-group row">
						<label for="age" class="col-sm-2 col-form-label">Old Age</label>
						<div class="col-sm-3">
							<input type="text" class="form-control" id="age" name="age"
								value="${customer.age }" disabled>
						</div>

						<label for="address" class="col-sm-2 col-form-label">Old
							Address</label>
						<div class="col-sm-3">
							<input type="text" class="form-control" id="address"
								name="address" value="${customer.address }" disabled>
						</div>
					</div>
					<div class="form-group row">
						<label for="age" class="col-sm-2 col-form-label">New Age</label>
						<div class="col-sm-3">
							<input type="text" class="form-control" id="age" name="age"
								required>
						</div>

						<label for="address" class="col-sm-2 col-form-label">New
							Address</label>
						<div class="col-sm-3">
							<input type="text" class="form-control" id="address"
								name="address" required>
						</div>
					</div>
					<div class="form-group row">
						<label for="state" class="col-sm-2 col-form-label">Old State</label>
						<div class="col-sm-3">
							<input type="text" class="form-control" id="state" name="state"
								value="${customer.state }" disabled>
						</div>
						
						<label for="city" class="col-sm-2 col-form-label">Old City</label>
						<div class="col-sm-3">
							<input type="text" class="form-control" for="city" name="city"
								value="${customer.city }" disabled>
						</div>
						
					</div>	
			
			
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">New State</label>
				<div class="col-sm-3">
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
			
	
				<label class="col-sm-2 col-form-label">New City</label>
				<div class="col-sm-3">
					<select class="form-control" name="city" id="output" required>
					<option disabled selected value>Select City</option>
					
					</select>
				</div>
			</div>
			
				
					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/delete-customer"
							class="btn btn-dark btn-lg">Back</a>
						<button type="submit" class="btn btn-dark btn-lg">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>