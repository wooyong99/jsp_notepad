<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인증 처리 2(Security)</title>
</head>
<body>
	<!-- 인증된 사용자 이름을 가져오기 위해서 아래와 같이 코드를 작성함 -->
	<!-- tomcat-users.xml 의 user의 username값을 의미 -->
	<p> 사용자 명 : <%=request.getRemoteUser() %></p>
	<p> 인증 방식 (FORM / BASIC) : <%=request.getAuthType() %></p>
	<p> 인증된 역할명이 role1 (true / false ) : <%= request.isUserInRole("role1") %></p>
	<p> 인증된 역할명이 tomcat (true / false ) : <%= request.isUserInRole("tomcat") %></p>
	<p> 요청 프로토콜 : <%=request.getProtocol() %></p>
	<p> https 요청 여부 : <%=request.isSecure() %></p>
	

</body>
</html>