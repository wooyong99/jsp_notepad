<%@page import="com.exam_dao.ProductRepository"%>
<%@page import="com.exam_dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 삭제페이지</title>
</head>
<body>
	<%	
		/* 파라미터값 여부 존재확인 */
		String id = request.getParameter("id");
		if(id==null || id.equals("")){
			response.sendRedirect("products.jsp");
			return;
		}
		/* 데이터에 존재하는 상품확인 */
		ProductRepository repository = ProductRepository.getInstance();
		ArrayList<Product> products = repository.getAllProducts();
		
		Product product = repository.getProductById(id);
		if(product == null){
			response.sendRedirect("exceptionNoProductId.jsp");
			return;
		}
		/* 내장객체 세션에서 cartlist가져오기 */
		ArrayList<Product> cartlist = (ArrayList<Product>)session.getAttribute("cartlist");
		
		/* cartlist.removeIf(item -> item.getProduct_Id().equals(id)); */
		for(Product removeProduct : cartlist){
			if( id.equals(removeProduct.getProduct_Id())){
				cartlist.remove(removeProduct);
				break;
			}
		}
		response.sendRedirect("cart.jsp");
	%>
</body>
</html>