<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	
	section table {text-align: center; width: 800px; margin: 0 auto;}
</style>
</head>
<body>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
	String sql = "SELECT M.*, TO_CHAR(JOINDATE, 'YYYY-MM-DD') D, ";
		   sql += "CASE GRADE WHEN 'A' THEN 'VIP' WHEN 'B' THEN '일반' WHEN 'C' THEN '직원' END G ";
		   sql += "FROM MEMBER_TBL_02 M ORDER BY CUSTNO";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	// preparedstatment
	// resultset
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
	<h3>회원목록조회/수정</h3>
	<table border="1">
		<tr>
			<th>회원번호</th>
			<th>회원성명</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>가입일자</th>
			<th>고객등급</th>
			<th>거주지역</th>
		</tr>
		<% while(rs.next()) { %>
		<tr>
			<td><a href="modify.jsp?custno=<%=rs.getInt("CUSTNO") %>"><%=rs.getInt("CUSTNO") %></a></td>
			<td><%=rs.getString("CUSTNAME") %></td>
			<td><%=rs.getString("PHONE") %></td>
			<td><%=rs.getString("ADDRESS") %></td>
			<td><%=rs.getString("D") %></td>
			<td><%=rs.getString("G") %></td>
			<td><%=rs.getString("CITY") %></td>
		</tr>
		<% } %>
	</table>
</section>
<footer>
	HRDKOREA Copyright&copy;2016 All rights reserved. Human Resources Development Service of Korea
</footer>
</body>
</html>