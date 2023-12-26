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
	전략가<br>
	사고 능력은 인간의 위대한 점 중 하나이다. 인간은 갈대처럼 연약하지만 생각하는 갈대이다.<br>
	블레즈 파스칼

</body>
</html>