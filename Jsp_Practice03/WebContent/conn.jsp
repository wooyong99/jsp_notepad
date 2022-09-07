<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mysql 연결 확인</title>
</head>
<body>
	<%
		String id = "root";
		String pw="1234";
		String driver="com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3307/testdb";
		Connection con = null;
		PreparedStatement ps = null;
		try{
			Class.forName(driver);
			con=DriverManager.getConnection(url, id, pw);
			out.print("db연결 성공 !");
		}catch(SQLException e){
			out.print(e.getMessage());
		}finally{
			if(con!=null) con.close();
		}
	%>

</body>
</html>