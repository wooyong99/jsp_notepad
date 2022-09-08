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
<title>파일 다중 업로드 처리</title>
</head>
<body>
	<%
	MultipartRequest multipartRequest = new MultipartRequest(request, "C:\\upload", 1000 * 1024 * 1024, "UTF-8",
			new DefaultFileRenamePolicy());
	String name1 = multipartRequest.getParameter("name1");
	String title1 = multipartRequest.getParameter("title1");

	String name2 = multipartRequest.getParameter("name2");
	String title2 = multipartRequest.getParameter("title2");

	String name3 = multipartRequest.getParameter("name3");
	String title3 = multipartRequest.getParameter("title3");

	Enumeration files = multipartRequest.getFileNames();
	// Enumeration은 역순으로 출력하기때문에, file3부터 가져온다.
	String file3 = (String) files.nextElement();
	String file3_name = multipartRequest.getFilesystemName(file3);

	String file2 = (String) files.nextElement();
	String file2_name = multipartRequest.getFilesystemName(file2);

	String file1 = (String) files.nextElement();
	String file1_name = multipartRequest.getFilesystemName(file1);
	%>
	<table border="1">
		<tr>
			<th width="100">이름</th>
			<th width="100">제목</th>
			<th width="100">파일</th>
		</tr>
		<tr>
			<td><%=name1%></td>
			<td><%=title1%></td>
			<td><%=multipartRequest.getOriginalFileName(file1)%></td>
		</tr>
		<tr>
			<td><%=name2%></td>
			<td><%=title2%></td>
			<td><%=multipartRequest.getOriginalFileName(file2)%></td>
		</tr>
		<tr>
			<td><%=name3%></td>
			<td><%=title3%></td>
			<td><%=multipartRequest.getOriginalFileName(file3)%></td>
		</tr>
	</table>
	<br>
	<%
		Enumeration params = multipartRequest.getParameterNames();
		while (params.hasMoreElements()) {
			String name = (String) params.nextElement();
			String value = multipartRequest.getParameter(name);
			out.println(name + " : " + value + "<br>");
		}
		out.print("<hr>");
		Enumeration file_params = multipartRequest.getFileNames();
	
		while (file_params.hasMoreElements()) {
			String name = (String) file_params.nextElement();
			String value = (String) multipartRequest.getFilesystemName(name);
			String original = multipartRequest.getOriginalFileName(name);
			String type = multipartRequest.getContentType(name);
			File file = multipartRequest.getFile(name);
			out.print("요청이 들어온 param 이름 : " + name + "<br>");
			out.print("실제 파일 이름 : " + original + "<br>");
			out.print("저장 파일 이름 : " + value + "<br>");
			out.print("파일 컨텐츠 유형 : " + type + "<br>");
			if (file != null) {
				out.print("파일 크기 : " + file.length()/1024 +"KB" +"<br>");
				out.print("파일 경로 : " + file.getPath() + "<br>");
				out.print("---------------------------------------<br>");
			}
		}
	%>
</body>
</html>