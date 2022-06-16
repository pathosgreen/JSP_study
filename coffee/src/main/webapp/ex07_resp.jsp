<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	
int coffee = Integer.parseInt(request.getParameter("coffee"));
int su = Integer.parseInt(request.getParameter("su"));
int money = Integer.parseInt(request.getParameter("money"));
    
String menu = "";
int dan = 0;
int total = 0;
int change = 0;
	
	switch (coffee) {
	case 1: menu = "아메리카노"; dan=3000; break;
	case 2: menu = "카페라떼"; dan=3300; break;
	case 3: menu = "에스프레소"; dan=2500; break;
	case 4: menu = "얼그레이"; dan=3500; break;
	}
	
	total = dan * su;
	change = money - total;

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 계산 처리</title>
</head>
<body>
	<h2>주문계산 결과</h2>
		<ul>
			<li>커피 종류 : <%=menu %></li>
			<li>1개 가격 : <%=dan %></li>
			<li>수량 : <%=su %></li>
			<li>총 금액 : <%=total %></li>
			<li>입금액 : <%=money %></li>
			<li>거스름돈 : <%=change %></li>
		</ul>
</body>
</html>