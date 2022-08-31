<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join Form</title>
<style type="text/css">
	#formArea{
		margin:auto;
		width:600px;
		border:1px solid black;
	}
	h2, fieldset{
		text-align:center;
	}
</style>
</head>
<body>
	<section id="formArea">
		<h2>회원가입을 위해서 아래의 내용을 입력해주세요.</h2>
		<form action="customerbean.jsp" method="post">
			<fieldset>
				<label>아이디 :</label>
				<input id="id" type="text" name="id" required/><br/>
				<label>비밀번호 :</label>
				<input id="pw" type="password" name="pw" required/><br/>
				<label>이름 :</label>
				<input id="name" type="text" name="name" required/><br/>
				<label>생년월일 :</label>
				<input id="birth" type="date" name="birth"/><br/>
				<label>주소 :</label>
				<input id="address" type="text" name="address"/><br/>
				<label>이메일 :</label>
				<input id="email" type="email" name="email"/><br/>
				<input type="submit" value="Signup">
				<input type="reset" value="reset"/>
				
			</fieldset>
		</form>
	</section>
</body>
</html>