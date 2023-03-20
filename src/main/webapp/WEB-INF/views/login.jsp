<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME BOB : 로그인 창</title>

<%-- 네이버 로그인 API --%>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>


<%-- jQuery --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>

<%-- cookie 저장 --%>
<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>

<style type="text/css">
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Noto Sans KR", sans-serif;
}

.h1{
  color: FFE5A3;
}

.img{
  width: 30%;
  align-items: center;
  flex-direction: column;
}


.wrap {
  width: 100%;
  height: 100vh;
  display: flex;
  justify-content: center;
}

.label{
	color: white;
	font-size: 2em;
}

.login {
  width: 40%;
  height: 600px;
  background-color: #FFF1CD;
  border-radius: 20px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
}

.login_sns {
  padding: 20px;
  display: flex;
}

.login_sns li {
  padding: 0px 15px;
}

.login_sns a {
  width: 50px;
  height: 50px;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 10px;
  border-radius: 50px;
  background: white;
  font-size: 20px;
  box-shadow: 3px 3px 3px rgba(0, 0, 0, 0.4), -3px -3px 5px rgba(0, 0, 0, 0.1);
}

.login_id {
  margin-top: 20px;
  width: 100%;
}

.login_id input {
  width: 100%;
  height: 50px;
  border-radius: 30px;
  margin-top: 10px;
  padding: 0px 20px;
  border: 1px solid lightgray;
  outline: none;
}

.login_pwd {
  margin-top: 20px;
  width: 100%;
}

.login_pwd input {
  width: 100%;
  height: 50px;
  border-radius: 30px;
  margin-top: 10px;
  padding: 0px 20px;
  border: 1px solid lightgray;
  outline: none;
}

.login_etc {
  padding: 10px;
  width: 80%;
  font-size: 14px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  font-weight: bold;
}

.button {
  margin-top: 10px;
  width: 80%;
}
.button button {
  width: 100%;
  height: 50px;
  border: 0;
  outline: none;
  border-radius: 40px;
  background: #FFE5A3;
  color: white;
  font-size: 1.2em;
  letter-spacing: 2px;
}


</style>

</head>
<body>

<div style="text-align: center;">
	<a href=><img alt="로고" class="img" src="./images/logo.png"></a><br>
</div>
<h1 style="text-align:center;">로그인</h1>


<div class="wrap">
	<div class="login">

		<form action="loginAf.do" method="post">
			<div class="login_id">
				<label class="label">아이디</label>
				<input type="text" id="id" name="user_id" placeholder="아이디">
			</div>
			<div class="login_pwd">
				<label class="label">패스워드</label>
				<input type="text" id="pwd" name="password" placeholder="패스워드">
			</div><br>
			<div class="checkbox">
				<input type="checkbox" id="chk_save_id">아이디 저장
			</div>
			<div class="button">
				<button type="submit" id="login">로그인</button>
				<button type="button" id="account">회원가입</button>
				<button type="button" id="find_id">아이디/패스워드 찾기</button>
			</div>
			<div class="login_sns">
				<li><a href="naver.com"><i class="fab fa-naver"></i></a></li>
				<li><a href="kakao.com"><i class="fab fa-kakao"></i></a></li>
				<li><a href="google.com"><i class="fab fa-google"></i></a></li>
			</div>
		</form>
	</div>
</div>

<script type="text/javascript">
$(function() {
	
	// 회원가입 창으로 이동
	$("#account").click(function() {
		location.href = "regi.do";		
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