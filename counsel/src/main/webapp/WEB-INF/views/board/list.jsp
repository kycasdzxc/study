<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 목록</title>
	<link href="../resources/bootstrap/bootstrap.min.css" rel="stylesheet">
	<script src="../resources/bootstrap/bootstrap.min.js"></script>
</head>
<body>
	<div class="container w-75 mb-4">
		<div class="mt-3">
			<h1 class="d-inline fw-bold">게시글 목록</h1>
			<a href="${pageContext.request.contextPath}/board/register" class="btn btn-outline-success mt-3 mb-2 float-end">게시글 작성</a>
			<a href="${pageContext.request.contextPath}/board/slangList" class="btn btn-outline-info mt-3 mb-2 mx-2 float-end">비속어 관리</a>
		</div>
		<table class="table table-bordered table-hover">
			<thead class="table-success text-center">
				<tr>
					<th class="col-1">글번호</th>
					<th class="col-7">제  목</th>
					<th class="col-2">작성자</th>
					<th class="col-2">작성일</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${boards}" var="b">
				<tr>
					<td class="text-center">${b.counsel_bno}</td>
					<td><a href="${pageContext.request.contextPath}/board/get?counsel_bno=${b.counsel_bno}" class="text-success fw-bold" style="text-decoration:none">${b.counsel_title}<small> [${b.counsel_replyCnt}]</small></a></td>
					<td class="text-center">${b.counsel_writer}</td>
					<td class="text-center">${b.counsel_regDate}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>