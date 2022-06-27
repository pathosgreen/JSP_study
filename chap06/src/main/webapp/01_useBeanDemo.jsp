<%@page import="com.saeyan.javabeans.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
MemberBean member =new MemberBean();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bean 테스트</title>
</head>
<body>

이름 : <%= member.getName() %> <br>
아이디 : <%= member.getUserid() %> <br>
<hr>
<%
member.setName("전수빈");
member.setUserid("pinksubin");
%>
이름 : <%= member.getName() %> <br>
아이디 : <%= member.getUserid() %>
</body>
</html>