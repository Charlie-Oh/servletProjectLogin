<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
</head>
<body>
	<%
		String id=(String)session.getAttribute("id");
		if(id==null){
	%>
		<a href="loginForm.html">로그인</a>
	<%
		}else{
	%>
		<a href="logout">로그아웃</a>
	<%
		}
	%>
</body>
</html>