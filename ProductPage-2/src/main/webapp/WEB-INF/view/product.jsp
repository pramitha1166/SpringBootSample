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

${product.p_id}
${product.p_name}
${product.p_price}

</body>
</html>