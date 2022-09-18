<%@page import="com.sec02.Member"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 라이브러리 - 객체 출력을 위한 forEach 태그</title>
</head>
<body>
	<%
		List<Member> list = new ArrayList<>();
		Member member1= new Member("son","1111","손흥민","son@naver.com");
		Member member2= new Member("hwang","2222","황희찬","hwang@naver.com");
		Member member3= new Member("kim","3333","김민재","kim@gmail.com");
		list.add(member1);
		list.add(member2);
		list.add(member3);
	%>
	<h1>선수 출력 결과</h1>
	<c:set var="memberlist" value="<%=list %>" />
	<table border="1">
		<tr>
			<td width='200'>ID</td><td width='200'>PASSWORD</td><td width='200'>NAME</td><td width='200'>EMAIL</td>
		</tr>
	<c:forEach var="member" items="${memberlist }" >
		<tr>
			<td><c:out value="${member.id}"/></td><td><c:out value="${member.pw }"/></td><td><c:out value="${member.name }"/></td><td><c:out value="${member.email}"/></td>
		</tr>		
	</c:forEach>
	</table>
</body>
</html>