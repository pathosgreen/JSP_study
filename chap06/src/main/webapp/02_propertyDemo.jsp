<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="com.saeyan.javabeans.MemberBean" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Property 테스트</title>
</head>
<body>

이름 : <jsp:getProperty name="member" property="name" /> <br>
아이디 : <jsp:getProperty name="member" property="userid" />  <br>
<hr>
<jsp:setProperty name="member" property="name" value="전수빈"/>
<jsp:setProperty name="member" property="userid" value="pinksubin"/>

이름 : <jsp:getProperty name="member" property="name" /> <br>
아이디 : <jsp:getProperty name="member" property="userid" />  <br>
<hr>
</body>
</html>