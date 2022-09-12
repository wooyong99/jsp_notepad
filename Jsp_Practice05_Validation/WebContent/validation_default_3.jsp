<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>기본 유효성 검사 - 2</title>
<style>
	.form-group{
		justify-content: center;
	}
</style>
<script type="text/javascript">
	function checkLogin() {
		var name = document.login_frm.name.value;
		var id = document.login_frm.id.value;
		var pw = document.login_frm.pw.value;
		if(name=="" || name.length > 6){
			alert("이름을 다시 입력해주세요.");
			document.login_frm.name.select();
			document.login_frm.name.focus();  /* name 입력창으로 포커스를 준다. */
			return;
		}
		if(id=="" || (id.length > 12 || id.length < 4)){
			alert("아이디를 4~12로 입력해주세요.");
			document.login_frm.id.select();
			document.login_frm.id.focus();  /* id 입력창으로 포커스를 준다. */
			return;
		}
		if(pw=="" || (pw.length > 16 || pw.length <8)){
			alert("pw를 8~16자로 입력해주세요.");
			document.login_frm.pw.select();
			document.login_frm.pw.focus();  /* pw 입력창으로 포커스를 준다. */
			return;
		}
		document.login_frm.submit();
		
	}
</script>
</head>
<body>
	<div class="container">
		<div class="text-center">
			<h1 class="display-3">Login</h1>
		</div>
		<form name="login_frm" action="validation_default_3_process.jsp" method="post" class="form-horizontal">
			<div class="form-group row">
				<label class="col-sm-1">Name</label>
				<div class="col-sm-3">
					<input class="form-control" type="text" name="name"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-1">ID</label>
				<div class="col-sm-3">
					<input class="form-control" type="text" name="id"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-1">PW</label>
				<div class="col-sm-3">
					<input class="form-control" type="password" name="pw"/>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-1">
					<!-- 유의사항 - type이 submit일 경우, onclick 함수가 실행되고 무조건적으로 submit이 일어난다. 
					하지만 type이 button 일경우, onclick 함수를 통해 submit 여부를 결정할수 있다. -->
					<input class="form-control" type="button" value="enter" onclick="checkLogin()"/>
				</div>
			</div>
			
		</form>
	</div>

</body>
</html>