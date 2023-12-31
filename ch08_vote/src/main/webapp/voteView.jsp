<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="vote.*, java.util.*" %>
<jsp:useBean id="vDao" class="vote.VoteDao" />
<%
	int num=0;

	if(!(request.getParameter("num") == null || request.getParameter("num").equals(""))){
		num = Integer.parseInt(request.getParameter("num"));
	}
	
	int sum = vDao.sumCount(num);
	ArrayList<VoteItem> alist = vDao.getView(num);
	
	//객체생성
	VoteList vlist = vDao.getOneVote(num);
	String q = vlist.getQuestion();
	Random r = new Random();

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.outerT {border:1px solid black; border-collapse:collapse;}
	th, td {border:1px solid black;}
</style>
</head>
<body>
	<div align="center">
		<table width="400" class="outerT">
			<tr>
				<th colspan="4">Q : <%=q%></th>
			</tr>
			<tr>
				<td colspan="4">총 투표수 : <%=sum %></td>
			</tr>
			<tr>
				<th width="20">번호</th>
				<th width="100">item</th>
				<th width="220">그래프</th>
				<th width="60">득표수</th>
			</tr>
			<%
				for(int i=0; i<alist.size(); i++){
					VoteItem vItem = alist.get(i);
					String[] item = vItem.getItem();
					int rgb = r.nextInt(255*255*255);
					String rgbHex = Integer.toHexString(rgb); //16진수로 고치기
					String hRGB = "#" + rgbHex;
					
					int ratio = (int)(Math.ceil(vItem.getCount() / (double)sum * 100)); //3개중 하나는 double형으로
					// 5/117 = 4.2
			%>			
			<tr>
				<td><%=i+1%></td>
				<td><%=item[0] %></td>
				<td>
					<table width="<%=ratio %>" height="15">
						<tr>
							<td bgcolor="<%=hRGB%>" style="border:0px"></td>
						</tr>
					</table>
				</td>
				<td><%=vItem.getCount() %></td>
			</tr>
			<%
				}
			%>
		</table>
		<p/>
		<a href="javascript:window.close();">닫기</a>
		
		</div>

</body>
</html>