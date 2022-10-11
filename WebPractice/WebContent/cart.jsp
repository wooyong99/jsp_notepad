<%@page import="com.exam_dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<meta charset="UTF-8">
<title>장바구니</title>
<style>
	.jumbotron{
		padding:40px 0;
	}
</style>
<script type="text/javascript">
	function error_alert(){
		alert("장바구니 목록이 없습니다.");
		return;
	}
</script>
<%
	ArrayList<Product> cartlist = new ArrayList<>();
	if(session.getAttribute("cartlist")==null){
	%>
		<script>error_alert();</script>
<%
		response.sendRedirect("products.jsp");
	}else{
		cartlist = (ArrayList<Product>)session.getAttribute("cartlist");
	}
%>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="jumbotron bg-secondary">
		<div class="container">
			<div class="text-center">
				<p class="display-3">장바구니</p>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left">
						<!-- 장바구니에서 상품을 삭제하는 버튼 -->
						<a href="#" class="btn btn-danger">삭제하기</a>
					</td>
					<td align="right">
						<!-- 장바구니에서 상품을 주문하는 버튼 -->
						<a href="#" class="btn btn-primary">주문하기</a>
					</td>	
				</tr>
			</table>
		</div>
		<div style="padding-top : 50px; bakcground-color:yellow;">
			<table class="table table-hover">
				<tr>
					<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				<%
					int sum = 0;
					/* session 내장객체에 담은 장바구니 리스트(cartlist)를 가져오는 코드 */
					/* 장바구니 리스트를 row별 출력 */
					for(Product product : cartlist){
						int total = (int)product.getProduct_stock() * product.getQuantity();
						sum+=total;
				%>
				<tr>
					<td><%=product.getProduct_Id()%> - <%=product.getProduct_name() %></td>
					<td><%=product.getProduct_price() %></td>
					<td><%=product.getQuantity() %></td>
					<td><%=total %></td>
					<td><a href="/removeCart.jsp?id=<%=product.getProduct_Id() %>" class="badge badge-danger">Delete</a></td>
				</tr>
				<%} %>
				<tr>
					<th></th>
					<th></th>
					<th>총액</th>
					<th><%= sum%></th>
					<th></th>
				</tr>
			</table>
			<a href="./products.jsp" class="btn btn-primary">&raquo;쇼핑계속하기</a>
		</div>
		<hr>
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>