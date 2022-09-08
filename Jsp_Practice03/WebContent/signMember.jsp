<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신규 회원 가입</title>
</head>
<body>
	<h2>신규 회원 가입</h2>
	<form action="signCheck.jsp" method="post">
			<label class="col-sm-1">username : </label><input type="text" name="username" required/><br>
			<label class="col-sm-1">id : </label><input type="text" name="id" required/><br>
			<label class="col-sm-1">pw : </label><input type="password" name="pw" required/><br>
			<label class="col-sm-1">phone : </label>	
			<input type="text" size="2" name="phone1" required/> -
			<input type="text" size="3" name="phone2" required/> -
			<input type="text" size="3" name="phone3" required/><br>
			<label class="col-sm-1">gender : </label>
			<input type="radio" name="gender" value="남자"/>남자
			<input type="radio" name="gender" value="여자"/>여자<br>
			<label class="col-sm-3"><input type="submit" value="Signup"/></label>
	</form>
</body>
</html>