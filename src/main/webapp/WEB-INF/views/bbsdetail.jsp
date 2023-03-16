<%@page import="mul.cam.food.dao.MemberDao"%>
<%@page import="mul.cam.food.dto.MemberDto"%>
<%@page import="mul.cam.food.dto.BbsDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세글 페이지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="./css/bbsdetail.css" >
<link rel="stylesheet" href="./images/favicon.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

</head>
<body>

<%

	BbsDto dto = (BbsDto)request.getAttribute("bbsdto");

%>
<!-- 상단 내비게이션 -->
        <nav role="navigation">
            <img src="./images/logo.png" id="logo-img" width="150px" height="90px">
            <ul id="main-menu nav-pills">
                <li class="left-tab slide"><a href="#" style="margin-left:27px;">카테고리</a>
                    <ul id="sub-menu">
                        <li><a href="#" aria-label="submenu">submenu</a></li>
                        <li><a href="#" aria-label="submenu">submenu</a></li>
                        <li><a href="#" aria-label="submenu">submenu</a></li>
                        <li><a href="#" aria-label="submenu">submenu</a></li>
                    </ul>
                </li>
                <li class="left-tab"><a href="../views/bbslist.jsp" style="margin-left:27px;">게시판</a></li>
                <li class="right-tab"><a href="../views/regi.jsp">회원가입</a></li>
                <li class="right-tab"><a href="../views/login.jsp">로그인</a></li>
            </ul>
        </nav>
        
     <main class="container">
         <!-- 메인 이미지-->
         <div class="p-4 p-md-5 mb-4 rounded text-bg-dark">
    		<div class="col-md-6 px-0" style="width:700px; height:300px; text-align:center;">
		      	<%=dto.getThumbnail() %>
    		</div>
  		</div>

         <!-- 메인 컨텐츠-->
         <div id="main-contents">
	         <div class="row g-5">
	    		<div class="col-md-8">
	      			<h3 class="pb-4 mb-4 fst-italic border-bottom">
	        			내가 만든 레시피
	      			</h3>
		
			<!-- 제목, 내용, 레시피 재료 -->
		      <article class="blog-post">
		        <h2 class="blog-post-title mb-1"><%=dto.getTitle() %></h2>
		        <p class="blog-post-meta"><%=dto.getRegdate() %>
		        	<a href="#"><%=dto.getWriter() %></a>
		        </p>
		
		        <p><%=dto.getContent() %></p>
		        
		        <p><%=dto.getIngredients() %></p>
		        
		      </article>
		      
		      <article class="blog-post">
		        <h2 class="blog-post-title mb-1">댓글 한눈에 보기</h2>
		        <p class="blog-post-meta" id="allreply"></p>
		
		        <p>This is some additional paragraph placeholder content. It has been written to fill the available space and show how a longer snippet of text affects the surrounding content. We'll repeat it often to keep the demonstration flowing, so be on the lookout for this exact same string of text.</p>
		        <ul>
		          <li>First list item</li>
		          <li>Second list item with a longer description</li>
		          <li>Third list item to close it out</li>
		        </ul>
		        <p>This is some additional paragraph placeholder content. It's a slightly shorter version of the other highly repetitive body text used throughout.</p>
      		 </article>

		      <!-- 평점 입력 -->
		      <article class="blog-post">
		        <div class="modal modal-sheet position-static d-block bg-secondary py-5" tabindex="-1" role="dialog" id="modalSheet">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content rounded-4 shadow">
				      <div class="modal-header border-bottom-0">
				        <h1 class="modal-title fs-5">평점을 입력해 주세요</h1>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body py-0">
				        <p>이 글이 도움이 되셨다면 0.5점부터 5점까지 점수를 매겨주세요. 향후 더 나은 컨텐츠 제작에 도움이 됩니다.</p>
				      	<input type="text" id="star" name="star">
				      </div>
				      <div class="modal-footer flex-column border-top-0">
				        <button type="button" class="btn btn-lg btn-primary w-100 mx-0 mb-2">저장하기</button>
				        <button type="button" class="btn btn-lg btn-light w-100 mx-0" data-bs-dismiss="modal">닫기</button>
				      </div>
				    </div>
				  </div>
				</div>
		      </article>

    		</div>
			<!-- 인분, 조리시간, 평점 -->
		    <div class="col-md-4">
		      <div class="position-sticky" style="top: 2rem;">
		        <div class="p-4 mb-3 bg-light rounded">
		          <h4 class="fst-italic">인분</h4>
		          <p class="mb-0"><%=dto.getServing() %></p>
		        </div>
		
		        <div class="p-4">
		          <h4 class="fst-italic">조리시간</h4>
		          <p class="mb-0"><%=dto.getCookingtime() %></p>
		        </div>
		
		        <div class="p-4">
		          <h4 class="fst-italic">평점</h4>
		          <p class="mb-0"><%=dto.getStar() %></p>
		        </div>
		        
		        <div class="p-4">
		          <h4 class="fst-italic">태그</h4>
		          <p class="mb-0"><%=dto.getTag() %></p>
		        </div>
		      </div>
		    </div>
		  </div>
         </div>
         
         <!-- 댓글 입력 -->
         	<h3 class="pb-4 mb-4 fst-italic border-bottom">댓글 입력하기</h3>
		    <form action="commentWriteAf.do" method="post">
			    <dl>
		          <dt><%=dto.getWriter() %></dt>
		          <dd>
		          	<input type="hidden" name="seq" value="<%=dto.getSeq() %>">
		          	<textarea rows="10" cols="100"><%=dto.getContent() %></textarea>
		          </dd>
	        	</dl>
		    
		    
			    <!-- 전송, 목록 버튼 -->
			    <div class="wrapper" style="margin-left:294px;">
			    	<button class="btn btn-outline-primary rounded-pill" type="submit">전송하기</button>
			    	<button class="btn btn-outline-primary rounded-pill" type="button" onclick="location.href='bbslist.do'">목록으로</button>
			    </div>
			</form>
    </main>
        
        <!-- 하단 푸터 -->
        <footer>
            <p> Copyright © 2023. MultiCampus. </p>
        </footer>


		<script type="text/javascript">
			$(document).ready(function() {
				$.ajax({
					url:"./commentList.do",
					type:"get",
					data: {"seq" : <%=dto.getSeq() %>},
					success:function(list){
						alert('성공적으로 댓글이 작성되었습니다');
						
						$("#allreply").html("");
						
						$.each(list, function(index, item){
							let str = "<div>"
									+	"<td>작성자:" + item.writer + "</td>"
									+ "</div>"
									+ "<div>"
									+	"<td>" + item.content + "</td>"
									+ "</div>";
							$("#tbody").append(str);
						});
					},
					error:function() {
						alert('오류가 발생했습니다');
					}
				});
			});
		</script>
	</body>
</html>