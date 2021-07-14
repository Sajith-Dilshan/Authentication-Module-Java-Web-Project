<%@page import="com.entites.User" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%
User user = (User)session.getAttribute("user-ob");

 if(user==null)
 {
	 session.setAttribute("login-msg","Please Login First...");
	 response.sendRedirect("home.jsp");
 }


%>





<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<link rel="stylesheet" href="css/style.css">




</head>
<body
	style="background-image: linear-gradient(to right top, #f0e5da, #fddeb1, #ffd987, #fad759, #ebd812); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">

	<!--  Navbar -->

	<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a>
				</li>

				<li class="nav-item"><a class="nav-link disabled"
					href="register.jsp">Register</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<!-- End Navbar -->


	<div class="contianer">

		<div class="row d-flex justify-content-center align-items-center mt-4">

			<div class="col-md-6">

				<div class="card">

					<%					
					User user1 = (User)session.getAttribute("user-ob");
					%>
					
					
					
					
					
					<% if(user!=null)
					{
						
						
					
					  
					
					%>




					<div class="card-body">

						<h1>Name:<%=user1.getName() %></h1>
						<h1>Email:<%=user1.getEmail()  %></h1>


						<div class="continer text-center">

							<a class="btn btn-primary btn-lg text-white" href="logoutServlet">Logout</a>

						</div>


					</div>
					
					<%} %>

				</div>


			</div>

		</div>


	</div>


</body>
</html>