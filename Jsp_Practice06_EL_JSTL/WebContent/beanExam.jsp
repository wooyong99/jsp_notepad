<%@page import="com.sec02.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="memberList" class="java.util.ArrayList"></jsp:useBean>
<jsp:useBean id="memberMap" class="java.util.HashMap"></jsp:useBean>
<%
	memberMap.put("id","jung");
	memberMap.put("pw","1234");
	memberMap.put("name","정우용");
	memberMap.put("email","wulovesk@naver.com");
	Member member1 = new Member("ahn","111","안정환","ahn@naver.com");
	Member member2 = new Member("park","22","박지성","park@naver.com");
	memberList.add(member1);
	memberList.add(member2);
	memberMap.put("memberList",memberList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set태그 - bean 활용 / remove 태그</title>
</head>
<body>
<!-- bean객체를 value값으로하여 set 태그 이용. -->
<c:set var="list" value="${memberMap.memberList }"/>

	<table border="1">
		<tr>
			<td>아이디</td><td>비밀번호</td><td>이름</td><td>email</td>
		</tr>
		<tr>
			<td>${memberMap.id}</td><td>${memberMap.pw }</td><td>${memberMap.name }</td><td>${memberMap.email }</td>
		</tr>
		<tr>
			<td>${list[0].id }</td><td>${list[0].pw }</td><td>${list[0].name }</td><td>${list[0].email }</td>
		</tr>
		<%-- <c:remove var="list"/> 		remove 태그를 사용하면 var값을 삭제하게 된다. 만약 태그를 활성화 시킨다면, 아래의 코드는 빈칸으로 출력된다 --%>
		<tr>
			<td>${list[1].id }</td><td>${list[1].pw }</td><td>${list[1].name }</td><td>${list[1].email }</td>
		</tr>
	</table>

</body>
</html>