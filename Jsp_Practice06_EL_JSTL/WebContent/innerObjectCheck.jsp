<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>El 내장객체를 통한 출력결과</title>
</head>
<body>
	<h3>EL태그 param(파라미터) 내장객체 활용</h3>
	<p>${param.id}</p>
	<p>${param.pw}</p>
	<br/>
	
	<!-- applicationScope 내장객체는 웹프로젝트 전체에 적용되는값. -->
	<h3>EL태그 application 내장객체 출력</h3>
	<p>applicationScope : ${applicationScope.application_name }</p>
	<br/>
	
	<!-- sessionScope 내장객체는 한개의 브라우저당 적용되는값. -->
	<h3>EL태그 session 내장객체 출력</h3>
	<p>sessionScope : ${sessionScope.session_name }</p>
	<br/>
	
	<!-- 이때, innerObject.jsp에서 redirect를 했기 때문에, pageContext와 request는
	각각의 scope를 벗어나기 때문에 전달이 되지않아 출력이 되지않는다. -->
	<h3>EL태그 request 내장객체 출력</h3>
	<p>requestScope : ${requestScope.request_name}</p>
	<br/>
	
	<h3>EL태그 pageContext 내장객체 출력</h3>
	<p>pageScope : ${pageScope.pagecontext_name }</p>
	
	

</body>
</html>