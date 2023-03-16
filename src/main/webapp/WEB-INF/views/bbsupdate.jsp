<%@page import="mul.cam.food.dto.MemberDto"%>
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
<title>글 수정하기</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

</head>
<body>

<main class="container">
         <!-- 메인 이미지-->
         <div class="p-4 p-md-5 mb-4 rounded text-bg-dark">
    		<div class="col-md-6 px-0">
      			<h1 class="display-4 fst-italic">메인 이미지</h1>
		      	<p class="lead my-3">Multiple lines of text that form the lede, informing new readers quickly and efficiently about what’s most interesting in this post’s contents.</p>
		      	<p class="lead mb-0"><a href="#" class="text-white fw-bold">Continue reading...</a></p>
    		</div>
  		</div>

         <!-- 메인 컨텐츠-->
         <div id="main-contents">
	         <div class="row g-5">
	    		<div class="col-md-8">
	      			<h3 class="pb-4 mb-4 fst-italic border-bottom">
	        			내가 만든 레시피
	      			</h3>
		
			<form action="bbsupdateAf.do" id="frm" method="get">
				<input type="hidden" name="seq" value="<%=dto.getSeq() %>" >
			
			<!-- 제목, 내용, 레시피 재료 -->
		      <article class="blog-post">
		        <h2 class="blog-post-title mb-1">
		        	<input type="text" id="title" name="title" size="50px" class="form-control form-control-lg" value='<%=dto.getTitle() %>'>
		        </h2>
		        
		        <p class="blog-post-meta"><%=dto.getRegdate() %>
		        	<a href="#"><%=dto.getWriter() %></a>
		        </p>
		
				<textarea rows="18" id="content" name="content" class="form-control"><%=dto.getContent()  %></textarea>
		        
		        <input type="text" id="ingredient" name="ingredient" size="50px" class="form-control form-control-lg" value='<%=dto.getIngredients() %>'>
        
       			<button type="button" class="btn btn-primary">글수정 완료</button>
		      </article>
		   </form>
		   </div>
		</div>
	</div>
</main>

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