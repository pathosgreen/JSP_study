<%@page import="com.saeyan.javabeans.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="msg" value="Hello" />
\${msg} = ${msg} <br>
<c:set var="age">30</c:set>

\${age} = ${age} <hr>

<c:set var="member" value="<%= new com.saeyan.javabeans.MemberBean() %>" />
<c:set target="${member}" property="name" value="전수빈" />
<c:set target="${member}" property="userid">pinksubin</c:set>
\${member} =${member} <hr>

<c:set var="add" value="${10 + 5}" />
\${add} = ${add} <br>
<c:set var="flag" value="${10 > 5}" />
\${flag} = ${flag} <br>
</body>
</html>