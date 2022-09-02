<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%!
	String db_id;
	String db_pw;
	String driver;
	String url;
	Connection con;
%>
<%
		db_id = "root";
		db_pw="1234";
		//	Class.forName 을 통해서 동적 객체를 만들기 위한 Driver 이름.
		driver="com.mysql.jdbc.Driver";
		//	mysql 서버에 접속하기 위한 url(경로) 설정. testdb는 접속할 database 이름을 의미함.
		url="jdbc:mysql://localhost:3307/testdb";
		con=null;
		try{
			Class.forName(driver); // Driver 이름을 통해서 동적 객체 생성. 즉, DriverManager 객체를 생성한다. 
			con=DriverManager.getConnection(url,db_id,db_pw);
		}catch(Exception e){
			e.printStackTrace();}
%>