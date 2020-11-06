<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spr" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Cdac Bank</title>
  <meta charset="utf-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1.0">
 	<link rel="stylesheet" href="footer.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<!-- jQuery and JS bundle w/ Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>

  <meta charset="ISO-8859-1">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body style="background-image:url(at.jpg); background-size:cover;background-repeat:no-repeat;background-position:center;height:100vh;">

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="#"><h1>Cdac Bank</h1></a>

  <!-- Links -->
  <ul class="navbar-nav" style="display: flex;content:">
  	 <li class="nav-item " style="color: white;">
      <a class="nav-link" href="index.jsp">Home<a>
    </li>
    <li class="nav-item " style="color: white;">
      <a class="nav-link" href="pre_createAcc.htm">Create Account</a>
    </li>
    

    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Login
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="pre_login.htm">Account Holder</a>
        <!----<a class="dropdown-item" href="pre_login.htm">Admin</a>--->
        
      </div>
    </li>
    
  </ul>
</nav>
<br>
<div>
<div class="container-fluid d-flex justify-content-center "style="height: 80vh ;
	background: linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.0)),url(at.jpg);
 background-size:cover;background-position:center; background-repeat:no-repeat">
	
		<spr:form  action="transaction.htm" class="was-validated  w-50 mt-5" method="post" commandName="accHolder" >
		<table class=" table table-striped ">
			<tr>
		  <td>
		  	<div style="color: red;font-size:30px;"><%=(session.getAttribute("err") != null) ? (session.getAttribute("err")) : ""  %></div>
		  	
		  </td>
		</tr>
			<thead>
				<tr  class="text-center text-light">
					<th colspan = "2"  ><h3>Account Holder Login Page</h3></th>
				</tr>
			</thead>
			<tbody class="text-light">
				
				<tr>
					<td><h5> Account Card Number:</h5></td>
					<td class="form-group"><spr:input type="text" class="form-control is-invalid" minlength="4" path="accCardNumber" id="validationServer03" placeholder="Enter Card Number" required="true"/>						
	      						<div class="invalid-feedback">Enter 5 digit Card Number.</div>				
      						</td>
					
				</tr>
				<tr>
					<td><h5>Account Pin</h5></td>
					<td ><spr:input type="text" class="form-control is-invalid" minlength="3" path="accPin" id="validationServer04" placeholder="Enter Account Pin" required="true"/>						
	      						<div class="invalid-feedback">Enter 3 digit Pin.</div>				
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
		<tr>
			<div class="d-flex row" style="margin-top: 20px; color: black; font-size: 20px">
			<div class="col d-flex justify-content-end align-items-end" style="margin-left: 5rem">Don't Have an account</div>
			<div class="col"><a href="pre_createAcc.htm" style="font-size: 26px; color:black">Register</a></div>
		</div>
		</tr>
		<tr>
			<div class="col"><a href="forgotPin.html" style="font-size: 26px; color:black">Forgot Pin</a></div>
		</tr>
		
		</spr:form>
		</div>
<footer>
	<div class="main-content">
	  <div class="left box">
	     <h2>About us</h2>
		  <div class="content">
		     <p>Cdac Bank wins for 'Excellence in Operations at the International Data Corporation (IDC) Insights Awards 2019. Issues at The Asset Benchmark

Cdac Bank wins Top Sell-side Firm in Secondary Market and Top Arrangers - Investors Choice for Primary Research Awards, 2019.

 Cdac Bank wins in the Data Science/AI in BFSI category at the Cypher Analytics Awards 2019<p>
			 <div class="social">
			     <a href="#"><span class="fab fa-facebook-f"></span></a>
				 <a href="#"><span class="fab fa-twitter"></span></a>
				 <a href="#"><span class="fab fa-instagram"></span></a>
				 <a href="#"><span class="fab fa-youtube"></span></a>
			 </div>
		  </div>
	  </div>
	  <div class="center box">
	  <h2>Address</h2>
	     <div class="content">
		     <div class="place">
			  
			     <span class="fa fa-map-marker"></span>
				 <span class="text">Rupali Pangare,Navi Mumbai,India</span>
			 </div>
			  <div class="phone">
			     <span class="fas fa-phone-alt"></span>
				 <span class="text">+091 8108558360</span>
			 </div>
			  <div class="email">
			     <span class="fas fa-envelope"></span>
				 <span class="text">rupali2997pangare@gmail.com</span>
			 </div>
			  <div class="place">
			  
			     <span class="fa fa-map-marker"></span>
				 <span class="text">Prathmesh Kesare,Miraj,India</span>
			 </div>
			  <div class="phone">
			     <span class="fas fa-phone-alt"></span>
				 <span class="text">+091 7768976498</span>
			 </div>
			  <div class="email">
			     <span class="fas fa-envelope"></span>
				 <span class="text">Prathmesh Kesare@gmail.com</span>
			 </div>
		 </div>
	  </div>
	</div>
	</footer>
		
	

</body>
</html>

