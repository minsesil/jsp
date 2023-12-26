<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vote.*, java.util.*" %>
<jsp:useBean id="vDao" class="vote.VoteDao" />

<%
	int num=0;
	
	if(!(request.getParameter("num") == null || request.getParameter("num").equals(""))){
		num = Integer.parseInt(request.getParameter("num"));
	}
	VoteList vlist = vDao.getOneVote(num);
	ArrayList<String> vItem = vDao.getItem(num);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="voteFormProc.jsp" method="post">
		<table>
			<tr>
				<th>Q : <%=vlist.getQuestion() %></th>
			</tr>
			<tr>
				<td>
				<%
				for(int i=0; i<vItem.size(); i++){
					String itemList = vItem.get(i);
					if(vlist.getType() == 1){
						//체크박스	
						out.print("<input type='checkbox' name='itemnum' value='"+ i +"'>"+itemList);
					} else {
						//라디오버튼
						out.print("<input type='radio' name='itemnum' value='"+ i +"'>"+itemList);
					}
					out.print("<br>");
				}
				%>
				</td>
			</tr>
			<tr>
				<td>
				<%
					if(vlist.getActive() == 1) {
					out.print("<input type='submit' value='투표'>");
				%>
					
				<% 
				   } else { 
					out.print("투표");
				   }
				%>
				</td>
				<td>
				<!-- window.open(url,창이름,옵션) -->
				<input type="button" value="결과" onclick="window.open('voteView.jsp?num=<%=num %>','voteView','width=500,height=400')">
				<input type="hidden" name="num" value="<%=num %>">
				</td>			
			</tr>
		</table>

	</form>
</body>
</html>