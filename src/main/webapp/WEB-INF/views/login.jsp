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
<title>HOME BOB : 로그인 창</title>

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

<%-- cookie 저장 --%>
<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>

</head>
<body>

<div class="container">
  <div class="welcome">
    <div class="pinkbox">
    
      <div class="signup nodisplay">
      
      	<h1>register</h1>
      	
      	<form action="regiAf.do" method="post" autocomplete="off">
      	  <div class="id_check_button">
          	<input type="text" id="id" name="user_id" placeholder="아이디">
          	<button type="button" id="idChkBtn">중복 체크</button>
          </div>
          <p id="idcheck" style="display:none;"></p> 
          <input type="password" id="pwd" name="password" placeholder="비밀번호">
          <input type="password" id="pwd_2" placeholder="비밀번호 확인">
          <div class="personal_class">
	          <input type="text" id="name" name="name" class="personal" placeholder="이름">
	          <input type="text" id="age" name="age" class="personal" placeholder="나이">
          </div>
          <input type="email" id="email" name="email" placeholder="이메일">
          <input type="text" id="address" name="address" placeholder="주소">
          <button type="submit" id="create_id" class="button submit">회원가입</button>
        </form>
	  </div>
	  
	  <div class="signin">
	  	<h1>sign in</h1>
	  	<form action="loginAf.do" method="post" class="more-padding" autocomplete="off">
			<input type="text" id="id" name="user_id" placeholder="아이디">
			<input type="text" id="pwd" name="password" placeholder="패스워드">
         	<div class="checkbox">
				<input type="checkbox" id="chk_save_id" class="checkbox">
				<label for="chk_save_id">remember me</label>
			</div>
			
			<button type="submit" id="login"  class="button submit">로그인</button>
			<button type="button" id="find_id"  class="button">아이디/패스워드 찾기</button>
		</form>
	  </div>
     </div>
    <div class="leftbox">
      <a href="mainhome.do"><img class="logo" src="./images/homebob.png"/></a>
      <p class="desc">회원님의 <span>"HomeBOB"</span>을</p>
      <p>책임지겠습니다.</p>
      <p class="account">have an account?</p>
      <button id="signin" class="button">login</button>
    </div>
    <div class="rightbox">
       <a href="mainhome.do"><img class="logo" src="./images/homebob.png"/></a>
      <p class="desc">회원님의 <span>"HomeBOB"</span>을</p>
      <p>책임지겠습니다.</p>
      <p class="account">don't have an account?</p>
      <button id="signup" class="button">sign up</button>
    </div>
 </div>
</div>
    

<script type="text/javascript">
$(function() {
	
	$('#signup').click(function() {
		  $('.pinkbox').css('transform', 'translateX(80%)');
		  $('.signin').addClass('nodisplay');
		  $('.signup').removeClass('nodisplay');
	});

	$('#signin').click(function() {
	  $('.pinkbox').css('transform', 'translateX(0%)');
	  $('.signup').addClass('nodisplay');
	  $('.signin').removeClass('nodisplay');
	});
	
	/* 회원 가입 부분 */
	// id 중복체크
	$("#idChkBtn").click(function() {		
			
		$.ajax({
			type:"post",
			url:"idcheck.do",
			data:{ "id":$("#id").val() },
			success:function(msg){				
				if(msg == "YES"){
					// 빈 칸 방지
					if ($("#id").val().trim() == ""){
						alert("아이디를 입력하십시오.");
					}else{
						$("#idcheck").css("color", "#0000ff");
						$("#idcheck").text("사용할 수 있는 아이디입니다");
						$("#idcheck").show();
					}
				}else{
					$("#idcheck").css("color", "#ff0000");
					$("#idcheck").text("사용중인 아이디입니다");
					$("#idcheck").show();
					$("#id").val("");
				}
			},
			error:function(){
				alert('error');
			}
		});
	});
	
	// 회원가입 버튼
	$("#create_id").click(function(event){
		
		// 빈 칸이 있으면 알림
	    if ($("#id").val().trim() == "" || $("#pwd").val().trim() == "" || $("#pwd_2").val().trim() == "" || $("#name").val().trim() == "" || $("#age").val().trim() == "" || $("#address").val().trim() == "") {
	      alert("빈 칸을 모두 채워주세요.");
	      event.preventDefault(); // submit 버튼 취소
	      return false; // 함수 실행 중지
	    }
		
		// pwd 확인
		if($("#pwd").val() != $("#pwd_2").val() ){
			alert("비밀번호를 확인해주세요.");
			
			$("#pw").val("").focus();
			$("#pw2").val("");
			
			// 기본 동작 취소 함수
			event.preventDefault();	// submit 버튼 취소
			
			return false;	// 함수 실행 중지
		};
		<%-- 비밀번호 자릿 수 설정 
			}else if ($("#pw").val().length < 8) {
				alert("비밀번호는 8자 이상으로 설정해야 합니다.");
				$("#pw").val("").focus();
				return false;} --%> 
		
	});
		
	// 아이디/비번 찾기로 이동
	$("#find_id").click(function() {
		location.href = "find.do";		
	});
	
	// 쿠키 값 저장, 쿠키 없으면 null
	let user_id = $.cookie("user_id");

	if(user_id != null){	// 저장한 id가 있음
		$("#id").val(user_id);
		$("#chk_save_id").prop("checked", true);
	};

	$("#chk_save_id").click(function () {
		
		if( $("#chk_save_id").is(":checked") == true ){
			
			if( $("#id").val().trim() == "" ){
				alert('id를 입력해 주십시오');
				$("#chk_save_id").prop("checked", false);
			}else{
				// cookie를 저장
				$.cookie("user_id", $("#id").val().trim(), { expires:7, path:'./' });	// expires 만료 날짜, ./ 현재 경로
			}
			
		}else{
			$.removeCookie("user_id", { path:'./' });
		}	
	});
});
</script>




</body>
</html>