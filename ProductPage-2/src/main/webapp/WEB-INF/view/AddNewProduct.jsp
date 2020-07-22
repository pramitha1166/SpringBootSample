<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        
  <%
  
  if(session.getAttribute("name")==null) {
	  response.sendRedirect("/");
  }
  
  %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div align="center">
	<h2>Add New Product</h2>
	
	
	<form action="product" method="post">
		Enter Product ID: <input type="text" name="p_id"><br>
		Enter Product Name: <input type="text" name="p_name"><br>
		Enter Product Price: <input type="text" name="p_price"><br>
		<input type="submit">
	</form>
	
</div>



</body>
</html>