<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete form</title>
</head>
<body>
	<h2>입력된 DB 삭제하기</h2>
	<form action="delete_statement.jsp" method="get">
		<p> 이름 : <input type="text" name ="username"/></p>
		<p> ID : <input type="text" name="id"/></p>
		<p> PW : <input type="password" name="pw"/></p>
		<p><input type="submit" value="전송"/>
	</form>
</body>
</html>