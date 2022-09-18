<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%
	request.setCharacterEncoding("UTF-8");
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 태그 활용하여 이미지 출력하기</title>
<style type="text/css">
	.lst_type{
		overflow:hidden;
		list-style: none;
		width:80%;
		padding:0 10px 10px;
		margin: 0 auto;
		
	}
	.lst_type>li{
		overflow:hidden;
		clear:both;
		color:black;
		font-family:'돋움', Dotum;
		font-size:12px;
		line-height:100px;
		border-bottom:2px solid lightgray;
		position:relative;
	}
	.lst_type li span {
		color:bluel;
		margin-left:330px;
		font-family:'돋움', Dotum;
		font-size:14px;
		font-weight:bold;
	}
	.lst_type li img{
		vertical-align:middle;
		width:200px;
		height:250px;
	}
	.lst_type li a{
		text-decoration: none;
		margin-left:360px;
		font-size:14px;
		font-famaily:'돋움',Dotum;
		font-weight:bold;
		color:black;
	}
	.lst_type li a:hover{
		text-decoration: underline;
	}
</style>
</head>
<body>
	<ul class="lst_type">
		<li>
			<span style="margin-left:70px; margin-right:100px;">이미지</span>
			<span>이미지 이름</span>
			<span>선택하기</span>
		</li>
		<c:forEach var="img" begin="1" end="3">
		<li>
			<img alt="imge${img}" src="./images/image${img }.PNG">
			<a href="#">image${img}</a>
			<a><input type="radio" name="checkitem" value="img${img }"/></a>
		</li>
		</c:forEach>
	</ul>
</body>
</html>