<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 다중 업로드 (cos.jar파일)</title>
</head>
<body>
	<form action="fileupload_cos_2_process.jsp" method="post" name="formfile" enctype="multipart/form-data">
		<p><b>이름 1 : </b><input type="text" name="name1"/></p>
		<p><b>제목 1 : </b><input type="text" name="title1"/></p>
		<p><b>파일 1 : </b><input type="file" name="filename1"/></p>
		<hr>
		<p><b>이름 2 : </b><input type="text" name="name2"/></p>
		<p><b>제목 2 : </b><input type="text" name="title2"/></p>
		<p><b>파일 2 : </b><input type="file" name="filename2"/></p>
		<hr>
		<p><b>이름 3 : </b><input type="text" name="name3"/></p>
		<p><b>제목 3 : </b><input type="text" name="title3"/></p>
		<p><b>파일 3  : </b><input type="file" name="filename3"/></p>
		<p><input type="submit" value="확인"/></p>
	</form>
</body>
</html>