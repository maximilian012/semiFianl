<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME BOB : 회원가입</title>

<%-- jQuery --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<%-- cookie 저장 --%>
<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>


<style type="text/css">
table{
	border: 1px solid;
	border-collapse: collapse;
	border-spacing: 1000px;
	width:440px;
	height:300px;
}

th{
	border: 0px;
	margin: 0px;
	padding: 5px;
	width: 400px;
	height: 40px;
}

.img{
	width: 200px;
	height: 200px;
}

</style>

</head>
<body>

<div style="text-align: center;">
	<a href=><img alt="로고" class="img" src="./images/logo.png"></a>
</div>

<h1 style="text-align:center;">회원가입</h1>

<form action="regiAf.do" method="post">
	
	<table align="center">
		<tr>
			<th>
				<input type="text" id="id" name="user_id" class="form" placeholder="아이디">
				<button type="button" id="idChkBtn" class="btn btn-danger" style="text-align:left">중복 체크</button><br>
				<p id="idcheck" style="margin-left:10px;"></p> 
			</th>
		</tr>
		<tr>
			<th>
				<input type="password" id="pwd" name="password" placeholder="비밀번호">
			</th>
		</tr>
		<tr>
			<th>
				<input type="password" id="pwd_2" placeholder="비밀번호 확인">
			</th>
		</tr>
		<tr>
			<th>
				<input type="text" id="name" name="name" placeholder="이름">
			</th>
		</tr>
		<tr>
			<th>
				<input type="text" id="age" name="age" placeholder="나이">
			</th>
		</tr>
<!-- 		<tr>
			<th>
				<input type="text" id="number" name="number" placeholder="전화번호">
			</th>
		</tr>-->
		<tr>
			<th>
				<input type="email" id="email" name="email" placeholder="이메일">
			</th>
		</tr>
		<tr>
			<th>
				<input type="text" id="address" name="address" placeholder="주소">
			</th>
		</tr>
		<tr>
			<th>
				<button type="submit" id="create_id">회원가입</button>
				<button type="button" id="cancel" onclick="history.go(-1)">취소</button>
			</th>
		</tr>
	</table>

</form>

<script type="text/javascript">
$(function() {
	
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
					}
				}else{
					$("#idcheck").css("color", "#ff0000");
					$("#idcheck").text("사용중인 아이디입니다");
					$("#id").val("");
				}
			},
			error:function(){
				alert('error');
			}
		});
	});
	
	
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
	
});

</script>




</body>
</html>