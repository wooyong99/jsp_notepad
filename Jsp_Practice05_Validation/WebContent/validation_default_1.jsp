<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>기본 유효성 검사 - 1</title>
<style>
	.form-group{
		justify-content: center;
	}
</style>
<script type="text/javascript">
	function printForm() {
		var name = document.login_frm.name.value;
		var id = document.login_frm.id.value;
		var pw = document.login_frm.pw.value;
		alert("이름 : "+name+", 아이디 : "+id+" , 비번 : "+pw);
	}
</script>
</head>
<body>
	<div class="container">
		<div class="text-center">
			<h1 class="display-3">Login</h1>
		</div>
		<form name="login_frm" action="#" method="post" class="form-horizontal">
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
					<input class="form-control" type="submit" value="enter" onclick="printForm()"/>
				</div>
			</div>
			
		</form>
	</div>

</body>
</html>