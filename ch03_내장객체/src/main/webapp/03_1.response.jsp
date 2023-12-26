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
	if(request.getProtocol().equals("HTTP/1.1")) { // HTTP/1.0버전일때
		response.setHeader("Cache-control", "no-cache");   
	} else {
		response.setHeader("Pragma", "no-cache");   // HTTP/1.0버전일때
	}
%>
<h1>Response 다음페이지</h1>
	03.response.jsp이 03_1.response.jsp파일로 바로 클라이언트에게 보여줌

</body>
</html>