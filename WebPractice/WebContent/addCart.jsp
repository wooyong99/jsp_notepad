<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<meta charset="UTF-8">
<title>상품 주문</title>
</head>
<style>
	.jumbotron{
		padding:40px 0;
	}
</style>
<body>
	<%	
		/* id 파라미터 값을 확인하여 올바르지 않을 경우 products.jsp로 이동 */
		String id=request.getParameter("id");
		if(id == null || id.trim().equals("")){
			response.sendRedirect("products.jsp");
			return;
		}
	%>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="jumbotron bg-secondary">
		<div class="container">
			<div class="text-center">
				<p class="display-3">Product Order</p>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>