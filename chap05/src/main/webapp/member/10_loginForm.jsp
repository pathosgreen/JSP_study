<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<form method="post" action="10_testLogin.jsp">
	<label for="userid"> ID : </label>
	<input type="text" name="id" id="userid"><br>
	
	<label for="userpw"> PW : </label>
	<input type="password" name="pw" id="userpw"><br>
	
	<input type="submit" value="로그인">
	
</form>
</body>
</html>