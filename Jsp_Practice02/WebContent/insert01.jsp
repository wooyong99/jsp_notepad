<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Example</title>
</head>
<body>
	<h2>사용 입력값 DB 저장</h2>
	<form action="insert01_process.jsp" method="get">
		<p> 이름 : <input type="text" name ="username"/></p>
		<p> ID : <input type="text" name="id"/></p>
		<p> PW : <input type="password" name="pw"/></p>
		<p><input type="submit" value="전송"/>
	</form>
</body>
</html>