<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- CDN 방식 사용 x --> 
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<meta charset="UTF-8">
<style type="text/css">
	.jumbotron{
		padding-top:40px;
		padding-bottom:40px;
	}
	body>.container{
		padding-top:40px;
		padding-bottom:40px;
	}
	div.form-group.row{
		padding-top:7px;
		padding-bottom:7px;
	}
</style>
<title>Add Product</title>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="jumbotron bg-secondary">
		<div class="container">
			<div class="text-center">
				<h1 class="display-3">상품 추가</h1>
			</div>
		</div>
	</div>
	<div class="container">
		<form name="newProduct" action="./processAddProduct.jsp" method="post" class="form-horizontal" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2"><b>Product ID</b></label>
				<div class="col-sm-3">
					<input type="text" name="product_Id" class="form-control" placeholder="상품 코드를 입력해주세요."/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>Product Name</b></label>
				<div class="col-sm-3">
					<input type="text" name="product_name" class="form-control" placeholder="상품 이름를 입력해주세요."/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>Product Price</b></label>
				<div class="col-sm-3">
					<input type="number" name="product_price" class="form-control" placeholder="상품 가격을 입력해주세요."/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>Product Image</b></label>
				<div class="col-sm-3">
					<input type="file" name="filename" class="form-control"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>Product Manufact</b></label>
				<div class="col-sm-3">
					<input type="text" name="manufact" class="form-control" placeholder="상품 제조사를 입력해주세요."/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>Product Category</b></label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control" placeholder="상품 분류를 입력해주세요."/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>Product Stock</b></label>
				<div class="col-sm-3">
					<input type="number" name="product_stock" class="form-control" placeholder="상품 재고 수량을 입력해주세요."/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>Product Condition</b></label>
				<div class="col-sm-1">
					<select name="condition" class="form-control">
						<option value="New">New</option>
						<option value="Old">Old</option>
						<option value="Best">Best</option>
					</select>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><b>Product Description</b></label>
				<div class="col-sm-5">
					<textarea rows="4" cols="30" name="product_desc" class="form-control" placeholder="상품 설명을 입력해주세요."></textarea>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-5">
					<input type="submit" value="Enter" class="btn btn-secondary"/>
				</div>
			</div>
		</form>
	</div>
	
	<hr>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>