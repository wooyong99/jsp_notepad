<%@page import="com.exam_dao.ProductRepository"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.exam_dto.Product"%>
<!-- 해당 페이지에서 error가 발생할 시 , errorPage를 설정해주기 위해서  errorPage="exceptionNoProductId.jsp" 코드 추가 -->
<%@ page errorPage="exceptionNoProductId.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- CDN 방식 사용 x --> 
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<meta charset="UTF-8">
<title>Product Detail</title>
<style>
	.jumbotron, body>.container{
		padding-top:40px;
		padding-bottom:40px;
	}
	.container>.row>.col-md-5>img{
		width:100%;
	}
	.container>.row>.col-md-6{
		margin:auto;
	}
</style>
<!-- 장바구니 추가 확인을 요청하는 핸들러 함수 -->
<script>
	function addToCart() {
		if(confirm("해당 상품을 장바구니에 추가하시겠습니까 ?")){
			document.addForm.submit();
		}else{
			document.addForm.reset();
		}
		
	}
</script>
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
			<div class="col-md-5">
				<img src="./resources/images/<%=product.getFilename() %>" alt="<%=product.getFilename() %>"/>
			</div>
			<div class="col-md-6">
				<h3><%=product.getProduct_name() %></h3>
				<p><%=product.getProduct_desc() %></p>
				<p><b>상품 코드 : </b><span class="badge text-bg-danger"><%=product.getProduct_Id() %></span></p>
				<p><b>제조사 : </b><%=product.getManufact() %></p>
				<p><b>분류 : </b><%=product.getCategory() %></p>
				<p><b>수량 : </b><%=product.getProduct_stock() %></p>
				<h4><%= product.getProduct_price() %>원</h4>
				<p>
					<form name="addForm" action="./addCart.jsp?" method="get">
						<!-- 상품 주문을 클릭할 경우 javascript의 핸들러 함수(addToCart)가 호출되도록 설정 -->
						<a href="#" class="btn btn-dark" role="button" onclick="addToCart()">Order &raquo;</a>
						<input type="hidden" name="id" value="<%=product.getProduct_Id() %>"/>
						<!-- 장바구니 버튼을 클릭할 경우 cart.jsp로 이동하도록 설정 -->
						<a href="./cart.jsp" class="btn btn-dark" role="button">장바구니 &raquo;</a>
						<a href="./products.jsp" class="btn btn-dark" role="button">To Product List &raquo;</a>
					</form>
				</p>
			</div>
			
		</div>
	</div>
	<hr>	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>