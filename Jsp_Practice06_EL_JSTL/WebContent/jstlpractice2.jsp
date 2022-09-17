<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 라이브러리 set태그 - 2</title>
</head>
<body>
	<!-- 그리고 el태그 내장객체인 pageContext객체를 통해서 원하는 값을 변수화 할수 있다. -->
	<c:set var="contextPath" value="${pageContext.request.servletContext.contextPath }" />
		
	<!-- scope 속성은 디폴트 값이 pageScope 이므로, 다음 페이지로 값을 이전시키기 위해서는 session, application을 통해서 
	이전시킬수 있다. -->
	<c:set var="session_val" value="${'세션 값입니다.' }" scope="session"/>
	<c:set var="application_val" value="애플리케이션 값입니다." scope="application"/>

	<form action="loginCheck.jsp">
		아이디 : <input type="text" name="id"/><br/>
		비밀번호 : <input type="password" name="pw"/><br/>
		<input type="submit" value="login"/>
	</form>
	
	<a href="${contextPath }/section/member.jsp">회원가입</a>
</body>
</html>