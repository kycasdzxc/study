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
	header, footer {background: blue; color: white; text-align: center; padding: 20px;}
	nav {background: skyblue; padding: 10px;}
	nav a {text-decoration: none; color: white; margin: 0 15px;}
	h3 {text-align: center;}
	
	section {min-height:700px; padding:10px;}
	section table {width: 800px; margin: 0 auto;}
	td {text-align: center;}
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
<%
	request.setCharacterEncoding("UTF-8");
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
	String sql = "SELECT A.CUSTNO, A.CUSTNAME, A.GRADE, SUM FROM MEMBER_TBL_02 A, "
			+" (SELECT CUSTNO, SUM(PRICE) SUM FROM MONEY_TBL_02 GROUP BY CUSTNO) B"
			+" WHERE A.CUSTNO = B.CUSTNO"
			+" ORDER BY 4 DESC";
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
%>
	<h3>회원매출조회</h3>
	<table border="1">
		<tr>
			<th>회원번호</th>
			<th>회원성명</th>
			<th>고객등급</th>
			<th>매출</th>
		</tr>
	<% while(rs.next()) { %>
		<tr>
			<td><%=rs.getInt(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3).equals("A") ? "VIP" : rs.getString(3).equals("B") ? "일반" : "직원" %></td>
			<td><%=rs.getString(4) %></td>
		</tr>
	<% } %>
	</table>
</section>

<footer>
	HRDKOREA Copyright&copy;2016 All rights reserved. Human Resources Development Service of Korea
</footer>
</body>
</html>