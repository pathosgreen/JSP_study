<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	P190 예제 redirect
<%
	response.sendRedirect("http://www.naver.com");
%>
</body>
</html>