<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB connection test</title>
</head>
<body>
	<%
		String id = "root";
		String pw="1234";
		//	Class.forName 을 통해서 동적 객체를 만들기 위한 Driver 이름.
		String driver="com.mysql.jdbc.Driver";
		//	mysql 서버에 접속하기 위한 url(경로) 설정. testdb는 접속할 database 이름을 의미함.
		String url="jdbc:mysql://localhost:3307/testdb";
		Connection con=null;
		try{
			Class.forName(driver);
			System.out.println("드라이버 로드 성공!");
			con=DriverManager.getConnection(url,id,pw);
			System.out.println("DB 연결 성공 !");	
		}catch(Exception e){
			e.printStackTrace();
		}
		
	%>

</body>
</html>