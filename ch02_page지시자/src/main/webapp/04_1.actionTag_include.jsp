<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
request.setCharacterEncoding("UTF-8");
//String name = request.getParameter("name");
String name = "Korea web JSP";
%>

<h1>Action Tag Include</h1>
<jsp:include page="04_2.actionTag_include.jsp"/><p/>
include ActionTag의 Body 입니다.
</body>
</html>