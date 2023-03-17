<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
</head>
<body>

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



String bbswrite = (String)request.getAttribute("bbswrite");
if(bbswrite != null && !bbswrite.equals("")){
	if(bbswrite.equals("BBS_ADD_OK")){
		%>
		<script type="text/javascript">
		alert("성공적으로 작성되었습니다");
		location.href = "bbslist.do";
		</script>
		<%
	}
	else{
		%>
		<script type="text/javascript">
		alert("다시 작성해 주십시오");
		location.href = "bbswrite.do";
		</script>
		<%
	}
}

String bbsupdate = (String)request.getAttribute("bbsupdate");
if(bbsupdate != null && !bbsupdate.equals("")){
	if(bbsupdate.equals("BBS_UPDATE_OK")){
		System.out.println("여기옴?");
		%>
		<script type="text/javascript">
		alert("성공적으로 수정되었습니다");
		System.out.println("여기는?");
		location.href = "bbslist.do";
		</script>
		<%
	}
	else{		
		%>
		<script type="text/javascript">
		alert("다시 작성해 주십시오");
		System.out.println("여기로오나?");
		location.href = "bbslist.do";
		</script>
		<%
	}	
}


String bbsdelete = (String)request.getAttribute("bbsdelete");
if(bbsdelete != null && !bbsdelete.equals("")){
	if(bbsdelete.equals("BBS_DELETE_OK")){
		%>
		<script type="text/javascript">
		alert("성공적으로 삭제되었습니다");
		location.href = "bbs?param=bbslist";
		</script>
		<%
	}
	else{
		%>
		<script type="text/javascript">
		alert("삭제되지 않았습니다");		
		location.href = "bbs?param=bbslist";
		</script>
		<%
	}	
}



%>
</body> 
</html> 




