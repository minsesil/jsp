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
	// 프로그램 안 주석은 java의 주석ㄱ과 동일
	// 메소드 정의 불가
  		String name = "홍길동"; 
		int age = 25;
  	%>  <!-- 자바문법 -->
  	
	나의 이름은 <%=name%> 입니다<br>
	나이는 <%=age%> 입니다. <!-- html문법 -->
	
	내가 쓴 글씨 <%=str%> <!-- !를 쓰면 앞에 쓰나 뒤에쓰나 상관없이 불러올수 있다 -->
	
	<%!
		//메소드는 반드시 여기(!)에서 정의한다.
		String str = "글씨";   
		int me(int a, int b) {
			return a+b;
		}
	%>
	
	메소드: <%=me(3,5)%>
	
	<!-- 주석입니다 -->
	<%
		/*
		  주석입니다
		  여러줄 주석
		 */
		 //한줄 주석
	%>
	
	<%--
		jsp 주석
		한줄에 html과 프로그램이 섞여있을 경우 사용하면 편함 
	--%>

</body>
</html>