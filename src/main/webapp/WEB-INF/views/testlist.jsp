<%@page import="mul.cam.food.dto.BbsDto"%>
<%@page import="java.util.List"%>
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


List<BbsDto> list = (List<BbsDto>)request.getAttribute("testlist");
%>
<h3>게시판2222</h3>
<table class="table table-hover table-sm" style="width: 1000px">
<col width="70"><col width="600"><col width="100"><col width="150">
<thead class="thead-dark">
<tr>
	<th>번호</th><th>별점</th><th>태그</th><th>작성자</th>
</tr>
</thead>
<tbody>

<%
if(list == null || list.size() == 0){
	%>
	<tr>
		<td colspan="4">작성된 글이 없습니다</td>
	</tr>
	<%
}else{
	
	for(int i = 0;i < list.size(); i++)
	{
		BbsDto dto = list.get(i);
		%>
		<tr>
				<td>
				
					<a>
						<%=dto.getTitle() %>
						
					</a>
				</td>
				<td>
				<%=dto.getStar() %>
						
				</td>
				<td>
				<%=dto.getTag() %>
						
				</td>
						
				
				<%
			}	
			%>
		</tr>
		<%
	}

%>

</tbody>
</table>
<br><br>
<a href="bbswrite.do">글쓰기</a>

</body>
</html>