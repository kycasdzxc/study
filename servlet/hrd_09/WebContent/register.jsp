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
	<h3>쇼핑몰 회원 등록</h3>
<%
	request.setCharacterEncoding("utf-8");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
	String sql = "SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') NOW, MAX(CUSTNO) + 1 CUSTNO FROM MEMBER_TBL_02";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>
<% if(request.getMethod().equals("GET")) { %>
	<form method="post" name="frm">
		<table border="1">
			<tr>
				<th>회원번호(자동발생)</th>
				<td><input type="text" readonly name="custno" value="<%=rs.getString(2)%>"></td>
			</tr>
			<tr>
				<th>회원이름</th>
				<td><input type="text" name="custname"></td>
			</tr>
			<tr>
				<th>회원전화</th>
				<td><input type="text" name="phone" size="30"></td>
			</tr>
			<tr>
				<th>회원주소</th>
				<td><input type="text" name="address" size="50"></td>
			</tr>
			<tr>
				<th>가입일자</th>
				<td><input type="text" readonly name="joindate" value="<%=rs.getString(1)%>"></td>
			</tr>
			<tr>
				<th>고객등급[A:VIP,B:일반,C:직원]</th>
				<td><input type="text" name="grade"></td>
			</tr>
			<tr>
				<th>도시코드</th>
				<td><input type="text" name="city"></td>
			</tr>
			<tr>
				<th colspan="2">
					<button>등록</button>
					<a href="list.jsp"><button type="button">목록</button></a>
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
		String joindate = request.getParameter("joindate");
		String grade = request.getParameter("grade");
		String city = request.getParameter("city");
		
		sql = "INSERT INTO MEMBER_TBL_02 VALUES (?, ?, ?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, custno);
		pstmt.setString(2, custname);
		pstmt.setString(3, phone);
		pstmt.setString(4, address);
		pstmt.setString(5, joindate);
		pstmt.setString(6, grade);
		pstmt.setString(7, city);
		
		pstmt.executeUpdate();
		
		response.sendRedirect("list.jsp");
	}
%>
</section>
<footer>
	HRDKOREA Copyright&copy;2016 All rights reserved. Human Resources Development Service of Korea
</footer>
<script>
document.frm.onsubmit = function() {
	event.preventDefault();
	if(this.custname.value.length == 0) {
		alert("회원이름을 입력하세요.");
		this.custname.focus();
	}
	else if(this.phone.value.length == 0) {
		alert("회원전화를 입력하세요.");
		this.phone.focus();
	}
	else if(this.address.value.length == 0) {
		alert("회원주소를 입력하세요.");
		this.address.focus();
	}
	else if(this.grade.value.length == 0) {
		alert("회원등급을 입력하세요.");
		this.grade.focus();
	}
	else if(this.city.value.length == 0) {
		alert("도시코드를 입력하세요.");
		this.city.focus();
	}
	else {
		alert("회원등록이 완료 되었습니다.");
		this.submit();
	}
}
</script>
</body>
</html>