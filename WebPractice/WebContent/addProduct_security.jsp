<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin Login Page</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<style>
	.jumbotron{
		padding:40px 0px;
	}
</style>
<script type="text/javascript">
	function error_alert(){
		alert("로그인 실패 !");
		return;
	}
</script>
</head>
<body>
	<% if(request.getParameter("error")!=null){ %>
	<script>error_alert();</script>
	<%} %>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron bg-secondary">
		<div class="container">
			<div class="text-center">
				<p class="display-3">Admin Login</p>
			</div>
		</div>
	</div>
	<div class="container" style="margin-top:30px;">
		<div class="text-center">
			<form name="lgn_frm" action="j_security_check" method="post" class="form-horizontal">
				<div class="row">
					<div class="col-11">
						<label class="col-sm-1 col-form-label"><b>ID</b></label>
						<label class="col-sm-4 col-form-label"><input type="text" name="j_username" class="form-control"/></label>				
					</div>
				</div>
				<div class="row">
					<div class="col-11">
						<label class="col-sm-1 col-form-label"><b>PW</b></label>
						<label class="col-sm-4 col-form-label"><input type="password" name="j_password" class="form-control"/></label>
					</div>
				</div>
				<div class="row">
					<div class="col-12 d-grid gap-2">
						<input type="submit" value="enter" class="btn btn-secondary btn-block col-3 mx-auto"/>
					</div>
				</div>
			</form>
		</div>	
	</div>
	<hr>
	<jsp:include page="footer.jsp"/>
</body>
</html>