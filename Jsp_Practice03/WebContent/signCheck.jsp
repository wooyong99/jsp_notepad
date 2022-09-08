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
		dao.addMember(dto.getUsername(), dto.getId(), dto.getPw(), dto.getPhone1(), dto.getPhone2(), dto.getPhone3(), dto.getGender());
		response.sendRedirect("memberlist.jsp");
	%>
</body>
</html>