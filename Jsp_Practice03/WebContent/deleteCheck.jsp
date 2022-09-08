<%@page import="com.dto.MemberDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id="dto" class="com.dto.MemberDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="dto"/>
	<%
		MemberDAO dao=new MemberDAO();
		dao.deleteMember(dto);
		response.sendRedirect("memberlist.jsp");
	%>
</body>
</html>