<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!-- Customer 클래스의 필드값을 사용하기 위해 useBean태그에서 class에 패키지명.클래스명을 설정했다.
그리고 설정한 참조변수의 이름을 id값에 customer라고 설정하였다. -->
<jsp:useBean id="customer" class="com.exam_usebean.Customer"></jsp:useBean>
<jsp:setProperty property="*" name="customer"/>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Join Result</title>
</head>
<body>
	<h2>회원 정보 입력 결과 출력</h2>
	<%-- <%=customer.getId() %><br>
	<%=customer.getPw() %><br>
	<%=customer.getEmail() %><br>
	<%=customer.getName() %><br>
	<%=customer.getBirth() %><br> --%>
	${customer.id }<br>
	${customer.pw }<br>
	${customer.name }<br>
	${customer.address }<br>
	<hr/>
	<jsp:getProperty property="id" name="customer" />
	<jsp:getProperty property="pw" name="customer" />
	<jsp:getProperty property="name" name="customer" />
	<jsp:getProperty property="address" name="customer" />
	<jsp:getProperty property="email" name="customer" />
</body>
</html>