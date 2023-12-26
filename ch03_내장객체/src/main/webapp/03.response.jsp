<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>sendRedirect EX</h3>
	<%
		response.sendRedirect("03_1.response.jsp");	   //forward와 비슷하다
		//response.sendRedirect("http://www.naver.com");
	
	%>
</body>
</html>