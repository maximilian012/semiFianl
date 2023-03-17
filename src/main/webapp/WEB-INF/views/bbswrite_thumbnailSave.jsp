<%@page import="mul.cam.food.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
	
	<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

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

</style>

	
</head>

<%
	MemberDto login = (MemberDto)session.getAttribute("login");		
%> 
<body>
       <div class='header'>
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
				    <a class="dropdown-item" href="#">Action</a>
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
       </div>
       
	<div style="width: 1000px; height: 1000px;" >
	<main role="main" class="container">
		<form action="thumbnailSave.do" method="post" enctype="multipart/form-data">


					<label for="title">썸네일</label>

					<input type="file" class="form-control" name="thumbnail" id="thumbnail" placeholder="제목을 입력해 주세요">
			<div class="mb-3">

					<label for="title">제목</label>

					<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">

				</div>

			<div class="pt-1 text-right">
				<button class="btn btn btn-success" type="submit"
					style="width: 10%; padding: 5px;">썸네일 저장</button>
				</div>
		</form>

	</main>
	</div>
	
	<div class="b-example-divider "></div>
	<div class="container-fluid ">
  <footer class="py-3 my-4">
    <ul class="nav justify-content-center border-bottom pb-3 mb-3">
      
    </ul>
    <p class="text-center text-muted">© 2023 Company, Inc</p>
  </footer>
  
</div>
	<script type="text/javascript">
				//여기 아래 부분
				$('#summernote').summernote({
					  height: 400,                 // 에디터 높이
					  lang: "ko-KR"


				});
			
  </script>

</body>
</html>