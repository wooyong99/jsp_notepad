<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인증 처리 페이지(Security)</title>
</head>
<body>
	<p><%=request.getRemoteUser() %></p>
	<p><%=request.getAuthType() %></p>
	<h3>인증 성공하였습니다.</h3>
</body>
</html>