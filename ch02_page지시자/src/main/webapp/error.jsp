<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage = "true" %> <!-- 에러페이지라고 반드시써준다 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Error Page</h1>
<p>다음과 같이 예외가 발생되었습니다</p>
0으로 나누면 안됨
<!-- 에러타입 : <%=exception.getClass().getName() %>
에러메시지 : <%=exception.getMessage() %>-->

</body>
</html>