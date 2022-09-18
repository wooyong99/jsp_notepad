<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 태그 라이브러리 - if / choose태그</title>
</head>
<body>
	<c:set var="name" value="정우용"></c:set>		
	<c:set var="id" value="wulovesk"></c:set>
	<c:set var="pw" value="12345"></c:set>
	<c:set var="height" value="188"></c:set>
	
	<h1>if 태그 출력결과</h1>
	
	<c:if test="${name == '정우용'}">
		<p> name값이 ${name }과 일치합니다.</p>
	</c:if>
	<!-- parameter로 넘어온 id 값이 empty가 아니라면 (즉, 값이 존재한다면) 출력 -->
	<c:if test="${!empty param.id }">
		<p>id값은 ${param.id }입니다.</p>
	</c:if>
	<c:if test="${height>175 }">
		<p>키는 ${height } 이므로 175이상입니다.</p>
	</c:if>
	
	<h1>choose 태그 출력결과</h1>
	
	<!-- choose 태그 null값을 위해 remove처리 -->
	<c:remove var="name"/>
	
	<table border="1">
		<tr>
			<td>name</td><td>id</td><td>password</td><td>height</td>
		</tr>
		<tr>
			<!-- name 값이 존재하지 않을때. -->
			<c:choose>
				<c:when test="${empty name }">
					<td>${"X" }</td><td>${id }</td><td>${pw }</td><td>${height }</td>
				</c:when>
				<c:otherwise>
					<td>${name }</td><td>${id }</td><td>${pw }</td><td>${height }</td>
				</c:otherwise>
			</c:choose>
		</tr>
		<tr>
			<td colspan="4" style="text-align:center;">연습 2</td>
		</tr>
		
		<!-- choose 태그 null값을 위해 remove 처리 -->
		<c:remove var="id"/>
		<tr>
			<c:choose>
				<c:when test="${empty name && empty id }">
					<td>${"X" }</td><td>${"X" }</td><td>${pw }</td><td>${height }</td>
				</c:when>
				<c:otherwise>
					<td>${name }</td><td>${id }</td><td>${pw }</td><td>${height }</td>
				</c:otherwise>
			</c:choose>
		</tr>
		
	</table>
</body>
</html>