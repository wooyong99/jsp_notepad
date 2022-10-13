<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 All 삭제</title>
</head>
<body>
	<%
		/* 장바구니의 모든 상품을 삭제하기 위해서 세션 아이디값을 get */
		String id = request.getParameter("cartId");	
		if(id==null || id.trim().equals("")){
			response.sendRedirect("cart.jsp");
			return ;
		}
		session.invalidate();
		response.sendRedirect("cart.jsp");
	%>

</body>
</html>