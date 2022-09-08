<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cos.jar이용한 파일업로드</title>
</head>
<body>
	<%
		MultipartRequest multipartRequest = new MultipartRequest(request, "C:\\upload",10*1024*1024,"UTF-8", new DefaultFileRenamePolicy());
		Enumeration params=multipartRequest.getParameterNames();	
		while(params.hasMoreElements()){
			String name = (String)params.nextElement();
			String value = multipartRequest.getParameter(name);
			out.println(name+" : "+value+"<br>");
		}
		out.print("<hr>");
		Enumeration file_params=multipartRequest.getFileNames();
		
		while(file_params.hasMoreElements()){
			String name=(String)file_params.nextElement();
			String value=(String)multipartRequest.getFilesystemName(name);
			String original = multipartRequest.getOriginalFileName(name);
			String type=multipartRequest.getContentType(name);
			File file=multipartRequest.getFile(name);
			out.print("요청이 들어온 param 이름 : "+name+"<br>");
			out.print("실제 파일 이름 : "+original+"<br>");
			out.print("저장 파일 이름 : "+value+"<br>");
			out.print("파일 컨텐츠 유형 : "+type+"<br>");
			if(file != null){
				out.print("파일 크기 : "+file.length()+"<br>");
				out.print("파일 경로 : "+file.getPath()+"<br>");				
				out.print("최종 수정일 : "+file.lastModified()+"<br>"); 				
			}
		}
	%>
</body>
</html>