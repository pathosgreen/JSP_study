<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nonage Shop</title>
<link rel="stylesheet" href="css/shopping.css">
<script type="text/javascript" src="member/member.js"></script>
<script type="text/javascript" src="member/mypage.js"></script>
</head>
<body>
<div id="wrap">
<!-- 헤더 들어가는곳 시작 -->
<header>
<!-- 로고 들어가는곳 시작 -->
<div id="logo">
	<a href="NonageServlet?command=index">
		<img alt="nonageshop" src="images/logo.gif" width="180">
	</a>
</div>
<!-- 로고 들어가는곳 끝 -->
<nav id="catagory_menu">
	<ul>
		<c:choose>
		<c:when test="${empty sessionScope.loginUser}">
			<li><a href="NonageServlet?command=login_form">LOGIN</a></li>
			<li></li>
			<li><a href="NonageServlet?command=contract">JOIN</a></li>
		</c:when>
		<c:otherwise>
			<li style="color: orange">${sessionScope.loginUser.name}(${sessionScope.loginUser.id})</li>
			<li></li>
			<li><a href="NonageServlet?command=logout">LOGOUT</a></li>
		</c:otherwise>
		</c:choose>
		<li></li>
		<li>
			<a href="NonageServlet?command=cart_list">CART</a>
		</li><li></li>
		<li>
			<a href="NonageServlet?command=mypage">MY PAGE</a>
		</li><li></li>
		<li>
			<a href="NonageServlet?command=qna_list">Q&amp;A(1:1)</a>
		</li>
	</ul>
</nav>
		
<nav id="top_menu">
	<ul>
		<li>
			<a href="NonageServlet?command=category&kind=1">Heels</a>
		</li>
		<li>
			<a href="NonageServlet?command=category&kind=2">Boots</a>
		</li>
		<li>
			<a href="NonageServlet?command=category&kind=3">Sandals</a>
		</li>
		<li>
			<a href="NonageServlet?command=category&kind=4">Sneakers</a>
		</li>
		<li>
			<a href="NonageServlet?command=category&kind=5">On Sale</a>
		</li>
	</ul>
</nav>
<div class="clear"></div>
</header>
<!-- 헤더 들어가는곳 끝 -->
