<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 태그 라이브러리 - foreach / forTokenst태그</title>
<%
	List<String> datalist1= new ArrayList<>();
	datalist1.add("박지성");
	datalist1.add("손흥민");
	datalist1.add("차범근");
	datalist1.add("황희찬");
	datalist1.add("안정환");
	List<String> datalist2= new ArrayList<>();
	datalist2.add("호날두");
	datalist2.add("메시");
	datalist2.add("음바페");
	datalist2.add("홀란드");
	datalist2.add("살라");
	
%>
<c:set var="list1" value="<%=datalist1 %>"/>
<c:set var="list2" value="<%=datalist2 %>"/>
</head>
<body>
	<h1>forEach 태그 출력결과</h1>
	
	<!-- items 객체를 2개를 출력하고 싶다면 varStatus의 index 속성을 활용하여 출력할수 있다. 
	index 속성은 0부터 시작하기 때문이다. -->
	<c:forEach var="i" items="${list1 }" varStatus="loop" >
		<p>${i}  -- ${list2[loop.index] }</p>
	</c:forEach>
	
	<%-- varStatus의 current 속성은 items 객체에서 꺼내온 값이며, ${var의 이름 }이라고 할 수 있다. --%>
	<c:forEach var="i" begin="1" end="3" varStatus="loop">
		<p>${i+1} -- ${loop.current }
	</c:forEach>
	
	<!-- forEach문과 if,else역할을 하는 choose태그 활용 -->
	<c:forEach var="i" items="${list1 }" varStatus="loop" >
		<c:choose>
			<c:when test="${i=='손흥민' }">
				<p>${i} 선수가 등장합니다 !</p>
 			</c:when>
 			<c:otherwise>
 				<p>등장하는 선수는 ${i}입니다.</p>
 			</c:otherwise>
		</c:choose>
	</c:forEach>
	<hr/>
	
	<h1>forTokens 태그 출력결과</h1>
	<!-- forTokens는 객체에서 하나의 item을 꺼내오는 것이 아니라, items 문자열에서 delims 값 기준으로 잘라서 꺼내오는것이다. -->
	<c:forTokens var="token" items="자바,파이썬,자바스크립트,루비" delims="," varStatus="loop">
		<p> token${loop.count}  -  ${token }</p>
	</c:forTokens>
</body>
</html>