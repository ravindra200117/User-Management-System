<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.um.model.User" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<title>USER MANAGEMENT SYSTEM</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand">User Management System</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<%=request.getContextPath() %>/list">Users</a>
        </li>
      </ul>
     </div>
   </div>
    </nav>
    <c:if test="${list==null}">
    	<form action="insert" method="post">
    </c:if>
    <c:if test="${list!=null}">
    	<form action="update" method="post">
    </c:if>
    
    <h2 align="center">
    <c:if test="${list==null}">
    ADD USER
    </c:if>
    <c:if test="${list!=null}">
    EDIT USER
    </c:if>
    </h2>
    
        
        <center>
        <div class="mb-3" container>
          <input type="hidden" class="form-control" value = "${list.id}" id="exampleFormControlInput1" placeholder="Enter your id" name = "id" style ="width:300px"/>
         </div>
         <div class="mb-3" container>
          <label for="exampleFormControlInput1" class="form-label">Name:</label>
          <input type="text" class="form-control" value = "${list.name}" id="exampleFormControlInput1" placeholder="Enter your name" name = "name" style ="width:300px"/>
         </div>
         <div class="mb-3" container>
          <label for="exampleFormControlInput1" class="form-label">Email:</label>
          <input type="email" class="form-control" value = "${list.email}" id="exampleFormControlInput2" placeholder="Enter your email" name = "email" style ="width:300px"/>
         </div>
         <div class="mb-3" container>
          <label for="exampleFormControlInput1" class="form-label">City:</label>
          <input type="text" class="form-control" value = "${list.city}" id="exampleFormControlInput3" placeholder="Enter your city" name = "city" style ="width:300px"/>
         </div>
         <div class="mb-3" container>
          <input type="submit" value ="Save" class="btn btn-success" style ="width:150px"/>
         </div>
         
        </center>
        </form>
        
</body>
</html>