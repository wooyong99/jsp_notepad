<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cos.jar이용한 파일업로드</title>
</head>
<body>
	<!-- enctype 속성 : 전송 타입을 설정, 파일을 전송하기 위해서는 enctype="multipart/form-data"로 설정해주어야한다. -->
	<form name="fileForm" action = "fileupload_cos_1_process.jsp" method="post" enctype="multipart/form-data">
		<p><b>이름: </b><input type="text" name="name"/></p>
		<p><b>제목: </b><input type="text" name="title"/></p>
		<p><b>파일: </b><input type="file" name="filename"/></p>
		<p><input type="submit" value="확인" /></p>
	</form>

</body>
</html>