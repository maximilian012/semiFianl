<%@page import="java.util.List"%>
<%@page import="mul.cam.food.dto.BbsDto"%>
<%@page import="mul.cam.food.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
MemberDto myData = (MemberDto) request.getAttribute("myData");
List<BbsDto> myRecipe = (List<BbsDto>) request.getAttribute("myRecipe");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 정보</title>
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css"
	rel="stylesheet" />
<!-- MDB -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"></script>


<style type="text/css">
.hoverStyle:hover{
	color: red !important;
	cursor: pointer;
}

.d-flex p {
	width: 250px;
}

.d-flex p img {
	width: 100% !important;
	height: 200px;
}

.list-group {
	width: 1300px;
	margin: 0 auto;
}

.reqNumber {
	width: 100px !important;
	text-align: center;
	margin-right: 20px;
}

.myStyle {
	border-top: 1px solid #000;
	border-bottom: 1px solid #000;
	width: 1300px;
	padding: 20px 0;
	font-size: 20px;
}
.btn-link {
    --mdb-btn-font-weight: 500;
    --mdb-btn-color: #3b71ca;
    --mdb-btn-hover-color: "" !important;
    --mdb-btn-hover-bg: "" !important; 
    --mdb-btn-focus-color: #3566b6;
    --mdb-btn-active-color: #3260ac;
    --mdb-btn-disabled-color: #9e9e9e;
    --mdb-btn-box-shadow: none;
}
.ms-3{
	margin-left: 0 !important;
}
</style>
</head>
<body>

	<div>
		<%-- <table>
			<tr>
				<th>이름</th>
				<th>이메일</th>
				<th>비밀번호</th>
				<th>주소</th>
			</tr>
			<tr>
				<td><%=myData.getName()%></td>
				<td><%=myData.getEmail()%></td>
				<td><%=myData.getPassword()%></td>
				<td><%=myData.getAddress()%></td>
			</tr>
		</table> --%>

		<ul class="list-group list-group-light">
			<li
				class="list-group-item d-flex justify-content-between align-items-center">
				<div class="d-flex align-items-center">

					<div class="ms-3 myStyle">
						<p class="fw-bold mb-1">나의 정보</p>
						<p class="text-muted mb-0">
							이름 :
							<%=myData.getName()%></p>
						<p class="text-muted mb-0">
							이메일 :
							<%=myData.getEmail()%></p>
						<p class="text-muted mb-0">
							주소 :
							<%=myData.getAddress()%></p>
					</div>
				</div>
			</li>
		</ul>

		<div style="width: 1300px; margin: 0 auto; text-align: center">
			<button type="button" class="btn btn-success"
				style="font-size: 18px; font-weight: 700" onclick="mainhome()">메인홈</button>
			<button type="button" class="btn btn-danger"
				style="font-size: 18px; font-weight: 700" onclick="bbslist()">게시판</button>
		</div>

		<script type="text/javascript">
			function mainhome() {
				location.href = "mainhome.do";
			}
			function bbslist() {
				location.href = "bbslist.do";
			}
		</script>

		<%-- <table>
			<tr>
				<th>썸네일</th>
				<th>제목</th>
				<th>별점</th>
			</tr>
			<%
			for (int i = 0; i < myRecipe.size(); i++) {
				BbsDto recipe = myRecipe.get(i);
			%>
			<tr>
				<td><%=recipe.getThumbnail()%></td>
				<td><%=recipe.getTitle()%></td>
				<td><%=recipe.getStar()%></td>
			</tr>
			<%
			}
			%>
		</table> --%>

		<ul class="list-group list-group-light">


			<%
			if (myRecipe == null || myRecipe.size() == 0) {
			%>
			<li
				class="list-group-item d-flex justify-content-between align-items-center">
				<div class="ms-3">
					<p class="fw-bold mb-1">작성된 글이 없습니다.</p>
				</div>
				</li>
			<%
			} else {
			for (int i = 0; i < myRecipe.size(); i++) {
				BbsDto recipe = myRecipe.get(i);
			%>
			<li
				class="list-group-item d-flex justify-content-between align-items-center hoverStyle">
				<div class="d-flex align-items-center">
					<p class="reqNumber"><%=i + 1%></p>
					<%=recipe.getThumbnail()%>
					<div class="ms-3" style="margin-left: 30px !important;">
						<p class="fw-bold mb-1"><%=recipe.getTitle()%></p>
						<p class="mb-0"><%=recipe.getTag()%></p>						
					</div>
				</div> <%-- <a class="btn btn-link btn-rounded btn-sm" href="#" role="button"><%=recipe.getStar()%></a> --%>
				<p class="btn-link" style="text-align: right;"><%=recipe.getRegdate()%></p>
				<p class="btn-link" style="text-align: right; width: auto;"><%=recipe.getStar()%></p>
			</li>
			<%
			}
			%>
			<nav aria-label="Page navigation example" style="width: 1300px; margin: 0 auto;">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#">Previous</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">Next</a></li>
				</ul>
			</nav>
			<%
			}
			%>

		</ul>

	</div>
</body>
</html>