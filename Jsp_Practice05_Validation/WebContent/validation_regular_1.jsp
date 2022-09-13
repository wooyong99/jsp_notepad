<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>정규 표현식 유효성 검사 - 1</title>
<style>
	.form-group{
		justify-content: center;
	}
</style>
<script type="text/javascript">
	function checkJoin(){
		var regExpName = /^[ㄱ-ㅎ가-힣ㅏ-ㅣ]{0,10}$/
		var regExpId = /^[A-z\dㄱ-ㅎ가-힣ㅏ-ㅣ]{4,16}/;
		var form = document.login_frm;
		var name = form.name.value;
		var id = form.id.value;
		var pw = form.pw.value;
		var phone1 = form.phone1.value;
		var phone2 = form.phone2.value;
		var phone3 = form.phone3.value;
		var email = form.email.value;
	}
</script>
</head>
<body>
	<div class="container">
		<div class="text-center">
			<h1 class="display-3">Login</h1>
		</div>
		<form name="join_frm" action="validation_regular_1_process.jsp" method="post" class="form-horizontal">
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
				<label class="col-sm-1">Phone</label>
				<div class="col-sm-3">
					<select name="phone1">
						<option value="010">010
						<option value="011">011
						<option value="016">016
						<option value="017">017
						<option value="018">018
					</select>-<input type="text" name="phone2" maxlength="4" size="4"/>-<input type="text" name="phone3" maxlength="4" size="4"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-1">Email</label>
				<div class="col-sm-3">
					<input class="form-control" type="text" name="email"/>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-1">
					<!-- 유의사항 - type이 submit일 경우, onclick 함수가 실행되고 무조건적으로 submit이 일어난다. 
					하지만 type이 button 일경우, onclick 함수를 통해 submit 여부를 결정할수 있다. -->
					<input class="form-control" type="button" value="enter" onclick="checkJoin()"/>
				</div>
			</div>
			
		</form>
	</div>

</body>
</html>