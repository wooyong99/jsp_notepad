<%@page import="java.util.List"%>
<%@page import="com.dao.MemberDAO"%>
<%@page import="com.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member list</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>이름</th><th>ID</th><th>PW</th><th>Phone</th><th>성별</th>
		</tr>	
	<%
		MemberDAO dao = new MemberDAO();
		List<MemberDTO> dto_list = dao.selectMember();
		for(MemberDTO dto : dto_list){
			String name = dto.getUsername();
			String id = dto.getId();
			String pw = dto.getPw();
			String phone = dto.getPhone1() + "-" +dto.getPhone2() + "-" +dto.getPhone3();
			String gender = dto.getGender();
	%>
		<tr>
			<td><%=name %></td><td><%=id %></td><td><%=pw %></td><td><%=phone %></td><td><%=gender %></td>
		</tr>
	<%} %>
	</table>

</body>
</html>