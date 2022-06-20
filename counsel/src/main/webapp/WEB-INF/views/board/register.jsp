<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 수정</title>
	<link href="../resources/bootstrap/bootstrap.min.css" rel="stylesheet">
	<script src="../resources/bootstrap/bootstrap.min.js"></script>
	<script src="../resources/js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div class="container w-75">
		<h1 class="my-3">게시글 작성</h1>
		<form method="post" id="fmt">
			<div class="card px-4 pb-3">
				<h5 class="mt-3">- 글제목</h5>
				<input type="text" class="form-control px-3 py-1" name="counsel_title">
				<h5 class="mt-3">- 글내용</h5>
				<textarea class="form-control" rows="3" name="counsel_content"></textarea>
				<h5 class="mt-3">- 작성자</h5>
				<input type="text" class="form-control px-3 py-1" name="counsel_writer">
				<div class="pt-3">
					<button type="submit" class="btn btn-outline-primary" id="btn-register">작성</button>
					<a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/board/list">목록</a>
				</div>
			</div>
		</form>
	</div>
	<script>
		$(function() {
			$("#btn-register").click(function() {
				event.preventDefault();
				
				var title = $("input[name=counsel_title]").val();
				var content = $("textarea[name=counsel_content]").val() + ' ';
				var writer = $("input[name=counsel_writer]").val();
				
				if(title.trim().length == 0) {
					alert("글제목을 입력하세요.");
					$("input[name=counsel_title]").focus();
					return;
				}
				if(content.trim().length == 0) {
					alert("글내용 입력하세요.");
					$("textarea[name=counsel_content]").focus();
					return;
				}
				if(writer.trim().length == 0) {
					alert("작성자를 입력하세요.");
					$("input[name=counsel_writer]").focus();
					return;
				}
				
				alert("게시글 등록 완료");
				$("#fmt").submit();
			})
		})
	</script>
</body>
</html>