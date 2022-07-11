<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	
	section table {width: 1200px;}
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

<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
	String sql = "SELECT STUDNO, NAME, GRADE, TO_CHAR(BIRTHDATE, 'YYYY-MM-DD') FROM STUDENT";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
%>
<section>
	<h3>학생조회</h3>
	<table border="1">
		<tr>
			<th>학번</th>
			<th>이름</th>
			<th>학년</th>
			<th>생일</th>
		</tr>
		
		<% while(rs.next()) { %>
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
		</tr>
		<% } %>
	</table>
</section>

<footer>
	HRD 정보처리 산업기사 예상문제 &copy; 2019
</footer>
</body>
</html>