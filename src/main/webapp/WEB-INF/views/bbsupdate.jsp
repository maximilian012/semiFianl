<%@page import="mul.cam.food.dto.BbsDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
BbsDto dto = (BbsDto)request.getAttribute("dto");
System.out.println(dto.toString());
%>        

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정 페이지</title>
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

<form action="bbsupdateAf.do" id="frm" method="get">
<input type="hidden" name="seq" value="<%=dto.getSeq() %>" >
thumbnail
<textarea class="summernote" name="thumbnail"><%=dto.getThumbnail() %></textarea>
id:<%=dto.getWriter() %>
<input type="text" name="writer" value="<%=dto.getWriter() %>"><br>
title:
<input type="text" name="title" id="title" value='<%=dto.getTitle() %>'><br>
내용:<textarea class="summernote" id="content" name="content"><%=dto.getContent()  %></textarea> <br>
재료:<input type="text" name="ingredients" value='<%=dto.getIngredients() %>'><br>
조리시간:<input type="text" name="cookingtime" value='<%=dto.getCookingtime() %>'><br>
<input type="text" name="serving" value='<%=dto.getServing() %>'>인분<br>
카테고리<input type="text" name="category" value='<%=dto.getCategory() %>'><br>
수정일자:<input type="hidden" name="regdate" value="<%=dto.getRegdate() %>" ><br>
별점<input type="text" name="star" value='<%=dto.getStar() %>'><br>
태그<input type="text" name="tag" value='<%=dto.getTag() %>'><br>
<button type="button" class="btn btn-primary">글수정 완료</button>
</form>

<script>
$('.summernote').summernote({
	  height: 450,
	  lang: "ko-KR"
	});
</script>

<script type="text/javascript">
$(document).ready(function() {	
	$("button").click(function() {		
		if($("#title").val().trim() == "" ){
			alert("제목을 기입해 주십시오");
			return;
		}else if($("#content").val().trim() == "" ){
			alert("내용을 기입해 주십시오");
			return;
		}else{
			$("#frm").submit();
		}		
	});	
});
</script>

 
</body>
</html>