<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = "test";
String pw = "1234";
String name = "김";
request.setCharacterEncoding("utf-8");
if(id.equals(request.getParameter("id")) && pw.equals(request.getParameter("pw"))){
	response.sendRedirect("04_main.jsp?name="+URLEncoder.encode(name,"utf-8"));
}else{
	response.sendRedirect("04_loginForm.jsp");
}
%>