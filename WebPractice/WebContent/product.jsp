<%@page import="java.util.ArrayList"%>
<%@page import="com.exam_dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Product Detail</title>
<style>
	.jumbotron{
		padding-top:40px;
		padding-bottom:40px;
	}
</style>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<jsp:useBean id="product_repository" class="com.exam_dao.ProductRepository" scope="session"></jsp:useBean>
	<% 
		request.setCharacterEncoding("UTF-8");
		String rq_id=request.getParameter("id");
		// getProductById 메소드로 id값과 일치하는 product를 가져옴.
		Product product = product_repository.getProductById(rq_id); 
	%>
	<div class="jumbotron bg-secondary">
		<div class="container">
			<div class="text-center">
				<h1 class="display-3"><%=product.getProduct_name() %> Detail</h1>
			</div>
		</div>
	</div>
	<%=product.getProduct_Id() %><br>
	<%=product.getProduct_name() %><br>
	<%=product.getProduct_price() %><br>
	<%=product.getCondition() %><br>
	<%=product.getProduct_desc() %><br>
	<hr>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>