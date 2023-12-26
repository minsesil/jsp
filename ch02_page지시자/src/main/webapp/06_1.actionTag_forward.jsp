<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Forward Tag Ex1</h1>
	Foward Tag의 포워딩 되기 전의 페이지 입니다.<p/>
	<jsp:forward page="06_2.action_forward.jsp" />
		
</body>
</html>