<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 태그 - url, import, redirect</title>
</head>
<body>
	<c:url var="makeurl" value="https://wooyong99.com/">
		<c:param name="name" value="wooyong"/>
		<c:param name="age" value="24"/>
		<c:param name="addr" value="seoul"/>
	</c:url>
	<h2>c:url 출력결과</h2>
	<p>makeurl 출력결과  :  <c:out value="${makeurl}"/></p>
	<a href="${makeurl }">이동하기</a>
	<hr/>
	
	<c:set var="id" value="정우용"/>
	<h2>c:redirect 출력결과</h2>
	<c:choose>
		<c:when test="${empty id }">
			<c:redirect url="/jstlpractice5.jsp">
				<c:param name="id" value="4"/>
			</c:redirect>
		</c:when>
		<c:otherwise>
			<p>id 값은 <c:out value="${id }"/>입니다.</p>
		</c:otherwise>
	</c:choose>
	
	<hr/>
	<h2>c:import 출력결과</h2>
	<!-- c:import 태그는 jsp:include 태그와 유사하지만, c:import 태그는 다른페이지의 내용을 변수에 저장할수 있다는 점이 다르다. -->
	<c:import url="/jstlpractice5.jsp"></c:import>
	
</body>
</html>