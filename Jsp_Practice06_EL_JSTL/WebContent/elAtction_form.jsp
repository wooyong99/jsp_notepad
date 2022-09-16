<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>elAtction.jps form 페이지</title>
</head>
<body>
<h1>Member 정보 입력</h1>
<form action="elAction.jsp" method="post">
	이름 : <input type="text" name="name"/><br/>
	id : <input type="text" name="id"/><br/>
	pw : <input type="password" name="pw"/><br/>
	<input type="submit" name="enter"/>
</form>

</body>
</html>