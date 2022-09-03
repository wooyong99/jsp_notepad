<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update(수정) 결과</title>
</head>
<body>
	<%@include file="dbcon.jsp" %>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String username = request.getParameter("username");
		String sql="";
		PreparedStatement ps =null;
		ResultSet rs=null;
		try{
			sql="select id, pw from members where id=?";
			ps=con.prepareStatement(sql);
			ps.setString(1,id);
			rs=ps.executeQuery();
			if(rs.next()){
				if(id.equals(rs.getString("id")) && pw.equals(rs.getString("pw"))){
					sql = "update members set username=? where id=?"; 
					ps=con.prepareStatement(sql);
					ps.setString(1,username);
					ps.setString(2,id);
					int num=ps.executeUpdate();
					out.print("변경완료 !");
				}else{
					out.print("회원 정보를 다시 입력해주세요.");
					System.out.println("회원 정보를 다시 입력해주세요.");
				}
			}else{
				out.print("존재하지 않는 회원입니다.");
			}
		}catch(SQLException e){
			out.print("오류");
			e.getMessage();
			e.printStackTrace();
		}finally{
			if(ps!=null) ps.close();
			if(con!=null) con.close();
			
		}
		
	%>
	<a href="select_statement.jsp">회원 목록 보기</a>
</body>
</html>