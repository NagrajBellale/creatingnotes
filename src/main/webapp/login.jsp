<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
body{
 background-image: url("images/notes.jpeg");
  height: 500px;
  background-position: center; 
  background-repeat: no-repeat; 
  background-size: cover;
}
</style>

<%@include file="csscontent/cssfile.jsp" %>
</head>
<body>
<%@include file="csscontent/navbar.jsp" %>
<div class="container-fluid">
<div class="row">
<div class="col-md-4 offset-md-4 ">
<div class="card mt-5 ">
<div class="card-header text-center  bg-custom text-white">
<i class="fa-solid fa-user-plus "></i><h4>Login</h4>
</div>
<%
String invalid=(String)session.getAttribute("login-failed");

if(invalid!=null){
	%>
	<div class="alert alert-danger" role="alert"><%= invalid%></div>
	<%	
	session.removeAttribute("login-failed");
}

%>
<div class="card-body ">
<form action="loginServlet" method="post">
  <div class="mb-3 ">
    <label for="exampleInputEmail1 " class="form-label">Email</label>
    <input type="email" class="form-control bg-transparent" id="exampleInputEmail1" aria-describedby="emailHelp" name="uemail">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control bg-transparent" id="exampleInputPassword1" name="upassword">
  </div>
 <div class="d-grid gap-2">
  <button class="btn btn-secondary bg-custom" type="button">Submit</button>
  </div>
</form>
</div>
</div>
</div>
</div>
</div>

<%@include file="csscontent/cssfile.jsp" %>
</body>
</html>