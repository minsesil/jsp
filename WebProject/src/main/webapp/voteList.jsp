<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, vote.*" %>  <!-- -->
<jsp:useBean id="vDao" class="vote.VoteDao" /> <!--  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<title>JSP VOTE</title>
<style>
	* {margin: 0 auto;}
	div {width:800px;}
	h2, h5 {text-align:center; }
	.m50 {margin-top:50px;}
	.m30 {margin-top:30px;}
	table {margin-top: 30px; width:800px;}
	table th {text-align:center;}
	a {text-decoration:none; color:black; cursor:pointer;}
</style>

</head>
<body>
	<h2>투표 프로그램</h2>
	<hr>
	
	<h5 class="m30">설문폼</h5>
	<jsp:include page="voteForm.jsp" />
	<%
		
	%>
	<hr>
	
	<b>설문리스트</b>
	<table class="table">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>시작일~종료일</th>
		</tr>
		<%
			ArrayList<VoteList> alist = vDao.getList();
			
			for(int i=0; i<alist.size(); i++){
				//객체생성
				VoteList vlist = alist.get(i);
				int num = vlist.getNum();
				String question = vlist.getQuestion();
				String sdate = vlist.getSdate();
				String edate = vlist.getEdate();
				
				out.print("<tr><td>" + (alist.size()-i) + "</td>");
				out.print("    <td><a href='voteList.jsp?num=" + num + "' > " + question + "</a></td>");
				out.print("    <td class='cen'>" + sdate + "~" + edate + "</td></tr>");
			}
		%>
		
		<tr>
			<td colspan="3" align="right"><a href="voteInsert.jsp">설문 작성하기</a><td>
		</tr>
	</table>
</body>
</html>