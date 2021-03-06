<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.atm_bank.dto.AccountHolder" %>
<%if(request.getAttribute("accHolder")!=null){ %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
<style type="text/css">
.an a{
	display: block;
             color: white;
             text-align: center;
             text-decoration: none;
             outline: none;
}</style>
</head>
<body>

<div class="container-fluid">
<% AccountHolder ah = (AccountHolder)request.getAttribute("accHolder");
		
	%>
	<div class="row align-items-center sticky-top bg-dark "
            style="height: 4.8rem;border-bottom: 3px solid black;color:white">
            <div class="col-2" ><h1>Cdac Bank</h1>
	</div>
            <div class="col-1"></div>
            <div class="col-9  ">
                <div class="row justify-content-center " style="display: flex;justify-content: center;align-items: center;">
                    <div class="col-8 col-md-8 "> </div>
                    <div class="col-1 col-md-1 "></div>
                    <div class="col-3 col-md-3 an" ><h3><a href="Logout.htm" >Log Out</a></h3></div>
                </div>
            </div>
        </div>
	<div class="row align-items-center" style="display: flex;justify-content: center;">
		
	</div>
	<div class="row justify-content-center  m-3" style="height:27rem ;">
	<div class="col-5" style="padding:8px; display:flex;justify-content: center;border: 2px solid grey; border-radius:1.2rem;align-items: center;">
	<div class="row justify-content-center align-items-center p-4" style="box-shadow: 3px 3px 12px rgba(0,0,0,0.8);border-radius: 5px;">
			<div class="col-12" style="display:flex;justify-content: center;">
			
			 <table align="center">
	
	<tr>
		<td>
		<h3>Account Holder name:</h3>
		</td>
		<td>
		
		<h4>  <%= ah.getAccHolderName() %></h4>
		</td>
	</tr>
	<tr>
		<td>
		
		<h3>Card Number:</h3>
		</td>
		<td>
		<h4><%= ah.getAccCardNumber() %></h4>
		</td>
	</tr>
	<tr>
		<td>
		<h3>Account No: </h3>
		</td>
		<td>
		<h4><%= ah.getAccNo() %></h4>
		</td>
	</tr>
	<tr>
		<td>
		
		<h3>Acccount Pin:</h3>
		</td>
		<td>
		<h4><%= ah.getAccPin() %></h4>
		</td>
	</tr>
		
	<tr>
		<td>
		
		<h3>Father Name:</h3>
		</td>
		<td>
		<h4><%= ah.getAccFatherN() %></h4>
		</td>
	</tr>
	
	<tr>
		<td>
		
		<h3>Date Of Birth:</h3>
		</td>
		<td>
		<h4><%= ah.getAccDate()%></h4>
		</td>
	</tr>
	<tr>
		<td>
		
		<h3>Gender:</h3>
		</td>
		<td>
		<h4><%= ah.getGender() %></h4>
		</td>
	</tr>
	
	<tr>
		<td>
		
		<h3>City:</h3>
		</td>
		<td>
		<h4><%= ah.getCity() %></h4>
		</td>
	</tr>
	<tr>
		<td>
		
		<h3>Pin Code:</h3>
		</td>
		<td>
		<h4><%= ah.getPinCode() %></h4>
		</td>
	</tr>
	<tr>
	 <td>
	 	<a href="index.jsp" class="btn btn-primary btn-lg active" role="button" style="background-color:grey;border:none;width:150px; " aria-pressed="true">Home</a>
	 </td>
	
	 <td>
	 	<a href="pre_login.htm" class="btn btn-primary btn-lg active" role="button" style="background-color:grey;border:none;width:150px; " aria-pressed="true">Login</a>
	 </td>
	</tr>
	</table>
			
			</div>
	</div>
	</div>
	</div>
	
	</div>
</body>
</html>
<%}else{
	response.sendRedirect("index1.htm");
} %>
	