<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {margin: 0;}
	header, footer {background: black; color: white; text-align: center; padding: 20px;}
	nav {background: gray; padding: 10px;}
	nav a {text-decoration: none; color: white; margin: 0 10px;}
	section {min-height: 700px; padding: 10px;}
	section p {padding: 0 20px;}
</style>
</head>
<body>
<header>
	<h1>학적 관리 프로그램</h1>
</header>

<nav>
	<a href="index.jsp">홈으로</a>
	<a href="list.jsp">학생조회</a>
	<a href="register.jsp">과목 등록</a>
	<a href="modifyList.jsp">과목수정/관리</a>
	<a href="grade.jsp">학점 조회</a>
</nav>

<section>
	<h3>수험생은 아래의 과정에 맞게 코드를 작성하세요.</h3>
	<p>1. 학생 목록을 조회하여 출력하는 프로그램을 만드세요</p>
	<p>2. 과목을 등록 할 수 있는 양식을 만들고 등록하는 프로그램을 만드세요</p>
</section>

<footer>
	HRD 정보처리 산업기사 예상문제 &copy; 2019
</footer>
</body>
</html>