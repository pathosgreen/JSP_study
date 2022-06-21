<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
int age=Integer.parseInt(request.getParameter("age"));
if(age<19){
	%>
	<script type="text/javascript">
	alert("19세 미만이므로 입장이 불가능")
	history.go(-1)
	</script>
	<%
}else{
	request.setAttribute("name","김");
	RequestDispatcher dispatcher = request.getRequestDispatcher("05_forwardResult.jsp");
	dispatcher.forward(request, response);
}
%>