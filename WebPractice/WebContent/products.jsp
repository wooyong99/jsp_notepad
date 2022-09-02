<%@page import="com.exam_dao.ProductRepository"%>
<%@page import="com.exam_dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Product List</title>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!-- 상품 목록을 저장하는 ProductRepository를 bean으로 등록하기 위해서 usebean태그 사용함. -->
<jsp:useBean id="productDAO" class="com.exam_dao.ProductRepository" scope="session"></jsp:useBean>
<style>
	.jumbotron{
		padding-top:40px;
		padding-bottom:40px;
	}
	body>div.container{
		padding-top:25px;
		padding-bottom:25px;
	}
	body>hr{
		margin-top:0;
	}
</style>
</head>
<body>
	<!-- jsp include 액션 태그를 이용해서 menu.jsp파일을 포함시켰다. -->
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="jumbotron bg-secondary">
		<div class="container">
			<div class="text-center">
				<h1 class="display-3">Product List</h1>
			</div>
		</div>
	</div>
	<%
		// 상품 목록 가져오기 위한 코드.
		// bean으로 등록한 productDAO에 getAllProducts 메소드를 호출하여 저장된 상품 목록을 가져오는 코드이다.
		ArrayList<Product> product_list = (ArrayList<Product>)ProductRepository.getAllProducts();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
				//	bean으로 부터 가져온 상품 목록을 향상된 for문을 통해 한개씩 가져옴.
				for( Product product:product_list ){
			%>
			<div class="col-md-4">
				<!-- 가져온 상품의 필드값의 get메소드를 통해 이름, 설명, 가격 순으로 출력. -->
				<h3><%=product.getProduct_name() %></h3>
				<p><%=product.getProduct_desc() %></p>
				<p><%=product.getProduct_price() %>원</p>
			</div>
			<%} %>
		</div>
	</div>
	
	<hr/>
	<!-- jsp include 액션 태그를 이용해서 footer.jsp파일을 포함시켰다. -->
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>