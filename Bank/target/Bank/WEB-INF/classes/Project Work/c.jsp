<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="css/Dashboard.css">
</head>
<body>
<div class="header">
    <nav class="navbar navbar-expand-lg">
        <a class="navbar-brand" href="#"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link" href="#" id="navbarDropdownMenuLink0" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Customer Management
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">Create Customer</a>
          <a class="dropdown-item" href="#">Update Customer</a>
          <a class="dropdown-item" href="#">Delete Customer</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link" href="#" id="navbarDropdownMenuLink1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Account Management
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">Create Account</a>
          <a class="dropdown-item" href="#">Delete Account</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link" href="#" id="navbarDropdownMenuLink2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Status Details
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">View Customer status</a>
          <a class="dropdown-item" href="#">View Account status</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link" href="#" id="navbarDropdownMenuLink3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Account Operations
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">Customer Search</a>
          <a class="dropdown-item" href="#">Account Search</a>
          <a class="dropdown-item" href="#">Deposit Money</a>
          <a class="dropdown-item" href="#">Withdraw Money</a>
          <a class="dropdown-item" href="#">Transfer Money</a>
        </div>
      </li>
    </ul>
    <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
          <a class="nav-link" href="#" id="navbarDropdownMenuLink4" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Account
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="#">Profile</a>
            <a class="dropdown-item" href="#">Logout</a>
          </div>
        </li>
    </ul>
  </div>
</nav>
<div class="main">
  <div class="jumbotron">
    <div class="heading"><h1>Create Customer Screen</h1></div>
  <form action="#" method="post">
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">Customer SSN Id</label>
    <div class="col-sm-5">
     <input type="text" class="form-control" name="customerssdid"required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">Customer Name</label>
    <div class="col-sm-5">
    <input type="text" class="form-control" name="customername"required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">Age</label>
    <div class="col-sm-5">
    <input type="text" class="form-control" name="age"required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">Address</label>
    <div class="col-sm-5">
    <input type="text" class="form-control" name="address"required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">State</label>
    <div class="col-sm-5">
        <select class="form-control" required>
            <option disabled selected value>Select State</option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
        </select>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">City</label>
    <div class="col-sm-5">
        <select class="form-control" required>
            <option disabled selected value>Select City</option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
        </select>
    </div>
  </div><br>
    <button type="submit" class="btn btn-dark">Submit</button>&nbsp;&nbsp;&nbsp;
    <button type="submit" class="btn btn-dark">Reset</button>
  </form>
  </div>
</div>
<div class="footer"></div>
</div>
</body>
</html>