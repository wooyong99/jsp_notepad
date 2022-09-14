<!-- 해당 페이지가 errorPage라는 것을 명시 -->
<%@ page isErrorPage="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<meta charset="UTF-8">
<title>Product Id Error Page</title>
<style>
	.jumbotron, body>.container{
		padding-top:40px;
		padding-bottom:40px;
	}
</style>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="jumbotron bg-secondary">
		<div class="container">
			<div class="text-center">
				<h1 class="display-3">Error Page</h1>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<!-- 요청 URI를 보여주고, 오류 내용을 출력함. -->
			<h3>Request URI = <b><%=request.getRequestURL() %>?<%=request.getQueryString() %></b></h3><br/>
			<h4 class="alert alert-secondary">상품코드 <b><%=request.getParameter("id") %></b>은 없는 상품입니다.</h4>
			<!-- Home 또는 Product List로 이동할수 있는 버튼 생성 -->
			<p>
				<a role="button" href="welcome.jsp" class="btn btn-dark">Home &raquo;</a>
				<a role="button" href="products.jsp" class="btn btn-dark">To Product List &raquo;</a>
			</p>
		</div>
	</div>
	<hr/>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>