<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spr" uri="http://www.springframework.org/tags/form" %>
	<!-- - --<h1>Welcome to Cdac Bank</h1>
	<a href="pre_createAcc.htm">Create Account</a><br>
	<a href="pre_login.htm">sign in</a>-->

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Cdac Bank</title>
  <meta charset="utf-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<!-- jQuery and JS bundle w/ Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <meta charset="ISO-8859-1">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<style type="text/css">
.an a{
	display: block;
             color: white;
             text-align: center;
             text-decoration: none;
             outline: none;
}</style>
</head>
<body style="background-image:url(atm.jpg); background-size:cover;background-repeat:no-repeat;background-position:center;height:100vh;">

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="#"><h1>Cdac Bank</h1></a>

  <!-- Links -->
  <ul class="navbar-nav" style="display: flex;content:">
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
        <a class="dropdown-item" href="pre_login.htm">Admin</a>
        
      </div>
    </li>
    <li>
      
    	<a class="nav-link" href="Logout.htm">Log out</a>
    </li>
  </ul>
</nav>
<br>
  




	
	<div class="container-fluid d-flex justify-content-center "style="height: 100vh ;
	background: linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)),url(img.jpg);
 background-size:cover;background-position:center; background-repeat:no-repeat">
	<spr:form action="accDetails.htm" class="was-validated w-100 mt-5" method="post" commandName="accHolder" >
		<table class=" table table-striped ">
		
			<thead>
				<tr  class="text-center text-light">
					<th colspan = "4"  ><h3>Create Account</h3></th>
				</tr>
			</thead>
			<tbody class="text-light">
				<tr>
     				
							<td><h5>Account Holder Name</h5></td>
							<td class="form-group"><spr:input type="text" class="form-control is-valid" minlength="4" path="accHolderName" id="validationServer01" value="" placeholder="Enter name" required="true"/>						
	      						<div class="invalid-feedback">Please fill out this field.</div>				
      						</td>
      						
							<td><h5>Email Id</h5></td>
							<td class="form-group"><spr:input type="email" class="form-control is-valid" minlength="10" path="emailId" id="validationServer02" placeholder="Enter Email" required="true"/>						
	      						<div class="invalid-feedback">Enter gmail Id only.</div>				
      						</td>
								
				</tr>
				
				
				<tr>
							<td><h5>Father Name</h5></td>
		
							<td class="form-group"><spr:input type="text" class="form-control is-valid" minlength="3" path="accFatherN" id="validationServer03" placeholder="Enter Father Name" required="true"/>						
	      						<div class="invalid-feedback">Enter Father Name.</div>				
      						</td>
		
		
							<td><h5>Date</h5></td>
							<td class="form-group"><spr:input type="date" class="form-control is-valid"  path="accDate" id="validationServer03" placeholder="Enter DOB" required="true"/>						
	      						<div class="invalid-feedback">Enter DOB</div>				
      						</td>
				</tr>
				
				
				<tr>
							 <td class="form-group">
                                                        <label for="gender1"><h5>Gender</h5></label></td>												
							<td><select id ="geneder1" name="gender" class="form-control is-valid" path="gender">
														  <option value=""></option>
                                                          <option value="Male">Male</option>
                                                          <option value="Female">Female</option>
                                                          <div class="invalid-feedback">Enter DOB</div>	
                                                        </select>
                                                        
                           </td>
							
							
							<td><h5>City</h5></td>
		
							<td class="form-group"><spr:input type="text" class="form-control is-valid" minlength="3" path="city" id="validationServer03" placeholder="Enter City" required="true"/>						
	      						<div class="invalid-feedback">Enter City.</div>				
      						</td>
				</tr>
				
				
				
				<tr>
						     <td><h5>Mobile Number</h5></td>
							 <td class="form-group"><spr:input type="number" class="form-control is-valid" path="mobileNo" minlength="10" id="validationServer04" placeholder="Enter mobile number" required="true"/>						
	      						<div class="invalid-feedback">Enter 10 digit mobile number</div>				
      						</td>
							<td><h5>Pin Code</h5></td>
							<td class="form-group"><spr:input type="text" class="form-control is-valid" path="pinCode" minlength="6" id="validationServer03" placeholder="Enter pinCode" required="true"/>						
	      						<div class="invalid-feedback">Enter 6 digit pinCode</div>				
      						</td>	
				</tr>
				
				<tr>
					<td>
                                                        <label for="accType"><h5>Account Type</h5></label></td>
                                                        <td><select id ="accType" name="accType" class="form-control" path="accType">
                                                          <option value="None">None</option>
                                                          <option value="Saving">Saving</option>
                                                          <option value="Current">Current</option>
                                                          
                                                        </select>
                           </td>
				</tr>
				
				
			</tbody>
		</table>
		<div class="d-flex justify-content-center">
		
				<tr>
					
					<td><input type="submit"  class="btn btn-dark p-auto btn-block " value="Register" style="font-size:3vh;">
</td>
				</tr>
				
				
		</div>
		
		<div class="d-flex row" style="margin-top: 20px; color: white; font-size: 20px">
			<div class="col d-flex justify-content-end align-items-end" style="margin-left: 5rem">Already Have an Account</div>
			<div class="col"><a href="uLogin.htm" style="font-size: 26px; color:white">Login</a></div>
		</div>
	</spr:form>
	</div>
</body>
</html>