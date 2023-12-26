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
	중재자<br>
	금이라 해서 다 반짝이는 것이 아니니, 방황하는 자가 모두 길을 잃은 것은 아니다.<br>
	오래되었어도 강한 것은 시들지 않으니, 깊은 뿌리에는 서리가 닿지 못한다.<br>
	J. R. R. 톨킨
</body>
</html>