<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!-- 
java 7 버전 이전부터는 try-catch-finally로 일일이 해제해 주어야한다.
java 9 버전 부터는 try-widh-resource로 간단하게 해줄 수 있다.
 -->
<%
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String emp_id, emp_name, email, phone;
try {
	Class.forName("oracle.jdbc.OracleDriver");
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aie","aie");
	
	st = con.createStatement();
	rs = st.executeQuery("select emp_id,emp_name,email,phone from employee ");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSP를 이용한 ORACLE 연동 </h1><p/>
	<table border="1">
		<tr>
			<th>사원번호</th>
			<th>사원명</th>
			<th>이메일</th>
			<th>폰번호</th>
		</tr>
		<%
		if(rs != null) {
			while(rs.next()) {
				emp_id = rs.getString(1);
				emp_name = rs.getString(2);
				email = rs.getString(3);
				phone = rs.getString(4);
		%>
		<tr>
			<td><%=emp_id %></td>
			<td><%=emp_name %></td>
			<td><%=email %></td>
			<td><%=phone %></td>
		</tr>
		<%
			}
		}
		%>
	</table>
<%
} catch(Exception e) {
	e.printStackTrace();
} //finally {
//	if(rs != null)
//		try{rs.close(); } catch(Exception e) { }
//	if(st != null)
//		try{st.close(); } catch(Exception e) { }
//	if(con != null)
//		try{con.close(); } catch(Exception e) { }
//}
%>
</body>
</html>