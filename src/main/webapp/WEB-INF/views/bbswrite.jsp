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

	
</head>

<%
	MemberDto login = (MemberDto)session.getAttribute("login");		
%> 
<body>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#" ><img alt="" src="./images/logo.png" width="60" height="60" align="left"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-between"
				id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="bbslist.do">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#">게시판</a></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> 카테고리 </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href="#">종류</a></li>
							<li><a class="dropdown-item" href="#">재료</a></li>
							<li><a class="dropdown-item" href="#">방법</a></li>
							<li><a class="dropdown-item" href="#">테마</a></li>
							<li><a class="dropdown-item" href="#">기념일</a></li>
							<li><a class="dropdown-item" href="#">도구</a></li>
						</ul></li>
				</ul>
				<ul class="navbar-nav">
					<li class="nav-item" style="text-align: right"><a
						class="nav-link" href="#">로그인</a></li>
					<li class="nav-item" style="text-align: right"><a
						class="nav-link" href="#">회원가입</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div style="width: 1000px; height: 1000px;" >
	<main role="main" class="container">
		<form action="bbswriteAF.do" method="post" enctype="multipart/form-data" name="writeForm" onsubmit="return valid();">
		 <input type="hidden" name="writer" value="<%=login.getUser_id() %>">
				<div class="mb-3">

					<label for="title">썸네일</label>
					  <textarea class="summernote" name="thumbnail" rows="18"></textarea>
						
				</div>
				<div class="mb-3">

					<label for="title">제목</label>

					<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">

				</div>
				<div class="mb-3">

					<label for="title">카테고리</label>

						<div class="custom-control custom-checkbox">
						<input type="checkbox" id="jb-checkbox" class="custom-control-input" name="category" value="1"  onclick="clickCheck(this)">
						<label class="custom-control-label" for="jb-checkbox">양식</label>
						</div>
						<div class="custom-control custom-checkbox">
						<input type="checkbox" id="jb-checkbox" class="custom-control-input" name="category" value="2"  onclick="clickCheck(this)">
						<label class="custom-control-label" for="jb-checkbox">중식</label>
						</div>
						<div class="custom-control custom-checkbox">
						<input type="checkbox" id="jb-checkbox" class="custom-control-input" name="category" value="3"  onclick="clickCheck(this)">
						<label class="custom-control-label" for="jb-checkbox">일식</label>
						</div>
						<div class="custom-control custom-checkbox">
						<input type="checkbox" id="jb-checkbox" class="custom-control-input" name="category" value="4"  onclick="clickCheck(this)">
						<label class="custom-control-label" for="jb-checkbox">분식</label>
						</div>
						<div class="custom-control custom-checkbox">
						<input type="checkbox" id="jb-checkbox" class="custom-control-input" name="category" value="5"  onclick="clickCheck(this)">
						<label class="custom-control-label" for="jb-checkbox">한식</label>
						</div>
						<div class="custom-control custom-checkbox">
						<input type="checkbox" id="jb-checkbox" class="custom-control-input" name="category" value="6"  onclick="clickCheck(this)">
						<label class="custom-control-label" for="jb-checkbox">디저트</label>
						</div>

				</div>

				<div class="mb-3">

					<label for="reg_id">조리시간</label>

					<input type="text" class="form-control" name="cookingtime" id="cookingtime" placeholder="조리시간을 입력해 주세요">

				</div>
				
				<div class="mb-3">

					<label for="reg_id">인분</label>

					<input type="text" class="form-control" name="serving" id="serving" placeholder="몇인분 인지 입력해 주세요">

				</div>

				

				<div class="mb-3">

					<label for="content">레시피 재료</label>

					<textarea class="form-control" rows="5" name="ingredients" id="ingredients" placeholder="레시피 재료를 입력해 주세요" ></textarea>

				</div>

				

				<div class="mb-3">

					<label for="tag">TAG</label>

					<input type="text" class="form-control" name="tag" id="tag" placeholder="태그를 입력해 주세요">

				</div>
			<div class="mb-3">
			<label for="tag">내용</label>
				 <textarea class="summernote" name="content" rows="18"></textarea>
				

			</div>

			
		<script>
		$('.summernote').summernote({
			height : 200,
			lang : "ko-KR"
		});
		
		function clickCheck(target) {
		    document.querySelectorAll(`input[type=checkbox]`)
		        .forEach(el => el.checked = false);

		    target.checked = true;
		}
		
		function valid(){
			
			const title = writeForm.title;
			if (title.value == "") {
				alert("제목을 입력하세요");
				title.focus();
				return false;
			}
		/* 	const content = writeForm.content;
			if (content.value == "") {
				alert("컨텐츠를 입력하세요");
				content.focus();
				return false;
			} */
			const ingredients = writeForm.ingredients;
			if (ingredients.value == "") {
				alert("재료를 입력하세요");
				ingredients.focus();
				return false;
			}
			const cookingtime = writeForm.cookingtime;
			if (cookingtime.value == "") {
				alert("요리시간을 입력하세요");
				cookingtime.focus();
				return false;
			}
			const serving = writeForm.serving;
			if (serving.value == "") {
				alert("몇인분 인지 입력하세요");
				serving.focus();
				return false;
			}
			/* const category = writeForm.category;
			if (category.value == "") {
				alert("카테고리를 선택하세요");
				category.areacode.focus(); 
				return false;
			} */
			flag = false;
			const category = writeForm.category;
			for(i=0; i < category.length; i++){
				if(category[i].checked){			// 이 부분과
					str += category[i].value + "\n";  	// 이 부분도 매우 중요한 부분
					flag = true;
				}
			}
						
			if(flag == false){
				alert("카테고리를 선택하세요");
				return false;
			}
			
			const content = writeForm.content;
			if (content.value == "") {
				alert("컨텐츠를 입력하세요");
				content.focus();
				return false;
			}
			const regdate = writeForm.regdate;
			if (regdate.value == "") {
				alert("조리시간을 입력하세요");
				regdate.focus();
				return false;
			}
			const star = writeForm.star;
			if (star.value == "") {
				alert("평점을 입력하세요");
				star.focus();
				return false;
			}
			
		}
		
		</script>
			<div class="pt-1 text-right">
				<button class="btn btn btn-success" type="button" onclick="history.back()" 
					style="width: 10%; padding: 5px;">목록보기</button>
				<button class="btn btn btn-success" type="reset"
					style="width: 10%; padding: 5px;">다시쓰기</button>
				<button class="btn btn btn-success" type="submit"
					style="width: 10%; padding: 5px;">작성완료</button>
			</div>
		</form>

	
	</main>
	</div>
	

	
	<div class="b-example-divider "></div>
	<div class="container-fluid ">
<!--    <footer class="py-3 my-4">
    <ul class="nav justify-content-center border-bottom pb-3 mb-3">
      
    </ul>
    <p class="text-center text-muted">© 2023 Company, Inc</p>
  </footer>  -->
</div>
</body>
</html>