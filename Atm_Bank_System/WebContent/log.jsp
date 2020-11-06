<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<!-- jQuery and JS bundle w/ Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

</head>
<body>

<div class="container-fluid p-0" style="background: linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5))">
	
	<nav class="navbar navbar-expand-lg navbar-light  bg-dark ">
  <a class="navbar-brand text-light col-7" href="#">Gym Management</a>
  	
  <div class="collapse navbar-collapse col-5" id="navbarNav">
	    <ul class="navbar-nav ml-auto">
	      <li class="nav-item active ">
	        <h5><a class="nav-link text-light" href="index.jsp">Home <span class="sr-only">(current)</span></a></h5>
	      </li>
	      <li class="nav-item">
	       <div class="dropdown">
			  <button class="btn btn-secondary dropdown-toggle"  type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    Login
			  </button>
			  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
			    <a class="dropdown-item" href="">User</a>
			    <a class="dropdown-item" href="#">Admin</a>
			  </div>
			</div>
	      </li>      
	    </ul>
  </div>
</nav>

<div class="container-fluid d-flex justify-content-center "style="height: 100vh ;
	background: linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)),url(img.jpg);
 background-size:cover;background-position:center; background-repeat:no-repeat">
	
	<spr:form action="transaction.htm" class="was-validated  w-50 mt-5" method="post" commandName="accHolder" >
		<table class=" table table-striped ">
		
			<thead>
				<tr  class="text-center text-light">
					<th colspan = "2"  ><h3>User Login Page</h3></th>
				</tr>
			</thead>
			<tbody class="text-light">
				
				<tr>
					<td><h5>Email</h5></td>
					<td class="form-group"><spr:input type="text" class="form-control is-valid" minlength="4" path="accCardNumber" id="validationServer03" placeholder="Enter email" required="true"/>						
	      						<div class="invalid-feedback">Enter Valid Email Id number.</div>				
      						</td>
					</td>
				</tr>
				<tr>
					<td><h5>Password</h5></td>
					<td class="form-group"><spr:input type="text" class="form-control is-valid" minlength="3" path="accPin" id="validationServer04" placeholder="Enter Password" required="true"/>						
	      						<div class="invalid-feedback">Enter Minimum 5 digit password.</div>				
      						</td>
				</tr>
				
			</tbody>
		</table>
		<div class="d-flex justify-content-center">
		
				<tr>
					
					<td><input type="submit"  class="btn btn-dark p-auto btn-block " value="Login" style="font-size:3vh;">
					
</td>
				</tr>
				
				
				
				
		</div>
		<div><%=(session.getAttribute("err") != null) ? (session.getAttribute("err")) : ""  %></div>
		<div class="d-flex row" style="margin-top: 20px; color: white; font-size: 20px">
			<div class="col d-flex justify-content-end align-items-end" style="margin-left: 5rem">Don't Have an account</div>
			<div class="col"><a href="uRegister.htm" style="font-size: 26px; color:white">Register</a></div>
		</div>
	</spr:form>
	</div>
	
</table>
</body>
</html>