<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- JSP 페이지에서 에러가 발생하였을 때 보여줄 에러 페이지로 error.jsp를 설정 --%>
    <%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
0으로 나누는건 불가능함.
<%-- 강제로 예외 발생 --%>
<%= 2/0 %>
</body>
</html>