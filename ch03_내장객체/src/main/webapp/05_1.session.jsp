<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	session.setAttribute("idkey",id);
	session.setMaxInactiveInterval(60*5);  //세션유지시간 5분
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Session 2페이지</h1>
	<form method="post" action="05_2.session.jsp">
		1.가장 좋아하는 계절은?<p/>
		<input type="radio" name="season" value="봄">봄&emsp;
		<input type="radio" name="season" value="여름">여름&emsp;
		<input type="radio" name="season" value="가을">가을&emsp;
		<input type="radio" name="season" value="겨울">겨울&emsp;<p/><p/>
		
		2.가장 좋아하는 과일은?<p/>
		<input type="radio" name="fruit" value="복숭아">복숭아&emsp;
		<input type="radio" name="fruit" value="메론">메론&emsp;
		<input type="radio" name="fruit" value="수박">수박&emsp;
		<input type="radio" name="fruit" value="딸기">딸기&emsp;<p/><p/>
		
		<input type="submit">
	</form>

</body>
</html>