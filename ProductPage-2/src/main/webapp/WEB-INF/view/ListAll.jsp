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
</head>
<body>
<div align="center">


${products}

	<h2>List All Products</h2>
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Price</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="product" items="${products}">
				
				<tr>
					<td>${product.p_id}</td>
					<td>${product.p_name}</td>
					<td>${product.p_price}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	

</div>
</body>
</html>