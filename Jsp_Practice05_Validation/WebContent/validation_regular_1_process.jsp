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
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String phone1=request.getParameter("phone1");
	String phone2=request.getParameter("phone2");
	String phone3=request.getParameter("phone3");
	String email=request.getParameter("email");
	
%>
<p>이름 : <%=name %></p>
<p>id : <%=id %></p>
<p>pw : <%=pw %></p>
<p>phone : <%=phone1 %> - <%=phone2 %> - <%=phone3 %></p>
<p>email : <%=email %></p>
</body>
</html>