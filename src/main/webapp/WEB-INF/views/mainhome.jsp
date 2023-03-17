<%@page import="mul.cam.food.dto.BbsDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
List<BbsDto> food = (List<BbsDto>) request.getAttribute("food");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME BOB</title>

<link rel="icon" href="resources/images/logo.png">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap"
	rel="stylesheet">
<!-- CSS only -->
<!-- <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous"> -->
<!-- JavaScript Bundle with Popper -->
<!-- <script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script> -->

<!-- Font Awesome -->
<!-- <link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" /> -->
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

<!-- <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script> -->

<style type="text/css">
body {
	margin: 0;
	font-family: 'Noto Sans KR', sans-serif;
}

a {
	text-decoration: none;
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
/* 
#recipe-post-left {
	width: 600px;
	background-color: pink;
	float: left;
} */
/* .card p:nthimg{
	width: 600px !important;
} */
.card p img {
	max-width: 100% !important;
	height: 400px !important;
}

/* .card-one {
	float: left;
} */

/* 게시글 때문에 조절  */
/* #recipe-post-left table {
	display: block;
}

#recipe-post-left table tbody, #recipe-post-right table tbody {
	display: block;
	width: 600px;
} */

/* .imgSize {
	display: block;
	clear: both;
}

.imgSize td {
	display: block;
}

.imgSize td p {
	display: block;
}

.imgSize td p img {
	width: 100% !important;
	height: 300px;
}

.imgSizeSmall {
	width: 300px;
	float: left;
}

.imgSizeSmall td {
	width: 300px;
}

.imgSizeSmall td p img {
	width: 100% !important;
	height: 250px;
} */

/* #recipe-post-right {
	width: 600px;
	float: left;
	background-color: green;
} */
@media screen and (min-width:1024px) {
	.g-3 {
		width: 1300px;
		margin: 0 auto;
	}
	.input-group {
		width: 1200px;
		margin: 50px auto;
	}
}
/* footer {
	width: 100%;
	height: 140px;
	background-color: #000;
	color: #fff;
	clear: both;
}

#footer {
	width: 1200px;
	margin: 0 auto;
}

footer #footer-text, #footer-icon {
	width: 600px;
	float: left;
	background-color: red;
	height: 140px;
}

footer #footer-text p {
	margin: 0 auto;
}

#footer-icon ul {
	list-style: none;
	float: right;
	display: inline-block;
	margin-top: 50px;
}

#footer-icon ul li {
	float: left;
	width: 100px;
	text-align: center;
} */
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
</style>
</head>

<body>
	<!-- <header>
		<div id="headerNav">
			<img alt="로고이미지" src="resources/images/logo.png" width="100"
				height="100" style="margin-top: 5px;">
			<ul>
				<li><a class="categoryBtn">카테고리</a>
					<ul class="categoryHide">
						<li>종류</li>
						<li>재료</li>
						<li>방법</li>
						<li>테마</li>
						<li>기념일</li>
						<li>도구</li>
					</ul></li>
			</ul>
			<ul class="member">
				<li><a href="test.do">로그인</a></li>
				<li><a href="regi.do">회원가입</a></li>
			</ul>
		</div>
		headerNav end
	</header> -->

	<!-- Navbar -->
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
	<!-- Navbar -->

	<!-- main-image  -->
	<div id="carouselExampleIndicators" class="carousel slide"
		data-mdb-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-mdb-target="#carouselExampleIndicators"
				data-mdb-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-mdb-target="#carouselExampleIndicators"
				data-mdb-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-mdb-target="#carouselExampleIndicators"
				data-mdb-slide-to="2" aria-label="Slide 3"></button>
			<button type="button" data-mdb-target="#carouselExampleIndicators"
				data-mdb-slide-to="3" aria-label="Slide 4"></button>
			<button type="button" data-mdb-target="#carouselExampleIndicators"
				data-mdb-slide-to="4" aria-label="Slide 5"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="resources/images/ohk_main11.jpg" class="d-block w-100"
					alt="ohk_main1" width="100%" height="700" />
				<div class="carousel-caption d-none d-md-block">
					<h5>간편하게 완성하는</h5>
					<h5>브런치 메뉴</h5>
					<p>팬케이크</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="resources/images/ohk_main22.jpg" class="d-block w-100"
					alt="ohk_main2" width="100%" height="700" />
				<div class="carousel-caption d-none d-md-block">
					<h5>쉽고 빠르게</h5>
					<h5>초보 레시피</h5>
					<p>카레 샥슈카</p>
					</div>
			</div>
			<div class="carousel-item">
				<img src="resources/images/ohk_main33.jpg" class="d-block w-100"
					alt="ohk_main3" width="100%" height="700" />
				<div class="carousel-caption d-none d-md-block">
					<h5>향신료의 매력에</h5>
					<h5>푹 빠지고 싶다면?!</h5>
					<p>라이브러리 H</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="resources/images/ohk_main444.jpg" class="d-block w-100"
					alt="ohk_main4" width="100%" height="700" />
			</div>
			<div class="carousel-item">
				<img src="resources/images/ohk_main55.jpg" class="d-block w-100"
					alt="ohk_main5" width="100%" height="700" />
				<div class="carousel-caption d-none d-md-block">
					<h5>간편식이</h5>
					<h5>요리가 되는 팁!</h5>
					<p>순두부 열라면</p>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-mdb-target="#carouselExampleIndicators" data-mdb-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"><img
				src="resources/images/prev.png" style="width: 80px; height: 80px;" /></span>
			<span class="visually-hidden"></span>
		</button>
		<button class="carousel-control-next" type="button"
			data-mdb-target="#carouselExampleIndicators" data-mdb-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"><img
				src="resources/images/next.png" style="width: 80px; height: 80px;" /></span>
			<span class="visually-hidden">Next</span>
		</button>
	</div>
	<!-- main-image end -->

	<main>
		<!-- <div class="input-group">
			<input type="search" class="form-control rounded"
				placeholder="Search" aria-label="Search"
				aria-describedby="search-addon" style="height: 65px;" />
			<button type="button" class="btn btn-outline-primary">search</button>
		</div>

		<div id="carouselExampleIndicators" class="carousel slide"
			data-mdb-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-mdb-target="#carouselExampleIndicators"
					data-mdb-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-mdb-target="#carouselExampleIndicators"
					data-mdb-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-mdb-target="#carouselExampleIndicators"
					data-mdb-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="https://mdbcdn.b-cdn.net/img/new/slides/041.webp"
						class="d-block w-100" alt="Wild Landscape" />
				</div>
				<div class="carousel-item">
					<img src="https://mdbcdn.b-cdn.net/img/new/slides/042.webp"
						class="d-block w-100" alt="Camera" />
				</div>
				<div class="carousel-item">
					<img src="https://mdbcdn.b-cdn.net/img/new/slides/043.webp"
						class="d-block w-100" alt="Exotic Fruits" />
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-mdb-target="#carouselExampleIndicators" data-mdb-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-mdb-target="#carouselExampleIndicators" data-mdb-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div> -->

		<div
			style="width: 100%; background-color: rgb(244, 238, 231); margin: 50px 0">
			<div style="width: 1400px; margin: 0 auto;">
				<img src="resources/images/testimage.jpg" class="img-fluid"
					alt="중간이미지" style="width: 100%; height: 400px;" />
			</div>
		</div>

		<!-- searchMenu end -->
		<div id="recipe-post">
					<h2
				style="margin: 0 auto; text-align: center; font-weight: 700; color: #333333;" onclick="location.href='bbslist.do'">추천레시피</h2>

	
			<%-- <div class="card">
				<%
				for (int i = 0; i < 6; i++) {
					BbsDto dto = food.get(i);
				%>
				<!-- <p class="card-img-top"></p> -->
				<div class="card-one">
					<%=dto.getThumbnail()%>
					<div class="card-body">
						<h5 class="card-title"><%=dto.getTitle()%></h5>
						<p class="card-text"><%=dto.getTag()%></p>
						<a href="#!" class="btn btn-primary">Button</a>
					</div>
				</div>
				<%
				}
				%>
			</div> --%>
			<%-- <div id="recipe-post-left">
				<table style="width: 600px;">
					<tbody>
						<%
						for (int i = 0; i < 3; i++) {
							BbsDto dto = food.get(i);
							if (i == 0) {
						%>
						<tr class="imgSize">
							<td colspan="2"><%=dto.getThumbnail()%>
								<h3><%=dto.getTitle()%></h3>
								<h4><%=dto.getTag()%></h4></td>
						</tr>
						<%
						} else {
						%>
						<tr class="imgSizeSmall">
							<td><%=dto.getThumbnail()%>
								<h3><%=dto.getTitle()%></h3>
								<h4><%=dto.getTag()%></h4></td>
						</tr>
						<%
						}
						}
						%>
					</tbody>
				</table>
			</div>
			<!-- recipe-post-left end -->
			<div id="recipe-post-right">
				<table style="width: 600px;">
					<tbody>
						<%
						for (int i = 3; i < 6; i++) {
							BbsDto dto = food.get(i);
							if (i == 5) {
						%>
						<tr class="imgSize">
							<td colspan="2"><%=dto.getThumbnail()%>
								<h3><%=dto.getTitle()%></h3>
								<h4><%=dto.getTag()%></h4></td>
						</tr>
						<%
						} else {
						%>
						<tr class="imgSizeSmall">
							<td><%=dto.getThumbnail()%>
								<h3><%=dto.getTitle()%></h3>
								<h4><%=dto.getTag()%></h4></td>
						</tr>
						<%
						}
						}
						%>
					</tbody>
				</table>
			</div> --%>
			<!-- recipe-post-right end -->
		</div>
		<!-- recipe-post end -->

		<%-- <div class="row">
			<%
			for(int i =0; i<6; i++){
				BbsDto dto = food.get(i);
			%>
			<div class="col-sm-6">
				<div class="card">
					<div class="card-body">
						<%=dto.getThumbnail() %>
						<h5 class="card-title"><%=dto.getTitle()%></h5>
						<p class="card-text"><%=dto.getTag()%></p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>
			<%
			}
			%>		
		</div> --%>

		<%-- <div class="row row-cols-2 g-3">
			<%
			for (int i = 0; i < 6; i++) {
				BbsDto dto = food.get(i);
			%>
			<div class="col">
				<div class="card">
					<%=dto.getThumbnail()%>
					<div class="card-body">
						<h5 class="card-title"><%=dto.getTitle()%></h5>
						<p class="card-text"><%=dto.getTag()%></p>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div> --%>

		<div class="row row-cols-3 g-3">
				<%
		if(food == null || food.size() == 0){
		%>
			<div class="col">
				<div class="card bg-image hover-zoom">
					작성된 글이 없습니다.
				</div>
			</div>

	    <%
		}else{
		%>
		
		
			<%
			for (int i = 0; i < food.size(); i++) {
				BbsDto dto = food.get(i);
			%>
			<div class="col">
				<div class="card bg-image hover-zoom">
					<%=dto.getThumbnail()%>
					<div class="card-body">
						<h5 class="card-title"><%=dto.getTitle()%></h5>
						<p class="card-text"><%=dto.getTag()%></p>
					</div>
				</div>
			</div>
			<%
			}
		}
			%>
		</div>

	</main>

	<!-- Footer -->
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
	<!-- Footer -->
	<!-- <footer>
		<div id="footer">
			<div id="footer-text">
				<p style="margin-top: 20px;">HOME BOB</p>
				<p>3조 프로젝트</p>
				<p style="margin-top: 40px;">Copyright2023.Multicampus_3조.All
					rights reserved.</p>
			</div>
			<div id="footer-icon">
				<ul>
					<li>Blog</li>
					<li>Youtube</li>
					<li>Instagram</li>
				</ul>
			</div>
		</div>
	</footer> -->

	<script type="text/javascript">
	
	$(document).on('mouseover', '.card', function () {
	
		
		
		/* $(document).ready(function() {
			
			
			/* // header 카테고리 메뉴 접고 펼치기 */
			/* $(".categoryBtn").click(function() {
				//	alert("테스트");
				$(this).next("ul").toggleClass("categoryHide");
			});

		}); */
	</script>
</body>
</html>