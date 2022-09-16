<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>El 내장객체</title>
</head>
<body>
	<form action="innerObjectCheck.jsp" method="get">
		아이디 : <input type="text" name="id"/><br/>
		pw : <input type="password" name="pw"/><br/>
		<input type="submit" value="enter"/>
	</form>
	<%
		application.setAttribute("application_name", "application 내장객체 값");
		session.setAttribute("session_name", "session 내장객체 값");
		request.setAttribute("request_name", "request 내장객체 값");
		pageContext.setAttribute("pagecontex_name", "pageContext 내장객체 값");
	
	%>
</body>
</html>