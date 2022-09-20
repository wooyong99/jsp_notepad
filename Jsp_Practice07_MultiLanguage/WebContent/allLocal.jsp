<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모든 Locale 인자값 출력하기</title>
</head>
<body>
	<%
		for(Locale locale : Locale.getAvailableLocales()){
	%>
		<p><%=locale.getCountry()%> - <%=locale.getDisplayCountry()%></p>
	<%} %>
	<p> 총 Locale 수 : <%=Locale.getAvailableLocales().length %>
</body>
</html>