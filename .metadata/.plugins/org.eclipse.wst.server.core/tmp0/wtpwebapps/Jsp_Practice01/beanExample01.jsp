<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="com.exam_usebean.Student" ></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:setProperty property="name" name="student" value="정우용"/>
	<jsp:setProperty property="age" name="student" value="24"/>
	<jsp:setProperty property="grade" name="student" value="3"/>
	<jsp:setProperty property="studentNum" name="student" value="201846001"/>
	<h1>getProperty 출력</h1>
	<jsp:getProperty property="name" name="student"/><br/>
	<jsp:getProperty property="age" name="student"/><br/>
	<jsp:getProperty property="grade" name="student"/><br/>
	<jsp:getProperty property="studentNum" name="student"/><br/>

</body>
</html>