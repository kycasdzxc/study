<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비속어 관리</title>
<link href="../resources/bootstrap/bootstrap.min.css" rel="stylesheet">
<script src="../resources/bootstrap/bootstrap.min.js"></script>
<script src="../resources/js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div class="container w-75 mb-4">
		<div class="my-3">
			<h1 class="d-inline fw-bold">비속어 관리</h1>
			<a href="${pageContext.request.contextPath}/board/list" class="btn btn-outline-secondary mt-3 mb-2 float-end">게시글 목록</a>
		</div>
		<div class="card p-4">
			<div class="d-inline" id="slangList">
				<c:forEach items="${slangs}" var="s">
					<a href="${pageContext.request.contextPath}/board/removeSlang?counsel_slang=${s.counsel_slang}" class="text-black" style="text-decoration: none;">${s.counsel_slang}</a>
				</c:forEach>
			</div>
			<hr>
			<form method="post" action="addSlang" id="sfmt">
				<div class="row">
					<div class="offset-8 col-3 px-1">
						<input type="text" name="counsel_slang" class="form-control">
					</div>
					<div class="col-1">
						<button class="btn btn-outline-success" id="addSlang">등록</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script>
		$(function() {
			$("#slangList a").click(function() {
				var checkRemove = confirm("해당 단어를 삭제하시겠습니까? (비속어: " + $(this).text() + ")");
				if(checkRemove) {
					alert("'" + $(this).text() + "' 삭제 완료")
				} else {
					event.preventDefault();
				}
			})
			
			$("#addSlang").click(function() {
				event.preventDefault();
				var slang = $("input[name=counsel_slang]").val();
				
				if(slang.trim().length == 0) {
					alert("단어를 입력하세요.");
					$("input[name=counsel_slang]").focus();
					return;
				}
				
				alert("'" + slang + "' 등록 완료");
				$("#sfmt").submit();
			})
		})
	</script>
</body>
</html>