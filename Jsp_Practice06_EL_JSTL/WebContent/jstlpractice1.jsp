<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- core 태그 라이브러리를 사용하기 위한 선언부분 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 태그 라이브러리 set태그</title>
</head>
<body>
	<!-- JTSL 태그의 set 태그를 이용. 즉, 스크립트 안에 pageContext.setAttribute("name","정우용")과 동일 -->
	<c:set var="name" value="정우용"/>
	<c:set var="id" value="wooyong"/>
	<c:set var="pw" value="1234"/>
	<c:set var="age" value="${24 }"/>
	<!-- 또한 set태그 이용시 scope 속성의 값을 설정해주지 않으면 page값이 디폴트 값이기 때문에
	pageScope 객체를 통해서 값을 get할수 있다. -->
	<h1>출력결과</h1>
	<p>${name }</p>
	<p>${pageScope.id }</p>
	<p>${pw }</p>
	<p>${pageScope.age }</p>
	
</body>
</html>