<!--  Demo/Created by Tariq -->

<nav class="navbar navbar-expand-lg">
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarTogglerDemo01" aria-controls="navbarNavDropdown"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
		<a class="navbar-brand" href="#"></a>
		<ul class="navbar-nav">
			<li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath }/">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item dropdown"><a class="nav-link" href="#"
				id="navbarDropdownMenuLink0" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> Customer Management
			</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="add-customer">Create Customer</a> <a
						class="dropdown-item" href="">Update Customer</a> <a
						class="dropdown-item" href="delete-customer">Delete Customer</a>
				</div></li>
			<li class="nav-item dropdown"><a class="nav-link" href="#"
				id="navbarDropdownMenuLink1" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> Account Management </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="#">Create Account</a> <a
						class="dropdown-item" href="#">Delete Account</a>
				</div></li>
			<li class="nav-item dropdown"><a class="nav-link" href="#"
				id="navbarDropdownMenuLink2" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> Status Details </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="#">View Customer status</a> <a
						class="dropdown-item" href="#">View Account status</a>
				</div></li>
			<li class="nav-item dropdown"><a class="nav-link" href="#"
				id="navbarDropdownMenuLink3" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> Account Operations </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="#">Customer Search</a> <a
						class="dropdown-item" href="#">Account Search</a> <a
						class="dropdown-item" href="#">Deposit Money</a> <a
						class="dropdown-item" href="#">Withdraw Money</a> <a
						class="dropdown-item" href="#">Transfer Money</a>
				</div></li>
		</ul>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item dropdown"><a class="nav-link" href="#"
				id="navbarDropdownMenuLink4" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> Account </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="#">Profile</a> <a
						class="dropdown-item" href="#">Logout</a>
				</div></li>
		</ul>
	</div>
</nav>