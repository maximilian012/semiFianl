<%@page import="mul.cam.food.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--  jQuery, bootstrap -->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<!-- summernote css/js-->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

<!--  
  <!-- 서머노트를 위해 추가해야할 부분 
  <script src="../summerNote/summernote-lite.js"></script>
  <script src="../summerNote/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="../summerNote/summernote-lite.css">
   -->

</head>
<%
MemberDto login = (MemberDto) session.getAttribute("login");
%>
<body>


	<form action="login.do" method="post">
		<input type="hidden" name="writer" value="<%=login.getUser_id()%>">

		<div class="mb-3">

			<label for="title">썸네일</label> 
		
		<textarea class="summernote" name="thumbnail" placeholder="제목을 입력해 주세요"></textarea>

		</div>

		<div class="mb-3">

					<label for="title">제목</label>

					<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">

				</div>
					<div class="mb-3">

					<label for="title">카테고리</label>

					<input type="text" class="form-control" name="category" id="category" placeholder="카테고리를 입력해 주세요">

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
			<label for="tag">content</label>
				 <textarea class="summernote" name="content" rows="18"></textarea>
				

			</div>
				
	</form>

	<script>
		$('.summernote').summernote({
			height : 450,
			lang : "ko-KR"
		});
	</script>

</body>
</html>