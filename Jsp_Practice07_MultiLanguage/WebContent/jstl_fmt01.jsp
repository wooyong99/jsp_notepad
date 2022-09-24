<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!-- fmt 태그 라이브러리를 사용하기 위하여 페이지 지시자 사용 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl fmt 태그 이용하여 다국어 처리</title>
</head>
<body>
	<fmt:setLocale value="en_US"/>
	<h1>fmt:setBundle 태그 사용 - setLocale = en_US 설정</h1>
	<fmt:setBundle basename="com.bundle.myBundle" var="resourceBundle"/>
	<p> title : <fmt:message key="title" bundle="${resourceBundle }"></fmt:message></p>
	<p> username : <fmt:message key="username" bundle="${resourceBundle }"/></p>
	<p> password : <fmt:message key="password" bundle="${resourceBundle }"/></p>
	<hr>
	
	<fmt:setLocale value="ko_KR"/>
	<h1>fmt:bundle 태그 사용 - setLocale = ko_KR 설정</h1>
	<fmt:bundle basename="com.bundle.myBundle">
	<p> title : <fmt:message key="title"/></p>
	<p> username : <fmt:message key="username"/></p>
	<p> password : <fmt:message key="password"/></p>
	</fmt:bundle>
</body>
</html>