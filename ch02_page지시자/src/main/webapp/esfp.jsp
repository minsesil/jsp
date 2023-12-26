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
	활동가<br>
	당신이 생계를 위해 어떤 일을 하는지는 관심이 없다. <br>
	당신이 추구하는 것은 무엇이고 가슴이 시키는 일을 해낼 수 있다고 생각하는지 궁금할 뿐이다.<br>
	오리아 마운틴 드리머
</body>
</html>