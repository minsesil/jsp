<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!-- 페이지지시자 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include Body</title>
</head>
<body>
<h1>include 하기</h1>
<%@ include file = "03_1.include_Top.jsp" %> <!-- include지시자 -->
<p/><p/></p>
<%@ include file = "03_2.include_Bottom.jsp" %>
<p/><p/></p>
include 지시자의 Body부분 입니다.<p/>
</body>
</html>