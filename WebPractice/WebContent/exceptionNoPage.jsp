<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>No Page Error</title>
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
			<h3>Request URL : <b><%=request.getRequestURL() %></b></h3><br/>
			<h4 class="alert alert-secondary">요청 하신 <b><%=request.getServletPath() %></b> 페이지는 존재하지 않습니다.</h4>
			<p>
				<a href="welcome.jsp" role="button" class="btn btn-dark">Home &raquo;</a>
				<a href="products.jsp" role="button" class="btn btn-dark">To Product List &raquo;</a>
		</div>
	</div>
	<hr/>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>