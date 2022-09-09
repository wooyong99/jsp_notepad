<%@page import="org.apache.commons.fileupload.DefaultFileItem"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일업로드(commons.jar이용) 처리</title>
</head>
<body>
	<!-- iterator 반복자 객체를 활용하여 출력 -->
	<%-- <%
		String uploadpath ="C:\\upload";
		DiskFileUpload upload = new DiskFileUpload();
		
		// 요청된 parameter를 전달받기 위해서 parseRequest 사용
		List items = upload.parseRequest(request);
		
		Iterator params=items.iterator();
		while(params.hasNext()){
			FileItem fileItem = (FileItem)params.next();
			// isFormField() 메소드는 fileItem이 일반적인 폼입력 값이라면 true이고, file이면 false를 리턴한다.
			if(!fileItem.isFormField()){
				String filename = fileItem.getName();
				filename = filename.substring(filename.lastIndexOf("\\")+1);
				out.print(filename+"<br>");
				File file = new File(uploadpath+"/"+filename);
				fileItem.write(file);
			}
		}
	%> --%>
	
	<!-- 향상된 for문을 이용하여 출력 -->
	<%
		String uploadpath="C:\\upload";
		DiskFileUpload upload = new DiskFileUpload();
		// 요청을 parseRequest로 받아와서 DefaultFileIem 객체로 List에 저장.
		List items=upload.parseRequest(request);
		
		for(Object item : items){
			FileItem fileitem = (FileItem)item;
			if(!fileitem.isFormField()){
				String filename = fileitem.getName();
				File file = new File(uploadpath+"/"+filename);
				fileitem.write(file);
				out.print(filename);
			}
		}
		
	%>

</body>
</html>