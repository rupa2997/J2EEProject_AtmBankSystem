<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spr" uri="http://www.springframework.org/tags/form" %>
 <%@ page import="com.atm_bank.dto.AccountHolder" %>
 <%if(session.getAttribute("accHolder")!=null){ %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="footer.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
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
             border:none;
}
.an .anc h4 a{
	display: block;
	padding:8px;
	border:2px solid #000;
	text-decoration: none;
	 text-align: center;
	 font-family: sans-serif;
	 font-size: 8px;
	 color: red;
	}
	
.an	.anc{
	border:2px solid #000;
}
.an .anc a {
	border:2px solid grey;
	 color: red;
	 
	}
</style>
</head>
<body>
	<div class="container-fluid">
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
		 <div class="col-8 col-md-6"> <h1>Welcome <%=((AccountHolder)session.getAttribute("accHolder")).getAccHolderName() %></h1></div>
	</div>
	<div class="row justify-content-center  m-1" style="height:25rem ;">
	<div class="col-6" style=" display:flex;justify-content: center;border: 2px solid grey; border-radius:1.2rem;align-items: center;">
	<div class="row justify-content-center align-items-center p-4" style="box-shadow: 3px 3px 12px rgba(0,0,0,0.8);border-radius: 5px;">
			<div class="col-12">
			
			 <div class="an-anc"><h4><a href="depositAmt.htm" >Deposite Amount</a></h4></div>
			<div class="an-anc"><h4><a href="withdrawAmt.htm" >Withdraw Amount</a></h4></div>
			<div class="an-anc"><h4><a href="checkBal.htm" >Check Balance</a></h4></div>
			<div class="an-anc"><h4><a href="miniState.htm" >Mini Statement</a></h4></div>
			<div class="an-anc"><h4><a href="transferAmt.htm" >Transfer Money</a></h4></div>
			<div class="an-anc"><h4><a href="changePin.htm" >Change Pin</a></h4></div>
			
			<a href="index.jsp" class="btn btn-primary btn-lg active" role="button" style="background-color:grey;border:none;width:150px; " aria-pressed="true">Exit</a>
			</div>
	</div>
	</div>
	</div>
	
	</div>
	<br>
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
<%}else{
	response.sendRedirect("index1.htm");
} %>