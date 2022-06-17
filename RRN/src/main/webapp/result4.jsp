<%@page import="java.util.Map" %>
<%@page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	if(!request.getMethod().equals("POST")){
		out.println("<script>");
		out.println("alert('잘못된 접근입니다.')");
		out.println("location.href='form4.jsp'");
		out.println("</script>");
		return;
	}
	String j1 = request.getParameter("j1");
	String j2 = request.getParameter("j2");
	String jj = j1+j2;
	int sum = 0;
	for(int i=0;i<12;i++){
		sum += (jj.charAt(i)-'0')*(i%8+2);
	}
	sum = (11-(sum%11))%10;
	boolean isCheck = ((sum+'0') == jj.charAt(12));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>"<%=j1 %>-<%=j2 %>"는 <%=isCheck ? "맞는" : "틀린" %> 주민번호 입니다.</h1>
</body>
</html>