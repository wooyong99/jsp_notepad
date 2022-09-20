<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Local 클래스 활용하여 다국어처리 -1</title>
</head>
<body>
	<h3>Locale 클래스를 인스턴스로 생성하여 처리</h3>
	<%
		/* request객체의 getLocale()함수를 받는 것은 클라이언트의 local을 불러오는 것이다. 즉, 클라이언트의 locale에 따라서 값이 바뀐다. */
		/* Locale locale = request.getLocale(); */		
 		/* 생성자를 호출하지 않고 상수값을 받아오는 방법도 존재한다. */
		/* Locale locale = Locale.KOREA; */
		/* Locale의 생성자를 호출하는 것은 백엔드에서 직접 설정할수 있다. */
		Locale locale = new Locale("ja","JP");
		
		Date date = new Date();
		DateFormat dateformat = DateFormat.getDateInstance(DateFormat.FULL,locale);
	%>
	<p>국가 : <%=locale.getDisplayCountry() %></p>
	<p>국가 코드 : <%=locale.getCountry() %></p>
	<p>국가 언어 : <%=locale.getDisplayLanguage() %></p>
	<p>국가 언어 코드 : <%=locale.getLanguage() %></p>
	<p><%=dateformat.format(date) %></p>
</body>
</html>