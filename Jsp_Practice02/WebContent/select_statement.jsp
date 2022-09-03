<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SELECT 결과</title>
</head>
<body>
	<%@include file="dbcon.jsp" %> <!-- DB접속을 위한 include 지시자 -->
	<%
		ResultSet rs=null;
		String username="정우용";
		String sql="select * from members";
		//sql="select * from members where username=?";		
		PreparedStatement ps=null;
		try{
			ps=con.prepareStatement(sql);
			//ps.setString(1,username);
			rs=ps.executeQuery();	
	%>
	<table border="1">
		<tr>
			<th width="300" align="center">ID </th>
			<th width="300" align="center">PW </th>
			<th width="300" align="center">USERNAME </th>
		</tr>
		<% while(rs.next()){%> 	<!-- 호출한 sql문으로부터 결과로 받아온 ResultSet에서 BOF에서 EOF까지 받아오기 위한 반복문 -->
		<tr>
			<td><%=rs.getString("id") %></td><td><%=rs.getString("pw") %></td><td><%=rs.getString("username") %></td>
		</tr>
		<%}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			if(rs!=null) rs.close();
			if(ps!=null) ps.close();
			if(con!=null) con.close();
		}
		%>
	</table>
	<br><a href="insert_form.jsp">회원 가입 페이지</a>

</body>
</html>