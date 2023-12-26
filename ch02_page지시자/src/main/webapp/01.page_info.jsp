<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page info = "jsp 현재페이지 정보" %> <!-- 내가쓰고싶은 정보 : 여러개 써도됨 -->
<%@ page import = "java.util.*" 
		 session="true" 
		 autoFlush="true" %>
<%@ page buffer="16kb" %>
<%@ page trimDirectiveWhitespaces="true" %><!-- 출력화면에서 상위 공백 없애주는 역할 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% Date date = new Date(); %>
<%=this.getServletInfo() %>
<p>현재 날짜와 시간은?</p>
<%=date.toLocaleString() %>
</body>
</html>