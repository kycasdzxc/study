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
	body {margin:0;}
	header, footer {background: blue; padding:20px; text-align: center; color: white;}
	header h1 {color: white; font-size: 1.8em}
	nav {background:steelblue; padding:10px;}
	nav a {color: white; margin: 0 15px; text-decoration: none;}
	section {min-height: 700px; padding: 10px;}
	section h3 {text-align: center;}

	section table {text-align: center; width: 800px; margin: 0 auto;}
</style>
</head>
<body>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
	System.out.println(conn);
	String sql = 
	"SELECT CUSTNO, CUSTNAME,  CASE GRADE WHEN 'A' THEN 'VIP' WHEN 'B' THEN '일반' WHEN 'C' THEN '직원' END G, SALES\r\n" + 
	"FROM \r\n" + 
	"	MEMBER_TBL_02 A\r\n" + 
	"JOIN\r\n" + 
	"	(SELECT CUSTNO, SUM(PRICE) SALES\r\n" + 
	"	FROM MONEY_TBL_02\r\n" + 
	"	GROUP BY CUSTNO) B\r\n" + 
	"USING(CUSTNO)\r\n" + 
	"ORDER BY SALES DESC";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	// 커넥션 만들었으면 이제 > preparedstatement, resultset
%>
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
	<h3>회원목록 조회 / 수정</h3>
	<table border="1">
		<tr>
			<th>회원번호</th>
			<th>회원성명</th>
			<th>고객등급</th>
			<th>매출</th>
		</tr>
		<% while(rs.next()) { %>
		<tr>
			<td><%=rs.getInt("CUSTNO")%></td>
			<td><%=rs.getString("CUSTNAME")%></td>
			<td><%=rs.getString("G")%></td>
			<td><%=rs.getString("SALES")%></td>
		</tr>
		<% } %>
	</table>
</section>
<footer>
	HRDKOREA Copyright&copy;2016 All rights reserved. Hunam Resources Developement Service of Korea
</footer>
</body>
</html>