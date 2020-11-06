<%@ page import="com.atm_bank.dto.transaction" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%if(session.getAttribute("accHolder")!=null){ %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transaction Details</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
    .an a{
	display: block;
             color: white;
             text-align: center;
             text-decoration: none;
             outline: none;
}
    
		table {
		  font-family: 'Montserrat';
		  border-collapse: collapse;
		  width: 100%;
		  margin-top:15px;
		}
		
		td, th {
		  border: 1px solid black;
		  text-align: left;
		  padding: 8px;
		}
		
		tr:nth-child(even) {
		  background-color: white;
		}
		th{
			color: black;
			font-weight: 600 !important;
			font-size: 19px !important;
		}
		.cart-head{
			
			
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
	<table align="center" >
	 <tr>
			    
   <th>Amount</th>

     <th>Transaction Date</th> 
      <th>Transaction Time</th> 
       <th>Status</th> 
       <th>Sender</th>  
        
			  </tr>
			  
		<% 
		
		List<transaction> tlist = (List<transaction>)request.getAttribute("miniStatement");
		for(transaction tr : tlist){
			
		%>
		<tr>
			
		
			<td>
				<%=tr.getAmount()%>
			</td>
			<td>
				<%=tr.gettDate()%>
			</td>
			<td>
				<%=tr.gettTime()%>
			</td>
			<td>
				<%=tr.getT_status()%>
			</td>
			<td>
				<%=tr.gettTo()%>
			</td>
			
			
			
		</tr>
		<% } %>
		
			
	</table>
	<div style="margin-left:auto;margin-right:auto;margin-left:630px;margin-top:800;"><a href="accTransaction.jsp" class="btn btn-primary btn-lg active" role="button" style="margin:auto;background-color:black;border:none;width:150px; color:white" aria-pressed="true">Back</a>
	</div>
</div>	
</body>
</html>
<%}else{
	response.sendRedirect("index1.htm");
} %>