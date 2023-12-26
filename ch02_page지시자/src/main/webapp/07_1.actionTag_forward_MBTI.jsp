<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
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
<h1>뭐라고 쓰던 안보임(중간다리역할페이지)</h1>
<jsp:forward page='<%=mbti + ".jsp" %>'>
	<jsp:param value="<%=name%>" name = "name" />
</jsp:forward>
 
	<%--  
		if(mbti.equals("intj")){
	%>
	<%
	<jsp:foward page="esfp.jsp"
	%>
	}
	--%>

</body>
</html>