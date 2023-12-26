<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  1~10까지의 합계 -->
	<%--
	<%
		int sum=0;
		for (int i=1; i<10; i++) {
			sum+=i;
		}
	%>
	1~1까지의 합 <%=sum%>
	--%>
	<!-- 방법1 -->
		<%
			int sum = 0;
			for (int i=1; i<=10; i++) {
				if(i<10) {
	    %>
	    	<%=i%>+		<%--<%=(i+"+")%> --%>
	    <% 
			} else {
		%>
			<%=i%>=	<%--<%=(i+"=")%> --%>
		<%
			}
			sum+=i;
			}
		%>
		    <%=sum%>
		    
	<!-- 방법2 -->
		<%
			sum = 0;
			for(int i=1; i<=10; i++) {
				if(i<10) {
					out.print(i+"+");	//중간에 안끊어도됨			
				} else {
					out.print(i+"=");				
				}
				sum += i;
			}	
		%>
		<%=sum %>

</body>
</html>