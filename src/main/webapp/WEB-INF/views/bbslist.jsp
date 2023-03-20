<%@page import="mul.cam.food.dto.BbsDto"%>
<%@page import="mul.cam.food.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<style type="text/css">
body {
	font-size: 16px;
    font-weight: normal;
    line-height: 1.5;
    color: #777;
    letter-spacing: 0;
    -webkit-text-size-adjust: none;

}


.header{
	position: relative;
    width: 100%;
    min-width: 1300px;
    height: 150px;
    box-sizing: border-box;
    z-index: 13;
    background: #f5f5dc;
    font-family: 'Noto Sans KR', sans-serif;

}




.header > .bob_head {
    width: 1280px;
    height: 105px;
    margin: 0 auto;
    position: relative;
}

 .header > .bob_head > h1 {
position: relative;
    float: left;
    display: block;
    width: 130px;
    height: 105px;

}

 .header > .bob_head > h1 > .logo {
position: absolute;
    top: 38%;
    display: block;
    width: 240px;
    height: 140px;
    margin-left: 0px;
    margin-top: -33px;
    background: url(./images/homebob.png) no-repeat;
    background-size: 140px;
}

.right-header {
	float:right;
}

.header > .bob_head> .gnb_head_area{
width: 1070px;
    height: 75px;
    /* margin-left: 370px; */
    position: relative;
    padding-top: 46px;
    text-align: left;
    vertical-align: top;
    display: table;
    font-size: xx-large;
}

.header > .bob_head > .gnb_head_area .bob_head_form {
    float: left;
    position: relative;
}


.header > .bob_head > .gnb_head_area .tag_top {
    text-align: right;
    float: right;
    width: 300px;
    overflow: hidden;
}


.main {
	margin-top: 2rem;
}

.search_area {
width: auto;
    height: 500px;
    border: 1px solid;
}


.top-5{
	top: -5px;
}

.category_tag_div {
	height: 5rem;
}

.category_tag {
	width: 33%;
	float: left;
	font-size: xx-large;
}

.category-main{
	margin-top: 1rem;
	position: relative;
    margin: 0 auto;
    vertical-align: top;
    display: block;
    clear: both;
    border-top: 2px solid #f64646;
}
.category {
    position: relative;
    width: 100%;
    display: block;
    clear: both;
    margin-top: 1rem;
    overflow-x: hidden !important;
}

.category-main th {
    font-size: 19px;
    color: #666;
    font-weight: bold;
    border-bottom: 1px solid #bbbbbb;
    background: #f9f9f9;
    padding: 20px;
    width: 100px;
    text-align: center;
}

.category-main td {
    border-bottom: 1px solid #bbbbbb;
    padding: 20px;
}

.category-main a {
    font-size: 19px;
    color: #666;
}

.category-main a:after {
    width: 1px;
    height: 18px;
    background: #c2c2c2;
    display: inline-block;
    content: '';
    margin: 0 20px;
}

.bbs-main {
	width: 100%;

	margin-top: 2rem;
}

.bbs-recipt {
	/*width: 25%;  */
	float: left;
	font-size: x-large;
	padding-right: 0.5rem;
    padding-left: 0.5rem;
   -webkit-transform: scale(1);
    cursor: pointer; 
    margin-top: 1rem;
    
}

.bbs-recipt p{
	margin-bottom: 0px;
	 
}
.overflowHidden{
  overflow: hidden;
}
.bbs-thumbnali {
 	width: 255px;
    height: 165px; 
   object-fit:cover; 
   transform:scale(1.0);        

   transition: transform .5s;


   
}
.bbs-recipt:hover  img{
   transform:scale(1.5);
   transition: transform .5s;}


.hash-tag {
	font-size: small;
	float: left;

}

.bbs-table {
margin-left: 1rem;
}

.bob_head_headline {
padding-left: 19rem;
    font-size: 50px;
    margin-top: 0px;
    top: -1rem;
}

.bbs-footer {
position: relative;
    width: 100%;
    min-width: 1300px;
    display: block;
    clear: both;
    padding-bottom: 40px;
    background: #f5f5dc;

}



.content {

position: relative;
    width: 1280px;
    margin: 0 auto;
    vertical-align: top;
    display: block;
    clear: both;
list-style: none;
}

.bss-footer-info {
    margin-top: 38px;
}
.bss-footer-info-left {
	float: left;
    width: 70%;
    line-height: 1.2 !important;

}

.bss-footer-info-right {
float: right;
    text-align: right;
    padding-right: 4rem;
    color: #fff;
}

.bss-footer-info-right select {
padding: 0px 20px;
    border-radius: 20px;
	margin-right:3rem;
    height: 43px;
    color: #666;

}

.bbs-search-form {
width: 60%;
    margin-right: 1rem;
    margin-left: 11rem;
}

.font-color {
	color: black;
}

</style>

</head>
<%
	MemberDto login = (MemberDto)session.getAttribute("login");
	List<BbsDto> list = (List<BbsDto>)request.getAttribute("bbslist");
	String uploadFilePath = (String)request.getAttribute("uploadFilePath");
%> 


<body>
<!--        <div class='header'>
       	<div class="bob_head">
       	 <h1>				
		  <a href="#" class="logo">
		  </a>
		 </h1>
		 <div class="gnb_head_area">
       	  <div class="bob_head_form">
    	     <div class="dropdown">
				  <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    카테고리
				  </a>
			
				  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
				    <a class="dropdown-item" href="mainhome.do">home</a>
				    <a class="dropdown-item" href="#">Another action</a>
				    <a class="dropdown-item" href="#">Something else here</a>
				  </div>
		 	</div>
       	  </div>
       	  <div class="bob_head_form bob_head_headline">
       	  	<span>게시판</span>       	  
       	  </div>

		  <div class="tag_top">		 						
				<a>
					로그인
				</a>
			 
				<a >
					회원가입
				</a>	
			 </div>

       	</div>
		 
       	</div>
       </div> -->
       
       	<nav class="navbar navbar-expand-lg navbar-light bg-light"
		style="background-color: red !important;">
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
					<li class="nav-item"><a class="nav-link" href="login.do">로그인</a></li>
					<li class="nav-item"><a class="nav-link" href="#">회원가입</a></li>
				</ul>
				<!-- Left links -->
			</div>
			<!-- Collapsible wrapper -->

			<!-- Right elements -->
			<div class="d-flex align-items-center">
				<!-- Icon -->
				<a class="text-reset me-3" href="#"> <i
					class="fas fa-shopping-cart"></i>
				</a>

				<!-- Notifications -->
				<div class="dropdown">
					<a class="text-reset me-3 dropdown-toggle hidden-arrow" href="#"
						id="navbarDropdownMenuLink" role="button"
						data-mdb-toggle="dropdown" aria-expanded="false"> <i
						class="fas fa-bell"></i> <span
						class="badge rounded-pill badge-notification bg-danger">1</span>
					</a>
					<ul class="dropdown-menu dropdown-menu-end"
						aria-labelledby="navbarDropdownMenuLink">
						<li><a class="dropdown-item" href="#">Some news</a></li>
						<li><a class="dropdown-item" href="#">Another news</a></li>
						<li><a class="dropdown-item" href="#">Something else here</a>
						</li>
					</ul>
				</div>
				<!-- Avatar -->
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
			</div>
			<!-- Right elements -->
		</div>
		<!-- Container wrapper -->
	</nav>
       
    <div class="container main">
	   	<div class="category_tag_div">
	   	    <div class="category_tag text-center">			
			#따뜻한
			</div>
			<div class="category_tag text-center">
			#든든한
			</div>
			<div class="category_tag text-center">
			#맛있는
			</div>
	   	</div>

      <form class="d-flex">
      	<select class="form-select" id="choice" name="choice">
					<option selected>검색</option>
					<option value="title">제목</option>
					<option value="content">내용</option>
					<option value="writer">작성자</option>
		</select>
        <input id="search" name="search" class="form-control me-2 bbs-search-form" type="search" placeholder="따뜻한 한끼를 검색해 보세요" aria-label="Search">
        <button class="btn btn-outline-success" type="button" onclick="bbssearch()">search</button>
      </form>
      
      <div class="category category-main">
      	<table>
			<tbody>				
				<tr>
					<th>종류</th>
					<td>
					
					<a href="">밥</a>
					
					<a href="">반찬</a>
					
					<a href="">국물</a>
					
					<a href="">면</a>
					
					<a href="">디저트</a>
					
					<a href="">분식</a>
					
					<a href="">샐러드</a>
					
					<a href="">음료</a>
					
					<a href="">기타</a>
					
					</td>
				</tr>
				
				<tr>
					<th>재료</th>
					<td>
					
					<a href="">쇠고기</a>
					
					<a href="">돼지고기</a>
					
					<a href="">닭고기</a>
					
					<a href="">채소</a>
					
					<a href="">해물</a>
					
					<a href="">계란</a>
					
					<a href="">유제품</a>
					
					<a href="">기타</a>
					
					</td>
				</tr>
				
				<tr>
					<th>방법</th>
					<td>
					
					<a href="">구이</a>
					
					<a href="">찜</a>
					
					<a href="">국탕찌개</a>
					
					<a href="">볶음</a>
					
					<a href="">조림</a>
					
					<a href="">튀김</a>
					
					<a href="">무침·비빔</a>
					
					<a href="">기타</a>
					
					</td>
				</tr>
				
				<tr>
					<th>테마</th>
					<td>
					
					<a href="">스피드</a>
					
					<a href="">브런치</a>
					
					<a href="">집밥</a>
					
					<a href="">야식</a>
					
					<a href="">간식</a>
					
					<a href="">도시락</a>
					
					<a href="">1인분</a>
					
					<a href="">해장</a>
					
					<a href="">채식</a>

					<a href="">다이어트</a>
					
					</td>
				</tr>
				
				<tr>
					<th>기념일</th>
					<td>
					
					<a href="">명절</a>
					
					<a href="">생일</a>
					
					<a href="">카레데이</a>
			
					<a href="">크리스마스</a>
					
					</td>
				</tr>			
				
			</tbody>
		</table>
      </div>
      
      <div class="bbs-main">
      <!-- 게시판 소개글? -->
      <h2 class="text-center">
      	전체 게시판
      </h2>
      
      <!-- 게시판 메인 -->
      	<table class="bbs-table">
		      	
		<%
		if(list == null || list.size() == 0){
		%>
		<tbody>
			<tr>
				<td colspan="4">작성된 글이 없습니다</td>
			</tr>
		</tbody>

	    <%
		}else{
		%>
		
<tbody>
      			<tr>
		<%
		
			for(int i = 0;i < list.size(); i++)
			{
				BbsDto dto = list.get(i);
		%>
			<td class="bbs-recipt" onclick="location.href = 'bbsdetail.do?seq=<%=dto.getSeq() %>'">
						<div class="overflowHidden text-center bbs-thumbnali">
							<%-- <img alt="" src="<%=dto.getThumbnail()%>" class="text-center"> --%>
							<%=dto.getThumbnail()%>
						</div>			
						<p id="recipt-title"><%=dto.getTitle() %></p>
						<div class="hash-tag" id="recipt-hashtag">
						 <span><%=dto.getTag() %></span>
						</div>
						<input hidden id="seq" name="seq" value="<%=dto.getSeq() %>"/>						
			</td>
		<%
			}
		}
		%>
		</tr>
		</tbody>
  
      	</table>  	
  	   </div>
      
	</div>
	
	<button onclick="location.href='bbswrite.do'">글쓰기</button>

	<footer class="bg-dark text-center text-white">
		<!-- Grid container -->
		<div class="container p-4">
			<!-- Section: Social media -->
			<section class="mb-4">
				<!-- Facebook -->
				<a class="btn btn-outline-light btn-floating m-1" href="#!"
					role="button"><i class="fab fa-facebook-f"> <img
						src="resources/images/facebook.png">
				</i></a>

				<!-- Twitter -->
				<a class="btn btn-outline-light btn-floating m-1" href="#!"
					role="button"><i class="fab fa-twitter"></i></a>

				<!-- Google -->
				<a class="btn btn-outline-light btn-floating m-1" href="#!"
					role="button"><i class="fab fa-google"></i></a>
			</section>
			<!-- Section: Social media -->

			<!-- Section: Text -->
			<section class="mb-4">
				<p>3조 프로젝트</p>
			</section>
			<!-- Section: Text -->
		</div>
		<!-- Grid container -->

		<!-- Copyright -->
		<div class="text-center p-3"
			style="background-color: rgba(0, 0, 0, 0.2);">
			Copyright2023.Multicampus_3조</div>
		<!-- Copyright -->
	</footer>
<!-- 	
	<footer class="bbs-footer">
		<div class="container bbs-footerMenu">
		   	<div class="category_tag_div">
		   	    <a class="category_tag text-center font-color">			
				 인기 레시피
				</a>
				<a class="category_tag text-center font-color">
				 셰프의 팁
				</a>
				<a class="category_tag text-center font-color">
				 신규 레시피
				</a>
		   	</div>
		</div>
		<div class="container category_tag_div">
			<div class="bss-footer-info-left text-center">
				<h3>3조세끼</h3>
				<span class="copy">Copyright ⓒ3조세끼 All Rights Reserved.</span>
			</div>
			<div class="bss-footer-info-right text-center">
				<select name="" id="" title="패밀리 사이트 바로가기" onchange="if(this.value) window.open(this.value);">
					<option value="0">SITE Map</option>
					<option value="">메인</option>
					<option value="">글쓰기</option>					
				</select>
			</div>
		</div>
	</footer> -->
<script>
function bbssearch() {
	let searchV = document.getElementById('search').value;
	console.log(searchV);
	// 추가
	let searchVal = document.getElementById('choice').value;
	console.log(searchVal);
	
	$.ajax({
		url:"http://localhost:8090/semiFinal/search.do",
		type:"post",
		dataType: "json",
		data: {"search": searchV, "choice": searchVal},
		async:true,
		success:function( list ) {
			alert(JSON.stringify(list))
			//list.map((dto)=> alert(dto.name))
		},
		error:function() {
			alert('error');
		}
	})
	
}

function bbsdetail() {
	let seq = document.getElementById('seq').value;
	console.log(seq)
	location.href = "bbsdetail.do?seq="+seq;
}

</script>


</body>
</html>



