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
MemberDto dto = (MemberDto)request.getAttribute("mem");
String loginOK = (String) request.getAttribute("loginOK");

if (loginOK != null && !loginOK.equals("")) {
	if (loginOK.equals("BBS_ADD_OK")) {
%>
<script type="text/javascript">
		alert("환영합니다!!! <%= dto.getName()%>님");
		location.href = "bbslist.do?auth=" + <%= dto.getAuth()%>;
		</script>
<%
} else if(loginOK.equals("BBS_ADD_NO")) {
	%>
<script type="text/javascript">
		alert("로그인 실패");
		location.href = "login.do";
		</script>
<%
} else if(loginOK.equals("Withdrawal member")){
	%>
	<script type="text/javascript">
		alert("탈퇴된 회원입니다.");
		location.href = "login.do";
		</script>
	
	<%
	
}
}
%>




<%
String delete = (String) request.getAttribute("delete");
if (delete != null && !delete.equals("")) {
	if (delete.equals("deleteOK")) {
%>
<script type="text/javascript">
		alert("삭제 성공");
		location.href = "adminList.do";
		</script>
<%
} else if(delete.equals("deleteNO")) {
	%>
<script type="text/javascript">
		alert("삭제 실패");
		location.href = "adminList.do";
		</script>
<%
}
}
%>


