<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본 유효성 검사 -2 결과</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	%>
	<h1> 로그인 성공 !</h1>
	<p>이름 : <%=name %></p>
	<p>ID : <%=id %></p>
	<p>PW : <%=pw %></p>
</body>
</html>