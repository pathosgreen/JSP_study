<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = "admin";
String pw = "1234";
String name = "김";

if(id.equals(request.getParameter("id")) && pw.equals(request.getParameter("pw"))){
	session.setAttribute("loginUser", name);
	response.sendRedirect("10_main.jsp");
}else{
	response.sendRedirect("10_loginForm.jsp");
}
%>