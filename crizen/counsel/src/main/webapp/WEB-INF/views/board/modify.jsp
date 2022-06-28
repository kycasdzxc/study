<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<h1 class="my-3 fw-bold">게시글 수정</h1>
		<form method="post" id="fmt">
			<div class="card px-4 pb-3">
				<h5 class="mt-3">- 글번호</h5>
				<input type="text" class="form-control px-3 py-1" name="counsel_bno" value="${board.counsel_bno}" readonly>
				<h5 class="mt-3">- 글제목</h5>
				<input type="text" class="form-control px-3 py-1" name="counsel_title" value="${board.counsel_title}">
				<h5 class="mt-3">- 글내용</h5>
				<textarea class="form-control" rows="3" name="counsel_content">${board.counsel_content}</textarea>
				<h5 class="mt-3">- 작성자</h5>
				<input type="text" class="form-control px-3 py-1" name="counsel_writer" value="${board.counsel_writer}">
				<h5 class="mt-3">- 작성시간</h5>
				<input type="text" class="form-control px-3 py-1" value="${board.counsel_regDate}" readonly>
				<div class="pt-3">
					<button type="submit" class="btn btn-outline-warning" id="btn-modify">수정</button>
					<a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/board/list">목록</a>
				</div>
			</div>
		</form>
	</div>
</body>
	<script>
		$(function() {
			$("#btn-modify").click(function() {
event.preventDefault();
				
				var title = $("input[name=counsel_title]").val();
				var content = $("textarea[name=counsel_content]").val() + ' ';
				
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
				
				alert("게시글 수정 완료")
				$("#fmt").submit();
			})
			$("#btn-remove").click(function() {
				var checkRemove = confirm("게시글을 삭제하시겠습니까?");
				if(checkRemove) {
					alert("게시글 삭제 완료")
				} else {
					event.preventDefault();
				}
			})
		})
	</script>
</html>