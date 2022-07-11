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
	section {min-height:700px; padding:10px;}
	section h3 {text-align: center;}
	
	section table {width: 800px; margin: 0 auto;}
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
	String sql = "SELECT * FROM MEMBER_TBL_02 WHERE CUSTNO = ?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("custno"));
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>
<%
	if(request.getMethod().equals("GET")) {
%>
<form method="post" name="frm">
	<h3>홈쇼핑 회원 정보 수정</h3>
	<table border="1">
		<tr>
			<th>회원번호(자동발생)</th>
			<td><input type="text" name="custno" value="<%=rs.getString(1) %>" readonly></td>
		</tr>
		<tr>
			<th>회원성명</th>
			<td><input type="text" name="custname" value="<%=rs.getString(2) %>"></td>
		</tr>
		<tr>
			<th>회원전화</th>
			<td><input type="text" name="phone" value="<%=rs.getString(3) %>" size="30"></td>
		</tr>
		<tr>
			<th>회원주소</th>
			<td><input type="text" name="address" value="<%=rs.getString(4) %>" size="50"></td>
		</tr>
		<tr>
			<th>가입일자</th>
			<td><input type="text" name="joindate" value="<%=rs.getString(5) %>" readonly></td>
		</tr>
		<tr>
			<th>고객등급[A:VIP,B:일반,C:직원]</th>
			<td><input type="text" name="grade" value="<%=rs.getString(6) %>"></td>
		</tr>
		<tr>
			<th>도시코드</th>
			<td><input type="text" name="city" value="<%=rs.getString(7) %>"></td>
		</tr>
		<tr>
			<th colspan="2">
				<button>수 정</button>
				<button>조 회</button>
			</th>
		</tr>
	</table>
</form>
<%
	} else {
		String custno = request.getParameter("custno");
		String custname = request.getParameter("custname");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String grade = request.getParameter("grade");
		String city = request.getParameter("city");
		
		sql = "UPDATE MEMBER_TBL_02 SET "
				+ "CUSTNAME = ?, PHONE = ?, ADDRESS = ?, GRADE = ?, CITY = ? WHERE CUSTNO = ?";
		
		pstmt = con.prepareStatement(sql);
		
		int idx = 1;
		pstmt.setString(idx++, custname);
		pstmt.setString(idx++, phone);
		pstmt.setString(idx++, address);
		pstmt.setString(idx++, grade);
		pstmt.setString(idx++, city);
		pstmt.setString(idx++, custno);
		
		pstmt.executeUpdate();
		
		response.sendRedirect("list.jsp");
	}
%>
</section>

<footer>
	HRDKOREA Copyright&copy;2016 All rights reserved. Human Resources Development Service of Korea
</footer>
</body>
</html>