<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- CDN 방식 사용 x --> 
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<meta charset="UTF-8">
<title>Home</title>
<%
	request.setCharacterEncoding("UTF-8");
	String greeting = "Hello World! My Wen Shopping Mall";
	String tagline="welcome to web shopping mall";
%>
<style>
	.jumbotron{
		padding-top:40px;
		padding-bottom:40px;
	}
	body>div.container{
		padding-top:25px;
		padding-bottom:25px;
	}
	body>hr{
		margin-top:0;
	}
</style>
</head>
<body>
	<!-- jsp include 액션 태그를 이용해서 menu.jsp파일을 포함시켰다. -->
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="jumbotron bg-secondary">
		<div class="container">
			<div class="text-center">
				<h1 class="display-3" style="font-color:white;"><%=greeting %></h1>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<h3><%=tagline %></h3>
			<%
				response.setIntHeader("Refresh",1);
				Date now =new Date();
				SimpleDateFormat sdf=new SimpleDateFormat("HH:mm:ss");
			%>
			<h2><%= sdf.format(now) %></h2>
		</div>
	</div>
	<hr/>
	<!-- jsp include 액션 태그를 이용해서 footer.jsp파일을 포함시켰다. -->
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>