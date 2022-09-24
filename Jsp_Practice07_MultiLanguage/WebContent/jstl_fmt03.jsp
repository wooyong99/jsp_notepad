<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl fmt 태그 이용하여 다국어 처리 (날짜)</title>
</head>
<body>
	<jsp:useBean id="now" class="java.util.Date"/>
	<h1>jstl fmt 태그 다국어 처리 ( 날짜 )</h1>
	<p>date타입 - 기본값 : <fmt:formatDate value="<%=now %>"/></p>
	<p>time타입: <fmt:formatDate value="<%=now %>" type="time"/>
	<p>both타입: <fmt:formatDate value="<%=now %>" type="both"/>
	<p>dateStyle - full : <fmt:formatDate value="<%=now %>"  dateStyle="full"/></p>
	<p>dateStyle - short : <fmt:formatDate value="<%=now %>" dateStyle="short"/></p>
	<p>dateStyle - long : <fmt:formatDate value="<%=now %>" dateStyle="long"/></p>
	<p>dateStyle - medium (기본값)) : <fmt:formatDate value="<%=now %>" dateStyle="medium"/></p>
	<p>pattern ( yy-MM-dd HH:mm:ss) : <fmt:formatDate value="<%=now %>" pattern="yy-MM-dd HH:mm:ss"/>
	
</body>
</html>