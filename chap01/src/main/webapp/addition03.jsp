<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addition_MVC2</title>
</head>
<body>
	${num1} + ${num2} = ${add}
	<br>
	Working with server: 
	<%=application.getServerInfo() %><br>
	Servlet Specification: 
	<%=application.getMajorVersion()%>.<%= application.getMinorVersion() %> <br>
	JSP version:
	<%= JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion() %>
</body>
</html>