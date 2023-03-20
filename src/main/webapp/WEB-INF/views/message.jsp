<%@page import="mul.cam.food.dto.MemberDto"%>
<%@page import="mul.cam.food.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
String bbswrite = (String) request.getAttribute("bbswrite");
if (bbswrite != null && !bbswrite.equals("")) {
	if (bbswrite.equals("writeOK")) {
%>
<script type="text/javascript">
		alert("글쓰기 성공");
		location.href = "bbslist.do";
		</script>
<%
} else if(bbswrite.equals("writeNO")) {
	%>
<script type="text/javascript">
		alert("글쓰기 실패");
		location.href = "bbswrite.do";
		</script>
<%
}
}
%>


<%
String message = (String)request.getAttribute("message");
if(message != null && !message.equals("")){
	if(message.equals("MEMBER_ADD_YES")){
		%>
		<script type="text/javascript">
		alert("성공적으로 가입되었습니다");
		location.href = "login.do";
		</script>
		<%
	}else{
		%>
		<script type="text/javascript">
		alert("가입되지 않았습니다 다시 가입해 주십시오");
		location.href = "regi.do";
		</script>
		<%		
	}
}


String login = (String)request.getAttribute("login");

if(login != null && !login.equals("")){
	if(login.equals("LOGIN_OK")){
		%>
		<script type="text/javascript">
		alert("로그인되었습니다");
		location.href = "mainhome.do";
		</script>
		<%
	}else{
		%>
		<script type="text/javascript">
		alert("아이디나 패스워드를 확인해 주십시오");
		location.href = "login.do";
		</script>
		<%
	}	
}

// 230320 추가
String sessionOut = (String)request.getAttribute("sessionOut");

if(sessionOut != null && !sessionOut.equals("")){
	if(sessionOut.equals("logout")){
	//		System.out.println("여기는오니..");
			session.removeAttribute("login");
			%>
			<script type="text/javascript">
			alert("로그아웃되었습니다");
			location.href = "mainhome.do";
			</script>
			<%
	}
}
%>


