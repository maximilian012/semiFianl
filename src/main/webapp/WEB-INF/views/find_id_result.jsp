<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME BOB : 로그인 창</title>

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

.form {
  width: 40%;
  height: 600px;
  background-color: #FFF1CD;
  border-radius: 20px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
}


.form_email {
  margin-top: 20px;
  width: 100%;
}

.form_email input {
  width: 100%;
  height: 50px;
  border-radius: 30px;
  margin-top: 10px;
  padding: 0px 20px;
  border: 1px solid lightgray;
  outline: none;
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
<h1 style="text-align:center;">아이디 찾기</h1>


<div class="wrap">
	<div class="form">
				아이디:<h3 id="id">${find_id}</h3>
			<div class="button">
				<button type="button" id="go_login">로그인으로 이동</button>
			</div>
	</div>
</div>
<script type="text/javascript">
$(function(){
	$("#go_login").click(function(){
		location.href="login.do";
	});
});
</script>

</body>
</html>