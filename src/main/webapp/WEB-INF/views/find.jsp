<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>HOME BOB : 아이디/비번찾기</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<div id="content">
		<!-- 초기 화면 -->
		<button type="button" id="idTab">아이디 찾기</button>
		<button type="button" id="passwordTab">Password 찾기</button>
		<p>ID 또는 Password를 찾으시려면 탭을 선택해주세요.</p>
	</div>
	
	<script type="text/javascript">
		$(function(){
			$("#idTab").click(function(){
				$("#content").load("find_id.do");
			});

			$("#passwordTab").click(function(){
				$("#content").load("find_pwd.do");
			});
		});
	</script>
</body>
</html>






