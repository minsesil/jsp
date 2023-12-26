<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage = "error.jsp" %><!-- 에러페이지 경로설정 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
int one = 1;
int zero = 0;
%>
<h1>사용자 에러페이지 만들기</h1>
<p>one과 zero의 사칙연산</p>
one+zero=<%=one+zero %><p/>
one+zero=<%=one-zero %><p/>
one+zero=<%=one*zero %><p/>
one+zero=<%=one/zero %><p/>
</body>
</html>