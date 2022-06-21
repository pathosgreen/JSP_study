<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 현재 페이지가 에러페이지임을 설정 --%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="centera">
	<h1>잠시 점검중입니다.
	<%= exception.getMessage() %></h1><br>
	<img src="img/gong.png" alt="몰루" />
	</div>
</body>
</html>