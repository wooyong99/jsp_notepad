<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="id" value="${param.id }"/>
	<c:set var="pw" value="${param.pw }"/>
	
	<h1>Parameter 값 출력결과</h1>
	<p>아이디 : <c:out value="${param.id }"/></p>
	<p>비밀번호 : <c:out value="${pw }"/></p>
	<hr/>
	<h1>c:set태그 값 출력결과</h1>
	<p>session 값 : <c:out value="${sessionScope.session_val }"/>
	<p>application 값 : <c:out value="${applicationScope.application_val }"/>
	
</body>
</html>