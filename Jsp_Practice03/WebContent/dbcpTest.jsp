<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
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
<title>DBCP 테스트</title>
</head>
<body>
	<%	
		// Context는 dbcp 이름을 찾기 위한 lookup메소드를 사용하기 위해 호출한 인터페이스이며, InitialContext 클래스로 대입을 해준것이다.
		Context context = new InitialContext();
		DataSource datasource=(DataSource)context.lookup("java:comp/env/" + "jdbc/dbconn");	
		// 이때, "jdbc/dbconn"은 dbcp로 설정한 name 값이다. 													
		//	그리고 dbcp로 설정한 type(javax.sql.DataSource)으로 해준다.
		Connection con=datasource.getConnection();
		System.out.println("Connection Pool 연결완료");
		System.out.println("Connection 객체 : "+con);
		System.out.println("Thread 이름 : "+Thread.currentThread().getName());
	%>

</body>
</html>