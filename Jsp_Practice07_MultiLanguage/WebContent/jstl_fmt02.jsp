<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl fmt 태그 이용하여 다국어 처리 (숫자)</title>
</head>
<body>
	<h1>fmt:formatNumber 태그 사용</h1>
	<p>디폴트 값 : <fmt:formatNumber value="12345678" /></p>
	<p>구분단위 제거 : <fmt:formatNumber value="12345678" groupingUsed="false"/></p>
	<p>type - currency : <fmt:formatNumber value="12345678" type="currency"/></p>
	<p>currency symbol 변환 : <fmt:formatNumber value="12345678" type="currency" currencySymbol="$"/>
	<p>type - percent : <fmt:formatNumber value="0.6" type="percent"/>
	<p>소수점 3자리 패턴 설정 : <fmt:formatNumber value="12345678" pattern=".000"/></p>
	<p>정수자릿수 최소 10, 실수자릿수 최소2 : <fmt:formatNumber value="12345678" minIntegerDigits="10" minFractionDigits="2"/></p>
	<p><fmt:formatNumber value="12345678" maxIntegerDigits="10"/>
</body>
</html>