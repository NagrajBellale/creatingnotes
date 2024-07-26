<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
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
<i class="fa-solid fa-user-plus "></i><h4>Registration</h4>
</div>

<%
String regMsg=(String)session.getAttribute("reg-success");

if(regMsg!=null){
	%>
	<div class="alert alert-success" role="alert"><%= regMsg%> Login<a href="login.jsp">Click Here</a></div>
	<%	
	session.removeAttribute("reg-success");
}

%>

<%
String FailedMsg=(String)session.getAttribute("failed-msg");

if(FailedMsg!=null){
	%>
	<div class="alert alert-danger" role="alert"><%=FailedMsg %>
</div>
	<%	
	session.removeAttribute("FailedMsg");
}

%>
<div class="card-body ">
<form action="UserServlet" method="post">
    <div class="mb-3">
        <label for="name" class="form-label">Full Name</label>
        <input type="text" class="form-control" id="name" name="fname" required>
    </div>
    <div class="mb-3">
        <label for="email" class="form-label">Email</label>
        <input type="email" class="form-control" id="email" name="uemail" required>
    </div>
    <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" name="upassword" required>
    </div>
    <button class="btn btn-secondary" type="submit">Submit</button>
</form>
</div>
</div>
</div>
</div>
</div>

</body>
</html>