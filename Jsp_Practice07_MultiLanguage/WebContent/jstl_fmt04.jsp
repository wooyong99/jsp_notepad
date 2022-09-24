<%@page import="java.util.TimeZone"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl fmt 태그 이용하여 다국어 처리 - (timezone)</title>
</head>
<body>
	<h1>jstl fmt 태그 다국어처리 - timezone</h1>
	<jsp:useBean id="now" class="java.util.Date"></jsp:useBean>
	
	<p> 한국 : <fmt:formatDate value="<%=now %>" type="both" dateStyle="full" timeStyle="full"/>
	
	<fmt:timeZone value="America/New_York">
	<p> 뉴욕 : <fmt:formatDate value="<%=now %>" type="both" dateStyle="full" timeStyle="full"/>
	</fmt:timeZone>
	
	<fmt:timeZone value="Europe/London">
	<p> 런던 : <fmt:formatDate value="<%=now %>" type="both" dateStyle="full" timeStyle="full"/>
	</fmt:timeZone>
	<hr>
	<h1>timezone 목록</h1>
	<% 
	String[] timezones = TimeZone.getAvailableIDs();
	%>
	<c:forEach var="timezone" items="<%=timezones %>" >
		<p>${timezone }</p>
	</c:forEach>
</body>
</html>