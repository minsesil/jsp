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
String name = request.getParameter("name");

%>
include ActionTag의 포함되는 페이지입니다.<p/>
<%=name %>Fighting!!!
</body>
</html>