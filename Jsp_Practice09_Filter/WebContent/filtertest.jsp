<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Filter Test - 1</title>
</head>
<body>
	<h1>LoggingFilter Test</h1>
	<p>ContextPath : ${pageContext.request.servletContext.contextPath }</p>
	<p>ContextName : ${pageContext.servletContext.servletContextName }</p>
	<hr>
</body>
</html>