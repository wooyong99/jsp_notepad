<%@page import="java.io.File"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String fileName="";
		String filepath="C:\\upload";
		// request로 넘어온 form태그의 enctype이 multipart/form-data인지 확인
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		
		if (isMultipart){
			// 메모리에 파일을 업로드할때 파일을 보관하기 위한 FileItem의 Factory 객체 생성
			DiskFileItemFactory factory = new DiskFileItemFactory();
			// 업로드 처리를 하는 ServletFileUpload객체 생성
			ServletFileUpload upload = new ServletFileUpload(factory);
			// request를 파싱해서 FileItem을 담는 List 생성.
			List<FileItem> items = upload.parseRequest(request);
			for(FileItem item : items){
				FileItem fileitem = (FileItem)item;
				// request type이 파일인지 확인(file일 경우, false)
				if(fileitem.isFormField()){
					String name = fileitem.getFieldName();
					String value = fileitem.getString("UTF-8");
					out.print(name +" : "+value+"<br>");
				}else{
					String name= fileitem.getFieldName();
					String filename = fileitem.getName();
					String contenttype=fileitem.getContentType();
					long size=fileitem.getSize();
					boolean isInMemory = fileitem.isInMemory();
					// filepath(경로)에 filname(파일)을 추가하는 객체 생성.
					File file = new File(filepath+"/"+filename);
					out.print("<hr>");
					out.print("파일 이름 : "+filename+"<br>");
					out.print("파일 콘텐츠 유형 : "+contenttype+"<br>");
					out.print("파일 사이즈 : "+size+"<br>");
					out.print("파일 경로 : "+file.getPath()+"<br>");
					// 생성한 file 경로에 존재 여부 확인
					if(file.exists()){
						for(int i =1;true;i++){
							// 파일 이름 앞에 (i)를 붙임. 
							file=new File(filepath+"/"+"("+i+")"+filename);
							// 다시 파일 존재 여부 확인. 
							if(!file.exists()){
								fileName=filename;
								filepath=file.getPath();
								break;
							}
						}
					}else{
						fileName=filename;
						filepath=file.getPath();
					}
					fileitem.write(file);
				}
			}
			
		}
	%>
	저장된 이미지<br/>
	<img alt="<%= filepath%>" src="C:\upload\<%= fileName%>"></img>
</body>
</html>