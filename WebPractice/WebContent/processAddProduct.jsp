<%@page import="com.exam_dto.Product"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.exam_dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String path=(String)request.getServletContext().getRealPath("resources/images");	
	// multioartrequest 인자값으로,  request, 저장경로, 파일 최대크기, 인코딩타입, 파일이름 중복 정책
	MultipartRequest multipartRequest = new MultipartRequest(request,path,100*1024*1024, "UTF-8", new DefaultFileRenamePolicy());
	// request로 받은 form의 enctype이 multipart/form-data이기 때문에 jsp:usebean 태그를 사용하지 못한다.
	// 따라서, getparameter 메소드로 get한다.
	String name=multipartRequest.getParameter("product_name");
	String id=multipartRequest.getParameter("product_Id");
	String price=multipartRequest.getParameter("product_price");
	String desc=multipartRequest.getParameter("product_desc");
	String manufact=multipartRequest.getParameter("manufact");
	String category=multipartRequest.getParameter("category");
	String stock=multipartRequest.getParameter("product_stock");
	String condition=multipartRequest.getParameter("condition");
	String filename = multipartRequest.getFilesystemName("filename");
	Product product = new Product(id, name, Integer.parseInt(price));
	product.setManufact(manufact);
	product.setProduct_desc(desc);
	product.setCondition(condition);
	product.setProduct_stock(Long.parseLong(stock));
	product.setFilename(filename);
	product.setCategory(category);
	product.setFilename(filename); 
	
	ProductRepository productDAO = ProductRepository.getInstance();
	out.print(product.getFilename()+"<br>");
	out.print(product.getProduct_Id()+"<br>");
	out.print(product.getProduct_price()+"<br>");
	out.print(product.getCategory()+"<br>");
	productDAO.addProduct(product);
%>
<jsp:forward page="products.jsp"></jsp:forward>