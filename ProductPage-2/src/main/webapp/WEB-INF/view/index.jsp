<jsp:include page="include/header.jsp" />  
<nav class="nav-bar nav">
	<ul>
		<li class="nav-link text-left"><a href="AddNewProductPage">Add New Product</a></li>
		<li><a href="products">List All Products</a></li>
		<li><a href="<% session.invalidate(); %>">Log Out</a></li>
	</ul>
</nav>

</body>
</html>