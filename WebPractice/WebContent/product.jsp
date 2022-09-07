<%@page import="com.exam_dao.ProductRepository"%>
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
	body>div.container{
		padding-top:40px;
		padding-bottom:40px;
	}
</style>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<% ProductRepository productDAO = ProductRepository.getInstance(); %>
	<% 
		request.setCharacterEncoding("UTF-8");
		String rq_id=request.getParameter("id");
		// getProductById 메소드로 id값과 일치하는 product를 가져옴.
		Product product = productDAO.getProductById(rq_id); 
	%>
	<div class="jumbotron bg-secondary">
		<div class="container">
			<div class="text-center">
				<h1 class="display-3"><%=product.getProduct_name() %> Detail</h1>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=product.getProduct_name() %></h3>
				<p><%=product.getProduct_desc() %></p>
				<p><b>상품 코드 : </b><span class="badge text-bg-danger"><%=product.getProduct_Id() %></span></p>
				<p><b>제조사 : </b><%=product.getManufact() %></p>
				<p><b>분류 : </b><%=product.getCategory() %></p>
				<p><b>수량 : </b><%=product.getProduct_stock() %></p>
				<h4><%= product.getProduct_price() %>원</h4>
				<p><a href="#" class="btn btn-dark" role="button">Order &raquo;</a>
				<a href="./products.jsp" class="btn btn-dark" role="button">To Product List &raquo;</a></p>
			</div>
			
		</div>
	</div>
	<hr>	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>