<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	body {margin:0}
	header, footer {background: blue; padding:20px; text-align: center; color:white;}
	header h1 {font-size:1.8em;}
	nav {background:#5456d8; padding:10px;}
	nav a {color:white; margin: 0 15px; text-decoration: none;}
	section {min-height:700px; padding:10px;}
	section h3 {text-align: center;}
</style>
</head>
<body>
<header>
	<h1>쇼핑몰 회원관리 ver 1.0</h1>
</header>
<nav>
	<a href="register.jsp">회원등록</a>
	<a href="list.jsp">회원목록조회/수정</a>
	<a href="sales.jsp">회원매출조회</a>
	<a href="index.jsp">홈으로</a>
</nav>
<section>
	<h3>쇼핑몰 회원관리 프로그램</h3>
	<p>쇼핑몰 회원정보와 회원매출정보 데이터베이스를 구축하고 회원관리 프로그램을 작성하는 프로그램이다.</p>
	<p>프로그램 작성순서</p>
	<p>1. 회원정보 테이블을 생성한다.</p>
	<p>2. 매출정보 테이블을 생성한다.</p>
	<p>3. 회원정보, 매출정보 테이블에 제시된 문제지의 참조데이터를 추가 생성한다.</p>
	<p>4. 회원정보 입력 화면 프로그램을 작성한다.</p>
	<p>5. 회원정보 조회 프로그램을 작성한다.</p>
	<p>6. 회원매출정보 조회 프로그램을 작성한다.</p>
</section>
<footer>
	HRDKOREA Copyright&copy;2016 All rights reserved. Human Resources Development Service of Korea
</footer>
</body>
</html>