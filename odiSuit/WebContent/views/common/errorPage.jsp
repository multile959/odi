<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String message = (String)request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오류 메세지</title>
</head>
<body>
	<h1 align="center"><%= message %></h1>
	
	<div align="center">
		<button onclick="location.href='<%= request.getContextPath() %>';" style="width:30%;">홈으로 돌아가기</button>
	</div>
</body>
</html>