<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 삭제 결과</title>
</head>
<body>
	<%@include file="dbcon.jsp" %>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String username = request.getParameter("username");
		ResultSet rs=null;
		PreparedStatement ps=null;
		try{
			String sql="select * from members where id=?";
			ps=con.prepareStatement(sql);
			ps.setString(1,id);
			rs=ps.executeQuery();
			if(rs.next()){
				if(id.equals(rs.getString("id")) && pw.equals(rs.getString("pw")) && username.equals(rs.getString("username"))){
					sql="delete from members where id=? and pw=?";
					ps=con.prepareStatement(sql);
					ps.setString(1,id);
					ps.setString(2,pw);
					int num = ps.executeUpdate();
					out.print(num+"건 삭제 완료 !");
				}else{
					out.print("회원 정보를 다시 입력해주세요.");
				}
			}else{
				out.print("입력하신 회원은 없는 회원입니다.");
			}
		}catch(SQLException e){
			out.print(e.getMessage());
			e.printStackTrace();
		}finally{
			if(ps!=null) ps.close();
			if(con!=null) con.close();
		}
	%>
	<a href="select_statement.jsp">회원 목록 보기</a><br>
	<a href="update_form.jsp">회원 정보 수정하기</a>
</body>
</html>