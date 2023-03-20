<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.108.0">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>HOME BOB : 아이디/비번찾기</title>
	
<%-- css 로드 --%>
<link rel="stylesheet" type="text/css" href="./css/login.css" >

<%-- jQuery --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<%-- 부트스트랩 --%>
<%-- 
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
--%>

</head>
<body>

<div class="container">
  <div class="welcome">
    <div class="pinkbox">
    
      <div class="signup nodisplay">
      
      	<h1>User ID Check</h1>
      	
      	<form action="find_id_Af.do" method="post" class="more-padding" autocomplete="off">
          <input type="email" id="email_1" name="email" placeholder="이메일">
          <button type="submit" id="find_id_btn" class="button submit">아이디 찾기</button>
          <button type="button" onclick="history.go(-1)" class="button">로그인하러 가기</button>
        </form>
        
	  </div>
	  
	  <div class="signin">
	  	<h1>PassWord Check</h1>
	  	<form action="find_pwd_Af.do" method="post" class="more-padding" autocomplete="off">
	  	    <input type="email" id="email_2" name="email" placeholder="이메일">
			<button type="submit" id="find_pwd_btn"  class="button submit">패스워드 찾기</button>
			<button type="button" onclick="history.go(-1)" class="button">로그인하러 가기</button>
		</form>
	  </div>
     </div>
    <div class="leftbox">
      <a href="mainhome.do"><img class="logo" src="./images/homebob.png"/></a>
      <p class="desc">회원님의 <span>"HomeBOB"</span>을</p>
      <p>책임지겠습니다.</p>
      <p class="account">forget your id?</p>
      <button id="signin" class="button">password check</button>
    </div>
    <div class="rightbox">
      <a href="mainhome.do"><img class="logo" src="./images/homebob.png"/></a>
      <p class="desc">회원님의 <span>"HomeBOB"</span>을</p>
      <p>책임지겠습니다.</p>
      <p class="account">forget your password?</p>
      <button id="signup" class="button">id check</button>
    </div>
 </div>
</div>
          
<script type="text/javascript">
$(function(){
	
	// 왼쪽 페이지 클릭 시
	$('#signup').click(function() {
		  $('.pinkbox').css('transform', 'translateX(80%)');
		  $('.signin').addClass('nodisplay');
		  $('.signup').removeClass('nodisplay');
	});

	// 오른쪽 페이지 클릭 시
	$('#signin').click(function() {
	  $('.pinkbox').css('transform', 'translateX(0%)');
	  $('.signup').addClass('nodisplay');
	  $('.signin').removeClass('nodisplay');
	});
	
	// 아이디 찾기 버튼 입력 시
	$("#find_id_btn").click(function(event) {
		 
		 if($("#email").val().trim() == ""){
			 
			 event.preventDefault(); // submit 버튼 취소
			 alert("이메일을 입력해주십시오.");
			 history.reload();
		 }else{
			location.href="find_id_result.do";
		 }
	});
	
	// 패스워드 찾기 버튼 입력 시
	$("#find_pwd_btn").click(function(event) {
		 if($("#email").val().trim() == ""){
					 
			 event.preventDefault(); // submit 버튼 취소
			 alert("이메일을 입력해주십시오.");
			 history.reload();
		}else{
			location.href="find_pwd_result.do";
		}
	});
});

</script>
</body>
</html>






