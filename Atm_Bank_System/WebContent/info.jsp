<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


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
                    <div class="col-3 col-md-3 an" ><h3><a href="Logout.htm" ></a></h3></div>
                </div>
            </div>
        </div>
	<table align="center" >
		<tr>
			<td style="color:black;font-size:45px;font-family: sans-serif;  ">!!!!!!!!!!<%=request.getAttribute("msg_Email")%>!!!!!!!!!!!</td>
		</tr>
		<tr>
			<!------<td> <a href="pre_login.htm" >Log In</a> </td>-->
					</tr>
	</table>
	<div style="margin-left:auto;margin-right:auto;margin-left:630px;margin-top:800;"><a href="pre_login.htm" class="btn btn-primary btn-lg active" role="button" style="margin:auto;background-color:black;border:none;width:150px; color:white" aria-pressed="true">Login</a>
	</div>
	
	</div>
</body>
</html>
