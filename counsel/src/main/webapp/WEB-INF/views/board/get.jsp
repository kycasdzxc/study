<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세조회</title>
<link href="../resources/bootstrap/bootstrap.min.css" rel="stylesheet">
<script src="../resources/bootstrap/bootstrap.min.js"></script>
<script src="../resources/js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div class="container w-75">
		<h1 class="my-3 fw-bold">게시글 상세조회</h1>
		<form method="post">
			<div class="card px-4 pb-3">
				<h5 class="mt-3">- 글번호</h5>
				<input type="text" class="form-control px-3 py-1" name="counsel_bno" value="${board.counsel_bno}" readonly>
				<h5 class="mt-3">- 글제목</h5>
				<input type="text" class="form-control px-3 py-1" value="${board.counsel_title}" readonly>
				<h5 class="mt-3">- 글내용</h5>
				<textarea class="form-control" rows="3" readonly>${board.counsel_content}</textarea>
				<h5 class="mt-3">- 작성자</h5>
				<input type="text" class="form-control px-3 py-1" value="${board.counsel_updateWriter += (board.counsel_writer == board.counsel_updateWriter ? '' : ' (수정됨)')} / 아이디 : ${board.counsel_userId}" readonly>
				<input type="hidden" class="form-control px-3 py-1" name="counsel_userId" value="${board.counsel_userId}" readonly>
				<h5 class="mt-3">- 작성시간</h5>
				<input type="text" class="form-control px-3 py-1" value="${board.counsel_regDate} ${board.counsel_regDate == board.counsel_updateDate ? '' : ('(수정시간 : ' += board.counsel_updateDate += ')')}" readonly>
				<div class="pt-3 text-end">
					<sec:authorize access="principal.username == #board.counsel_userId">
					<a class="btn btn-outline-warning" href="${pageContext.request.contextPath}/board/modify?counsel_bno=${board.counsel_bno}&counsel_userId=${board.counsel_userId}">수정</a>
					</sec:authorize>
					<sec:authorize access="hasRole('ROLE_ADMIN') or principal.username == #board.counsel_userId">
						<button type="submit" class="btn btn-outline-danger" id="btn-remove" formaction="remove">삭제</button>
					</sec:authorize>
					<a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/board/list">목록</a>
				</div>
			</div>
		</form>
		<hr>
		<div class="card mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 text-success float-left">댓글 작성</h6>
			</div>
			<div class="card-body list-group p-3 chat"></div>

			<div class="row py-2 card-body reply-register-area">
				<div class="col-3">
					<textarea class="form-control" rows="2" placeholder="작성자"
						id="reply-writer" style='resize: none'></textarea>
				</div>
				<div class="col-8">
					<textarea class="form-control" rows="2" placeholder="댓글 내용"
						id="reply-content" style='resize: none'></textarea>
				</div>
				<div class="col-1 px-3 d-flex">
					<button type="button" id="reply-add" class="btn btn-outline-success">작성</button>
				</div>
			</div>
		</div>
	</div>

	<script src="../resources/js/reply.js"></script>
	<script>
		var bno = '${board.counsel_bno}'
		
		$(function() {
			// 단일 댓글 생성
			function getReplyStr(reply) {
				var str = "";
				str += '<div class="list-group-item p-0 bg-success text-white p-3" data-rno="' + reply.counsel_reply_rno + '">';
				str += '	<strong>' + reply.counsel_reply_writer + '</strong>';
				str += '	<small class="float-end">' + reply.counsel_reply_regDate + '&nbsp';
				str += '		<a class="btn-reply-modify text-white" href="#" style="text-decoration:none">수정</a>';
				str += '		<a class="btn-reply-remove text-white" href="#" style="text-decoration:none">삭제</a>';
				str += '	</small>';
				str += '</div>';
				str += '<div class="reply-content">';
				str += '	<p class="p-3 list-group-item mb-0" style="white-space:pre-line">' + reply.counsel_reply_content + '</p>';
				str += '	<div class="input-group d-none">';
				str += '		<textarea class="form-control rounded-0" style="resize:none"></textarea>';
				str += '		<div class="input-group-append">';
				str += '			<button type="button" class="btn btn-warning rounded-0 py-4">수정</button>';
				str += '		</div>';
				str += '	</div>';
				str += '</div>';
				return str;
			}
			// 댓글목록 조회
			function showList() {
				var param = {bno:bno}
				replyService.getList(param, function(result) {
					var str = '';
					for(var i in result) {
						str += getReplyStr(result[i]);
					}
					$(".chat").html(str);
				})
			}
			showList();
			
			// 댓글 등록
			$(".reply-register-area div button").click(function() {
				var replyContent = $("#reply-content").val();
				var replyWriter = $("#reply-writer").val();
				if(replyWriter.trim().length == 0) {
					alert("작성자를 입력하세요.");
					$("#reply-writer").focus();
					return;
				}
				if(replyContent.trim().length == 0) {
					alert("댓글 내용을 입력하세요.");
					$("#reply-content").focus();
					return;
				}
				var reply = {counsel_reply_bno:bno, counsel_reply_content:replyContent, counsel_reply_writer:replyWriter};
				replyService.add(reply, function(result) {
					alert("댓글 등록 완료");
					$("#reply-content").val("");
					$("#reply-writer").val("");
					replyService.get(result, function(result) {
						$(".chat").prepend(getReplyStr(result)); // 댓글목록 자식 태그 중 가장 첫번째 순서에 추가
					})
					console.log(result);
				});
			})
			
			// 댓글 삭제
			$(".chat").on("click", ".btn-reply-remove", function() {
				event.preventDefault();
				var $dom = $(this).closest(".bg-success");
				var rno = $dom.data("rno");
				console.log(rno);
				replyService.remove({counsel_reply_rno:rno}, function(result) {
					var checkRemove = confirm("댓글을 삭제하시겠습니까?");
					if(checkRemove) {
						alert("댓글 삭제 완료");
						$dom.next().remove();
						$dom.remove();
					} else {
						event.preventDefault();
					}
				})
			})
			
			// 댓글 수정
			$(".chat").on("click", ".btn-reply-modify", function() {
				event.preventDefault();
				var $dom = $(this).closest(".bg-success");
				var rno = $dom.data("rno");
				$(".reply-content > p").show();
				$(".reply-content > div").addClass("d-none");
				$dom.next().find("p").hide();
				$dom.next().find("div").find("textarea").val($dom.next().find("p").text()).end().removeClass("d-none");
			});
			
			// 댓글 수정 반영
			$(".chat").on("click", ".reply-content button", function() {
				var $replyContent = $(this).closest(".reply-content");
				var rno = $replyContent.prev().data("rno");
				var content = $replyContent.find("textarea").val();
				var writer = $replyContent.find("strong").text();
				var reply = {counsel_reply_rno:rno, counsel_reply_content:content, counsel_reply_writer:writer};
				
				replyService.update(reply, function(result) {
					alert("댓글 수정 완료");
					$replyContent.find("p").text(content).show();
					$replyContent.find("div").addClass("d-none");
				})
			})
		});
	</script>
</body>
</html>