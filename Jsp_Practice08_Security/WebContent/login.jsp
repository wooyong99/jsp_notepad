<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function login_check(){
		var form = document.loform;
		var id = form.j_username.value;
		var pw = form.j_password.value;
		
		if(!check(/^[A-z\dㄱ-ㅎ가-힣ㅏ-ㅣ]{4,15}$/, id, "아이디 유효성 검사 실패 !")){
			return;
		}
		if(!check(/^(?=.*[A-z])(?=.*[\d])(?=.*[~!@#$%])[A-z\d~!@#$%]{5,12}$/, pw, "비밀번호 유효성 검사 실패 !")){
			return;
		}
		function check(regExp, v, msg){
			if(!regExp.test(v)){
				alert(msg);
				v.select();
				v.focus();
				return false;
			}else{
				return true;
			}
		}
		form.submit();
	}
</script>
</head>
<body>
	<h2>Login</h2>
	<form name="loform" action="j_security_check" method="post">
		<p>아이디 : <input type="text" name="j_username"/></p>
		<p>비밀번호 : <input type="password" name="j_password"/></p>
		<input type="button" value="enter" onclick="login_check()"/>
	</form>
</body>
</html>