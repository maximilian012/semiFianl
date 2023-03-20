<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--  jQuery, bootstrap -->
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

    <!-- summernote css/js-->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
  
  <!--  
  <!-- 서머노트를 위해 추가해야할 부분 
  <script src="../summerNote/summernote-lite.js"></script>
  <script src="../summerNote/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="../summerNote/summernote-lite.css">
   -->
  
</head>
<body>
<h3>여기는 테스트 입니다</h3>

<form action="login.do" method="post">
thumbnail<textarea class="summernote" name="thumbnail"></textarea>
id:<input type="text" name="writer"><br>
title:<input type="text" name="title"><br>
content:<textarea class="summernote" name="content"></textarea> <br>
재료:<input type="text" name="ingredients"><br>
cookingtime:<input type="text" name="cookingtime"><br>
serving:<input type="text" name="serving"><br>
중식<input type="text" name="category"><br>
star<input type="text" name="star"><br>
tag<input type="text" name="tag"><br>
<input type="submit" value="전송">
</form>

<script>
$('.summernote').summernote({
	  height: 450,
	  lang: "ko-KR"
	});
</script>
 
</body>
</html>