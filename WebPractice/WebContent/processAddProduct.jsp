<%@page import="com.exam_dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="product" class="com.exam_dto.Product"></jsp:useBean>
<jsp:setProperty property="*" name="product"></jsp:setProperty>
<%-- <jsp:useBean id="product_repository" class="com.exam_dao.ProductRepository"></jsp:useBean> --%>

<%
	ProductRepository productDAO = ProductRepository.getInstance();
	productDAO.addProduct(product);
%>
<jsp:forward page="products.jsp"></jsp:forward>