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
	request.setCharacterEncoding("UTF-8");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
	String sql = "SELECT SUBNO, SUBNAME, SCORE FROM SUBJECT WHERE SUBNO = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("subno"));
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>
<section>
	<h3>과목 수정</h3>
	<%
	if(request.getMethod().equals("GET")) {
	%>
	<form method="post" name="frm">
		<table border="1">
			<tr>
				<th>과목번호</th>
				<td><input type="text" name="subno" value="<%=rs.getString(1) %>" readonly></td>
			</tr>
			<tr>
				<th>과목이름</th>
				<td><input type="text" name="subname" value="<%=rs.getString(2) %>"></td>
			</tr>
			<tr>
				<th>취득학점</th>
				<td><input type="text" name="score" value="<%=rs.getString(3) %>"></td>
			</tr>
			<tr>
				<th colspan="2"><button>수정</button></th>
			</tr>
		</table>
	</form>
	<%
	} else {
		String subno = request.getParameter("subno");
		String subname = request.getParameter("subname");
		String score = request.getParameter("score");
		
		sql = "UPDATE SUBJECT SET SUBNAME = ?, SCORE = ? WHERE SUBNO = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, subname);
		pstmt.setString(2, score);
		pstmt.setString(3, subno);
		
		pstmt.executeUpdate();
		response.sendRedirect("modifyList.jsp");
	}
	%>
</section>

<footer>
	HRD 정보처리 산업기사 예상문제 &copy; 2019
</footer>

<script>
	document.frm.onsubmit = function() {
		event.preventDefault();
		if(this.subname.value.length == 0) {
			alert("이름을 입력해주세요");
			this.subname.focus();
		}
		else if(this.score.value.length == 0) {
			alert("학점을 입력해주세요");
			this.subname.focus();
		} else {
			alert("수정이 완료되었습니다.")
			this.submit();
		}
	}
</script>
</body>
</html>