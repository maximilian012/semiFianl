<%@page import="mul.cam.food.dto.BbsDto"%>
<%@page import="mul.cam.food.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	List<MemberDto> list = (List<MemberDto>)request.getAttribute("adminList");
    	int pageAdmin = (Integer)request.getAttribute("pageAdmin");
    	int pageNumber = (Integer)request.getAttribute("pageNumber");
    	String choice = (String)request.getAttribute("choice");
    	String search = (String)request.getAttribute("search");
    	MemberDto login = (MemberDto)session.getAttribute("login");	
    %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<body bgcolor="#e9e9e9">
<meta charset="UTF-8">
<title>Insert title here</title>

 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script type="text/javascript" src="./jquery/jquery.twbsPagination.min.js"></script>
  <style type="text/css">
body {
	margin: 0;
	font-family: 'Noto Sans KR', sans-serif;
}

a {
	text-decoration: none;
}

img {
	width: 100% !important;
}

header {
	width: auto;
	height: 110px;
	background-color: #ff0000;
	/*#ffd26f #ffe64f #fff9ee */
}

header #headerNav {
	width: 1200px;
	margin: 0 auto;
	background-color: #fff9ee;
	height: 110px;
	position: relative;
}

header img {
	float: left;
}

header ul {
	list-style: none;
	float: left;
	margin: 0 auto;
	/* height: 110px; */
	text-align: center;
}

header .member {
	float: right;
}

header ul li {
	float: left;
	font-weight: 700;
	font-size: 20px;
	/* height: 30px; */
	vertical-align: middle;
	margin-top: 40px;
	width: 120px;
}

#headerNav ul li ul {
	width: 1200px;
	background-color: royalblue;
	position: absolute;
	left: 0;
	top: 110px;
	padding: 0;
	z-index: 10;
}

header .categoryHide {
	display: none;
}

header a {
	cursor: pointer;
}

.nav-link {
	font-size: 22px;
}

#main-image {
	width: 100%;
	height: 700px;
	overflow: hidden;
	position: relative;
	margin: 0 auto;
}

#main-image ul {
	list-style: none;
	width: 625%;
	position: absolute;;
	top: 0;
	left: 0;
	margin: 0;
	padding: 0;
	height: 700px;
}

.image_box li {
	float: left;
	display: inline-block;
	width: 16%;
}

main {
	/* 	width: 1200px; */
	margin: 0 auto;
}

#recipe-post {
	margin: 0 auto;
}
.card p img {
	max-width: 100% !important;
	height: 370px !important;
}

@media screen and (min-width:1024px) {
	.g-3 {
		width: 1300px;
		margin: 0 auto;
	}
	.input-group {
		width: 1256px;
		margin: 50px auto;
	}
}

.carousel-control-prev-icon:after {
	content: "";
}

.carousel-control-next-icon:after {
	content: "";
}

.carousel-indicators [data-mdb-target] {
	width: 30px;
	height: 10px;
	background-color: #fff9ee;
}

.row-cols-3>* {
	margin-top: 50px;
}

.carousel-caption {
	right: 64%;
	bottom: 14.25rem;
	font-size: 45px;
	width: 30%;
	left: 10%;
	font-weight: 700;
}

.carousel-item h5 {
	font-size: 2.25rem;
}

@media screen and (min-width:1024px) {
	.center-image {
		width: 100%;
		background-color: rgb(244, 238, 231);
		margin: 50px 0;
	}
	.center-style {
		width: 1400px;
		margin: 0 auto;
	}
	.tag-style {
		text-align: center;
		font-size: 24px;
		border: 2px solid orange;
		border-radius: 31px;
		padding: 5px 0;
	}
	.tag-style a {
		width: 100%;
		display: inherit;
	}
	.small-img {
		height: 400px;
		background-color: #fff9ee;
	}
	.small-img p img {
		height: 200px !important;
	}
	.small-img p {
		margin-top: 20px;
	}
}

.small-img:hover {
	color: red;
	cursor: pointer;
}

.arrow-img {
	width: 100px;
	height: 100px;
}

.tag-style a:hover {
	text-decoration: underline;
}

.card-ceter-title {
	text-align: center;
	margin-top: 30px;
}

.card-bottom-title {
	text-align: center;
}

.carousel-item {
	transition-duration: .9s;
}

.my-change {
	transition: transform 0.2s ease-in-out;
	transition-duration: 1s;
}

@media screen and (max-width:1023px) {
	.small-img p img {
		height: 160px !important;
		background-color: orange;
	}
}

.cursor-change{
	cursor: pointer;
}
</style>
	
  
  
  
</head>
<body>
	
	<!-- login 전일 때 나오는 Navbar -->
	<%
	if (login == null) {
	%>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<!-- Container wrapper -->
		<div class="container-fluid" style="height: 100px; font-weight: 700;">
			<!-- Toggle button -->
			<button class="navbar-toggler" type="button"
				data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars"></i>
			</button>

			<!-- Collapsible wrapper -->
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<!-- Navbar brand -->
				<a class="navbar-brand mt-2 mt-lg-0" href="#"> <img
					src="resources/images/logo.png" height="100" alt="Logo"
					loading="lazy" />
				</a>
				<!-- Left links -->
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" href="#">카테고리</a></li>
					<li class="nav-item"><a class="nav-link" href="bbslist.do">게시판</a></li>
					<li class="nav-item"><a class="nav-link" href="login.do">로그인</a></li>
					<li class="nav-item"><a class="nav-link" href="regi.do">회원가입</a></li>
				</ul>
				<!-- Left links -->
			</div>
			<!-- Collapsible wrapper -->

			<!-- Right elements -->						
		<!-- Right elements -->
		</div>
		<!-- Container wrapper -->
	</nav>
	<%
	}
	%>
	<!-- Navbar -->
	
	<%
	if (login != null) {
	%>
	<!-- login 하면 나오는 Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<!-- Container wrapper -->
		<div class="container-fluid" style="height: 100px; font-weight: 700;">
			<!-- Toggle button -->
			<button class="navbar-toggler" type="button"
				data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars"></i>
			</button>

			<!-- Collapsible wrapper -->
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<!-- Navbar brand -->
				<a class="navbar-brand mt-2 mt-lg-0" href="#"> <img
					src="resources/images/logo.png" height="100" alt="Logo"
					loading="lazy" />
				</a>
				<!-- Left links -->
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" href="#">카테고리</a></li>
					<li class="nav-item"><a class="nav-link" href="bbslist.do">게시판</a></li>
				</ul>
				<!-- Left links -->
			</div>
			<!-- Collapsible wrapper -->

			<!-- Right elements -->
			<div clas="dropdown">
				<p style="margin: 0 15px 0 0"><%=login.getUser_id()%>
					님 반갑습니다!
				</p>
			</div>
			<div class="dropdown">
				<a class="dropdown-toggle d-flex align-items-center hidden-arrow"
					href="#" id="navbarDropdownMenuAvatar" role="button"
					data-mdb-toggle="dropdown" aria-expanded="false"> <img
					src="https://mdbcdn.b-cdn.net/img/new/avatars/2.webp"
					class="rounded-circle" height="25"
					alt="Black and White Portrait of a Man" loading="lazy" />
				</a>

				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdownMenuAvatar">
					<li><a class="dropdown-item" href="#">My profile</a></li>
					<li><a class="dropdown-item" href="#">Settings</a></li>
					<li><a class="dropdown-item" href="#">Logout</a></li>
				</ul>
			</div>
		<%
		}
		%>
		<!-- Right elements -->
		</div>
		<!-- Container wrapper -->
	</nav>


<button type="button" onclick="location.href='bbslist.do'" class="btn btn-primary">목록으로</button>
<div align="center">
<table  style="text-align: center; width: 1000px;" class="table table-striped">

<col width="100"><col width="100"><col width="300"><col width="100">
<col width="100"><col width="100">


<thead class="thead-blue">
<tr>
	<th>이름</th><th>아이디</th><th>가입일</th><th>게시글</th>
	<th>댓글</th><th>가입승인</th>
</tr>

</thead>

<tbody>
 <%
	for(int i = 0; i < list.size(); i++){
		MemberDto admin = list.get(i);
		%>
		<tr>
			
			<td>
				<select id="choice">
						<option value=""><%=admin.getName() %></option>
						<option value="" data-toggle="modal"
							 onclick="msgModal('<%=admin.getUser_id()%>','<%=login.getUser_id()%>')">메세지 보내기</option>
				</select>
			
			</td>
			<td>
			
			<a href="" id="mypageModal" class="btn" data-toggle="modal" onclick="callModal('<%=admin.getUser_id()%>')"
			 data-target="#myModal" style="color: blue">
						<%=admin.getUser_id() %>
					</a>
			
			</td>
		
		
			<td><%=admin.getRegdate() %></td>
			<td>
			<a href="" id="mypageModal2" class="btn" data-toggle="modal" onclick="callModal2('<%=admin.getUser_id()%>')"
			 data-target="#myModal" style="color: blue">
						보기
					</a>
		
			</td>
			<td>
			<a href="" id="mypageModal3" class="btn" data-toggle="modal" onclick="callModal3('<%=admin.getUser_id()%>')"
			 data-target="#myModal" style="color: blue">
						댓글보기
					</a>
			
			</td>
			<td>
			
			<%
			if(admin.getDelflg().equals("0")){
			
				
			%>
			추방회원
			<%
			}else if(admin.getAuth().equals("1")){
			
				
			%>
			관리자
			<%
			}else{
			%>
			
			 <button type="button" value="" class=""
			  onclick="location.href='adminDel.do?seq=<%=admin.getSeq()%>&writer=<%=admin.getUser_id()%>'">
			 회원 추방</button>
			<%
			}
			%>
			
			
			</td>
		</tr>
		
		
		
<%
	}
%> 

</tbody>

</table>

<br>


</div>
<div class="container">
    <nav aria-label="Page navigation">
        <ul class="pagination" id="pagination" style="justify-content: center"></ul>
    </nav>
</div>

<br><br>
<div class="form-row align-items-center d-flex justify-content-center align-items-center container" style="margin: 0 auto;">
<select id="choice">
	<option value="">검색</option>
	<option value="user_id">아이디</option>
	<option value="name">이름</option>
</select>

<div class="col-sm-2 my-1">
	<input type="text" id="search" class="form-control"  value="<%=search %>">
</div>

<button type="button" onclick="searchBtn()" class="btn btn-primary">검색</button>
</div>



<script type="text/javascript">



let search = "<%=search %>";
console.log("search = " + search);
if(search != ""){
	let obj = document.getElementById("choice");
	obj.value = "<%=choice %>";
	obj.setAttribute("selected", "selected");
}



function searchBtn() {
	let choice = document.getElementById('choice').value;
	let search = document.getElementById('search').value;
	location.href = "adminList.do?choice=" + choice + "&search=" + search;
}

function goPage( pageNumber ) {
	let choice = document.getElementById('choice').value;
	let search = document.getElementById('search').value;
	
	location.href = "bbslist.do?choice=" + choice + "&search=" + search + "&pageNumber=" + pageNumber;	
}

$('#pagination').twbsPagination({
	startPage: <%=pageNumber+1%>, 
    totalPages: <%=pageAdmin%>,
    visiblePages: 10,
    first:'<span srid-hidden="true">«</span>',
    prev:"이전",
    next:"다음",
    last:'<span srid-hidden="true">»</span>',
    initiateStartPageClick:false, // onclick 자동실행 방지
    onPageClick: function (event, page) {
        //alert(page);
        let choice = document.getElementById('choice').value;
        let search = document.getElementById('search').value;
    	location.href = "adminList.do?choice=" + choice + "&search=" + search + "&pageNumber=" + (page-1);	
    }
})



</script>
<script type="text/javascript">

//마이페이지 모달
function callModal(id){
	
	//alert(id);
	$.ajax({
		url: "./getuserInfo.do",
		type: "post",
		data: {"user_id": id},
		success:function(data){
			
			//alert('success');
				//alert(JSON.stringify(data));
			$(".modal-body").html("");
			$("#modals").empty();
				let str = "<tr class='modal-bodybody'>"
						+ "<td>아이디: " + data.user_id  + "</td>"
						+ "</tr>"
						+ "<tr>"
						+ "<td>나이: " + data.age + "</td>"
						+ "</tr>"
						+ "<tr>"
						+ "<td> 주소: " + data.address + "</td>"
						+ "</tr>";
						
				$(".modal-body").append(str);// id tbody인 곳에 붙이기
				
			$(".modal-title").html("");
				let str2 = data.name
				$(".modal-title").append(str2);// id tbody인 곳에 붙이기
			
		},
		error:function(){
			
			alert('fail');
		}
	});
	
}
//게시글 모달
function callModal2(id){
	
	//alert(id);
	$.ajax({
		url: "./getListCnt.do",
		type: "post",
		data: {"user_id": id},
		success:function(data){
			
			//alert('success');
				//alert(JSON.stringify(data));
				//alert(data[2].seq);
				$(".modal-title").html("");
				$("#modals").empty();
				if(data == ""){
					$(".modal-title").html("");
					let str2 = "데이터 없음";
					$(".modal-title").append(str2);
				}else{
						
					$(".modal-body").html("");
				
					let head = 	"<tr>"
						+"<td>글번호</td>"
						+"<td>글제목</td>"
						+"<td>태그</td>"
						+"<td>별점</td>"
						+"</tr>"
					$("#modals").append(head);// id tbody인 곳에 붙이기
					}
				
			
				$(".modal-body").html("");
			$.each(data, function(index, item){
				let str = "<tr class='modal-bodybody'>"
						+ "<td>" + item.seq  + "</td>"
						+ "<td><a href='#' onclick = 'goDetail("+item.seq+")'>" + item.title + "</a></td>"
						+ "<td>" + item.tag + "</td>"
						+ "<td>" + item.star + "</td>"
						+ "</tr>";
				$("#modals").append(str);// id tbody인 곳에 붙이기
				
		/* 	$(".modal-title").html("");
				let str2 = data.name
				$(".modal-title").append(str2);// id tbody인 곳에 붙이기 */
			});
		},
		error:function(){
			
			alert('fail');
		}
	});
	
}
// 댓글 모달
function callModal3(id){
	
	//alert(id);
	$.ajax({
		url: "./getComentCnt.do",
		type: "post",
		data: {"user_id": id},
		success:function(data){
			
			//alert('success');
				//alert(data);
				$(".modal-title").html("");
				$("#modals").empty();
				if(data == ""){
					$(".modal-title").html("");
					let str2 = "데이터 없음";
					$(".modal-title").append(str2);
				}else{
						
					$(".modal-body").html("");
				
					let head = 	"<tr>"
						+"<td>글번호</td>"
						+"<td>작성한 댓글</td>"
						+"</tr>"
					$("#modals").append(head);// id tbody인 곳에 붙이기
					}
				
			$(".modal-body").html("");
				
			$.each(data, function(index, item){
				let str = "<tr class='modal-bodybody'>"
						+ "<td>" + item.seq  + "</td>&nbsp&nbsp&nbsp;"
						+ "<td>" + item.content + "</td>"
						+ "</tr><br>";
						
				$("#modals").append(str);// id tbody인 곳에 붙이기
				
	
			});
		},
		error:function(){
			
			alert('fail');
		}
	});
	
}
function goDetail(seq){
	
	console.log(seq);
	location.href = "bbsdetail.do?seq="+seq;
	
}

function msgModal(sendId, recivId){
	
	
	alert(sendId);
	alert(recibId);
}




</script>
<!-- 회원관리 모달 -->
 <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title"></h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <table id="modals" border="1" style="text-align: center;">
        <div class="modal-body"  >
         
        </div>
      
        </table>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</body>
</html>