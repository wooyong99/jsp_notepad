<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!-- useBean 태그는 데이터를 전달하기 위한 객체(즉 ,Bean)을 생성한 것이다. -->
<jsp:useBean id="member" class="com.sec01.MemberInfo" scope="page"></jsp:useBean>

<!-- setProperty태그는 *을 주게 되면 모든 필드값을 선택하며, member 객체의 setter메소드를 호출하는 것이므로,
필드가의 접근제어자가 private이더라도 set이 가능하다. 또한, parameter의 이름과 property의 값이 같다면 자동으로 할당이 가능하다.-->
<jsp:setProperty property="*" name="member"/>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action태그 활용하여 el태그사용</title>
</head>
<body>
	이름 : ${member.name }<br>
	id : ${member.id }<br>
	pw : ${member.pw }<br>

</body>
</html>