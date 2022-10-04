<%@page import="java.util.ArrayList"%>
<%@page import="com.exam_dto.Product"%>
<%@page import="com.exam_dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 주문</title>
</head>
<style>
	.jumbotron{
		padding:40px 0;
	}
</style>
<body>
	<%	
		/* id 파라미터 값을 확인하여 올바르지 않을 경우 products.jsp로 이동 */
		String id=request.getParameter("id");
		if(id == null || id.trim().equals("")){
			response.sendRedirect("products.jsp");
			return;
		}
		/* 상품 데이터 접근 클래스 (dao)의 인스턴스를 가져오는 코드 */ 
		ProductRepository dao = ProductRepository.getInstance();
		/* dao객체의 getProductById로 해당 상품을 가져오는코드 */
		Product product = dao.getProductById(id);
		/* id 파라미터가 null or ""이 아닌데 DB에 존재하지 않는 상품일경우 exceptionNoProductId.jsp로이동 */
		if(product == null){
			response.sendRedirect("exceptionNoProductId.jsp");
		}
		ArrayList<Product> list = (ArrayList<Product>)session.getAttribute("cartlist");
		if(list == null){
			list = new ArrayList<Product>();
			session.setAttribute("cartlist", list);
		}
		
		int cnt = 0;
		Product productQnt = new Product();
		
		/* 사용자가 주문한 상품(파라미터로 넘어온 상품)이 장바구니에 이미 존재하는 물품인지 검색하여 
		수량을 증가하는 코드 */
		for(int i=0; i<list.size(); i++){
			productQnt = list.get(i);
			if(productQnt.getProduct_Id().equals(id)){
				cnt++;
				int orderQuantity = productQnt.getQuantity() + 1;
				productQnt.setQuantity(orderQuantity);
			}
		}
		
		/* 사용자가 주문한 상품(파라미터로 넘어온 상품)이 장바구니에 없는 상품이라면 수량을 1로 수정하고
		장바구니에 추가하는 코드 */
		if(cnt == 0){
			product.setQuantity(1);
			list.add(product);
		}
		for(int i=0; i<list.size();i++){
			System.out.println(list.get(i).getProduct_name()+" : "+list.get(i).getQuantity());
		}
		response.sendRedirect("product.jsp?id="+id);
	%>
</body>
</html>