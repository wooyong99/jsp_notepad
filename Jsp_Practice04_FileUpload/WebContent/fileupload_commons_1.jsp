<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>commons.jar를 이용한 파일 업로드</title>
</head>
<body>
	<form action="fileupload_commons_1_process.jsp" method="post" enctype="multipart/form-data">
		<p><b>이름 : </b><input type="text" name="name"/></p>
		<p><b>제목 : </b><input type="text" name="title"/></p>
		<p><b>파일 : </b><input type="file" name="filename"/></p>
		<p><input type="submit" value="enter"/></p>
	</form>
</body>
</html>