<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
  <%
  
  if(session.getAttribute("name")==null) {
	  response.sendRedirect("/");
  }
  
  %>
    
    
<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="static/css/boostrap.min.css">
<link rel="stylesheet" href="static/css/main.css">

</head>
<body>

<h1>Hello <c:out value="${name}" /> </h1>

<div role="navigation">
	<div class="navbar navbar-inverse">
		<a href="index.jsp" class="navbar-brand">codefxxx</a>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="#"></a>Home</li>
				<li><a href="#"></a>Contact</li>
				<li><a href="#"></a>About</li>
			</ul>
		</div>
	</div>
</div>
