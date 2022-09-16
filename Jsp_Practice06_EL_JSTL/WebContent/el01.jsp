<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- el태그를 사용할 경우에는 스트립트릿 안에 (지역)변수를 사용할수 없기 때문에, 
	pageContext에 담아서 사용해야한다. -->
	<%
		pageContext.setAttribute("num", 10);
		pageContext.setAttribute("subject", new String[] {"국어","수학","영어","과학"});
	%>
	<% out.print(pageContext.getAttribute("num")); %>
	<hr/>
	<!-- el태그 안에서 호출한 값의 기본 scope범위는 pageContext이며, 원하는 scope의 값을 호출하기 위해서는 
	requesetScope.val , sessionScope.val과 같이 해당 scope객체를 통해 호출할 수 있다. -->
	${num}
	${subject[1] }
	<!-- 즉, requestScope 범위에 담아서 forward를 할 경우에는 request요청이 초기화 되지 않기 때문에
	이전 페이지의 requestScope 값을 가져와서 사용이 가능하다. -->
	${requestScope.scope }

</body>
</html>