<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align: center;">답글쓰기</h1>
<form name="frmReply" method="post" action="${contextPath}/board/addReply.do" enctype="multipart/form-data">
<table align="center">
	<tr>
		<td align="right">글쓴이:&nbsp;</td>
		<td><input type="text" size="67" maxlength="100" name="title" /></td>
	</tr>
	<tr>
		<td align="right">글제목:&nbsp;</td>
		<td><textarea></textarea></td>
	</tr>
</table>
</form>
</body>
</html>