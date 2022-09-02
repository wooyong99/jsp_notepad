<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbcon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("UTF-8");
		String username = request.getParameter("username");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String sql = "";
		PreparedStatement ps=null;
		try{
			sql="insert into members values(?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2,pw);
			ps.setString(3,username);
			int num=ps.executeUpdate();
			System.out.println("members 테이블 데이터 추가 성공!");
		}catch(SQLException e){
			System.out.println("members 테이블 추가 실패 ");
			e.printStackTrace();
		}finally{
			//	sql 문이 성공, 실패 여부 상관없이 최종적으로는 반드시 연결을 닫아주어야한다.
			if(ps!=null)ps.close();
			if(con!=null)con.close();		
		}
		
	%>
	
</body>
</html>