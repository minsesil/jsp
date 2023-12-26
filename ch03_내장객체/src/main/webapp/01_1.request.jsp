<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	String name = request.getParameter("name");
	String sNum = request.getParameter("studentNum");
	String gender = request.getParameter("gender");
	String major = request.getParameter("major");
	String[] hobby = request.getParameterValues("hobby");
	
	String gen = "";
	if(gender.equals("M")) {
		gen = "남";
	} else {
		gen = "여";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름 : <%=name %><p/>
학번 : <%=sNum %><p/>
성별 : <%=gen %><p/>
학과 : <%=major %><p/>

<%
	for(int i=0; i<hobby.length; i++) {
		out.print(hobby[i]+" ");
	}
%>
입니다.
</body>
</html>