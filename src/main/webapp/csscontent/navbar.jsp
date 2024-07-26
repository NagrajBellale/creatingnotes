<nav class="navbar navbar-expand-lg navbar-dark bg-custom nav-custom" >
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Notes</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="btn btn-custom" href="#" role="button" >Home</a>
        </li>
        <li class="nav-item">
           <a class="btn btn-custom" href="#" role="button">Add Notes</a>
        </li>
        <li class="nav-item">
           <a class="btn btn-custom" href="#" role="button">Show Notes</a>
        </li>
      </ul>
      <%@ page import="com.user.UserDetails" %>
      
      <%
      UserDetails user=(UserDetails)session.getAttribute("userD");
      
      if(user!=null){
      %>
    	   <form class="d-flex">
        <a class="btn btn-custom" data-toggle="modal" data-target="#exampleModal href="login.jsp" role="button" type="submit"><%= user.getName() %></a>
        <a class="btn btn-custom" href="register.jsp" role="button">Logout</a>
      </form>
    	  <%
      }
      
      else {
    	  %>
    	  <form class="d-flex">
        <a class="btn btn-custom" href="login.jsp" role="button">Login</a>
        <a class="btn btn-custom" href="register.jsp" role="button">Register</a>
      </form>
    	  
    	  
    	  
    	  <%}
      
      %>
    </div>
    

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
  </div>
</nav>