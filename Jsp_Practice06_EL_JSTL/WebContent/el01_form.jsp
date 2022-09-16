<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setAttribute("scope", "scope_val");
%>
	<form action="el01.jsp" method="get">
		<input type="hidden" name="sub01" value="국어"/>
		<input type="hidden" name="sub02" value="수학"/>
		<input type="hidden" name="sub03" value="영어"/>
		<input type="hidden" name="sub04" value="과학"/>
	</form>
	<jsp:forward page="el01.jsp"></jsp:forward>
</body>
</html>