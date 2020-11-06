<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%if(session.getAttribute("accHolder")!=null){ %>
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
			<div style="color: red;font-size:35px;"><%=(request.getAttribute("msg") != null) ? (request.getAttribute("msg")) : ""  %></div>
	</div>
	<div class="row justify-content-center  m-3" style="height:20rem ;">
	<div class="col-6" style=" display:flex;justify-content: center;border: 2px solid grey; border-radius:1.2rem;align-items: center;">
	<div class="row justify-content-center align-items-center p-4" style="box-shadow: 3px 3px 12px rgba(0,0,0,0.8);border-radius: 5px;">
			<div class="col-12" style="display:flex;justify-content: center;">
			
			 
			<spr:form action="changePin1.htm"  method="post" commandName="changeP">
			<div class="form-row">
			<div class="form-group col-md-12">
      		<label for="depositeAmount"><h4> Enter Pin:</h4></label>
      		<spr:input class="form-control" id="depositeAmount" path="pinC" />
    		</div>
			</div>
			
			<div class="form-row">
			<div class="form-group col-md-12">
      		<label for="transferAmount"><h4> Confirm Pin:</h4></label>
      		<spr:input class="form-control" id="transferAmount" path="confirmPin" />
    		</div>
			</div>
			
			<button type="submit" class="btn btn-dark mb-2">Change Pin</button>
			</spr:form>
			</div>
	</div>
	</div>
	</div>
	
	</div>

	<!-----<spr:form action="changePin1.htm"  method="post" commandName="changeP">
	
	<table align="center" >
		
	
		<tr>
			<td>
				 Enter Pin:
			</td>
			<td>
				<spr:input path="pinC"/>
			</td>
		</tr>
		
		<tr>
			<td>
				 Confirm Pin:
			</td>
			<td>
				<spr:input path="confirmPin"/>
			</td>
		</tr>
		
		<tr>
			<td>
			<input type="submit"  value="Change Pin" >
			</td>
		</tr>
		</table>
		
	
	</spr:form>--->
	
		

</body>
</html>
<%}else{
	response.sendRedirect("index1.htm");
} %>