<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- CDN 방식 사용 x --> 
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"> -->
<!-- resources/css 폴더 안에 bootstrap.min.css 파일 사용 -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<!-- resources/js 폴더 안에 validation.js파일 사용. 즉, 분리한 자바스크립트 파일을 사용하기 위한 코드 -->
<script type="text/javascript" src="./resources/js/validation.js"></script>
<meta charset="UTF-8">
<style type="text/css">
	.jumbotron, body>.container{
		padding-top:40px;
		padding-bottom:40px;
	}
	div.form-group.row{
		padding-top:7px;
		padding-bottom:7px;
	}
	a#lan{
		text-decoration: none;
		color:black;
		font-weight: bold;
	}
	a#lan:hover{
		color:black;
		text-decoration: underline;
	}
</style>
<title>Add Product</title>
</head>
<body>
	<!-- 파라미터값이 없을경우 properties파일의 디폴트 값으로 번역함.
	파라미터값이 있을 경우 setLocale하여 값에 알맞게 번역함. -->  
	<fmt:setLocale value="${param.language }"/>
	<!-- com.exam_resourceBundle.message의 properties파일을 bundle 이름으로 설정 -->
	<fmt:setBundle basename="com.exam_resourceBundle.message" var="bundle"/>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="jumbotron bg-secondary">
		<div class="container">
			<div class="text-center">
				<h1 class="display-3"><fmt:message bundle="${bundle}" key="title"/></h1>
			</div>
		</div>
	</div>
	<div class="container" style="padding-top:20px;">
		<!-- Korean, En (한국어, 영어) 번역을 선택하여 다시 페이지를 요청하는 태그 생성-->
		<div class="text-end">
			<a href="?language=ko_KR" id="lan">Korean</a> || <a href="?language=en_US" id="lan">En</a>
		</div><br>
		<!-- 해당 페이지는 admin으로 로그인 한 경우에만 접근이 가능하므로 로그아웃 버튼 생성 -->
		<div class="text-end"><a class="btn btn-secondary btn-sm" href="logout.jsp">로그아웃</a></div>
		<form name="newProduct" action="./processAddProduct.jsp" method="post" class="form-horizontal" enctype="multipart/form-data">
			<!-- 유효성 검사를 위한 자바스크립트 파일을 분리할것이므로, input 태그에 id 값을 설정함. -->
			<div class="form-group row">
				<label class="col-sm-2"><b><fmt:message bundle="${bundle }" key="product_Id"/> </b></label>
				<div class="col-sm-3">
					<input type="text" id="product_id" name="product_Id" class="form-control" placeholder="상품 코드를 입력해주세요."/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b><fmt:message bundle="${bundle }" key="product_name"/></b></label>
				<div class="col-sm-3">
					<input type="text" id="product_name" name="product_name" class="form-control" placeholder="상품 이름를 입력해주세요."/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b><fmt:message bundle="${bundle }" key="product_name"/></b></label>
				<div class="col-sm-3">
					<input type="number" id="product_price" name="product_price" class="form-control" placeholder="상품 가격을 입력해주세요."/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b><fmt:message bundle="${bundle }" key="filename"/></b></label>
				<div class="col-sm-3">
					<input type="file" id="filename" name="filename" class="form-control"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b><fmt:message bundle="${bundle }" key="manufac"/></b></label>
				<div class="col-sm-3">
					<input type="text" name="manufact" class="form-control" placeholder="상품 제조사를 입력해주세요."/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b><fmt:message bundle="${bundle }" key="category"/></b></label>
				<div class="col-sm-3">
					<input type="text" id="category" name="category" class="form-control" placeholder="상품 분류를 입력해주세요."/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b><fmt:message bundle="${bundle }" key="product_stock"/></b></label>
				<div class="col-sm-3">
					<input type="number" id="product_stock" name="product_stock" class="form-control" placeholder="상품 재고 수량을 입력해주세요."/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b><fmt:message bundle="${bundle }" key="condition"/></b></label>
				<div class="col-sm-1">
					<select name="condition" class="form-control">
						<option value="New"><fmt:message key="condition_new" bundle="${bundle }"/> </option>
						<option value="Old"><fmt:message key="condition_old" bundle="${bundle }"/> </option>
						<option value="Best"><fmt:message key="condition_best" bundle="${bundle }"/> </option>
					</select>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b><fmt:message bundle="${bundle }" key="product_desc"/></b></label>
				<div class="col-sm-5">
					<textarea rows="4" cols="30" id="product_desc" name="product_desc" class="form-control" placeholder="상품 설명을 입력해주세요."></textarea>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-5">
					<input type="button" value="<fmt:message bundle="${bundle }" key="button"/>" onclick="productAddCheck()" class="btn btn-secondary"/>
				</div>
			</div>
		</form>
	</div>
	
	<hr>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>