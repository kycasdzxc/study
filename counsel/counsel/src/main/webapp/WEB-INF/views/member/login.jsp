<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link href="../resources/bootstrap/bootstrap.min.css" rel="stylesheet">
	<script src="../resources/bootstrap/bootstrap.min.js"></script>
	<script src="../resources/js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div class="container w-25">
		<h1 class="my-3 fw-bold">로그인</h1>
		<form method="post">
			<div class="card bg-light border-success px-4 pb-3">
				<h5 class="mt-3">- 아이디</h5>
				<input type="text" class="form-control px-3 py-1" name="username">
				<h5 class="mt-3">- 비밀번호</h5>
				<input type="password" class="form-control px-3 py-1" name="password">
				<p class="mt-2 mb-0 text-end small">
					<a href="${pageContext.request.contextPath}/member/join" class="text-dark" style="text-decoration:none;">회원가입 </a>/
					<a href="${pageContext.request.contextPath}/member/changePw" class="text-dark" style="text-decoration:none;"> 비밀번호 변경</a>
				</p>
				<div>
					<hr class="mt-2">
					<a class="btn btn-outline-secondary float-end" href="${pageContext.request.contextPath}/board/list">목록</a>
					<button type="submit" class="btn btn-outline-primary float-end me-2" id="btn-register">로그인</button>
				</div>
				<c:if test="${LoginFailMessage!=null}">
					<p class="mt-3 mb-1 text-danger small">${LoginFailMessage}</p>
				</c:if>
			</div>
		</form>
	</div>
	<script>
		$(function() {
			var lockedMsg = '${LockedMessage}';
			if(lockedMsg) {
				alert(lockedMsg);
			}
		})
	</script>
</body>
</html>