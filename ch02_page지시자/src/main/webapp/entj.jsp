<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String mbti = request.getParameter("mbti");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<b><%=name %></b>님의 MBTI는 <b><%=mbti%></b> 입니다.<br><br>
	통솔자<br>
	당신의 시간은 유한하다. 그러니 다른 사람의 삶을 사느라 시간을 낭비하지 말라.<br>
	스티브잡스
</body>
</html>