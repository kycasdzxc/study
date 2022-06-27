<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<link href="../resources/bootstrap/bootstrap.min.css" rel="stylesheet">
	<script src="../resources/bootstrap/bootstrap.min.js"></script>
	<script src="../resources/js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div class="container w-25">
		<h1 class="my-3 fw-bold">회원가입</h1>
		<form method="post">
			<div class="card bg-light border-success px-4 pb-3">
				<h5 class="mt-3">- 아이디</h5>
				<input type="text" class="form-control px-3 py-1" id="user_id" name="user_id">
				<small id="textUserId" class="p-2 pb-0 text-danger"></small>
				
				<h5 class="mt-3">- 비밀번호</h5>
				<input type="password" class="form-control px-3 py-1" id="user_pw" name="user_pw">
				<small id="textUserPw" class="p-2 pb-0 text-danger"></small>
				<h5 class="mt-3">- 비밀번호 확인</h5>
				<input type="password" class="form-control px-3 py-1" id="user_pw2" name="user_pw2">
				<small id="textUserPw2" class="p-2 pb-0 text-danger"></small>
				
				<h5 class="mt-3">- 이름</h5>
				<input type="text" class="form-control px-3 py-1" id="user_name" name="user_name">
				<small id="textUserName" class="p-2 pb-0 text-danger"></small>
				
				<div>
					<hr>
					<a class="btn btn-outline-secondary float-end" href="${pageContext.request.contextPath}/board/list">목록</a>
					<button type="submit" class="btn btn-outline-info float-end me-2" id="btn-register">회원가입</button>
				</div>
			</div>
		</form>
	</div>
	<script>
		$(function() {
			var validateId = function() {
				var id = $("#user_id").val();
				
				$.ajax("../member/checkedId", {
					data : {user_id : id}
				}).done(function(result) {
					console.log(result);
					if(id.length == 0) {
						$("#textUserId").addClass("text-danger").removeClass("text-success").text("아이디를 입력해주세요.");
						$("#user_id").addClass("is-invalid").removeClass("is-valid");
						return;
					}
					if(result == 1) {
						$("#textUserId").addClass("text-danger").removeClass("text-success").text("존재하는 아이디입니다.");
						$("#user_id").addClass("is-invalid").removeClass("is-valid");
						return;
					} else {
						$("#textUserId").addClass("text-success").removeClass("text-danger").text("사용가능한 아이디입니다.");
						$("#user_id").addClass("is-valid").removeClass("is-invalid");
					}
				})
			}
			
			var validatePw = function() {
				var pw = $("#user_pw").val();
				
				if(pw.length == 0) {
					$("#textUserPw").addClass("text-danger").removeClass("text-success").text("비밀번호를 입력해주세요.");
					$("#user_pw").addClass("is-invalid").removeClass("is-valid");
					return;
				}
				if(!(/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*?&])/.test(pw))) {
					$("#textUserPw").addClass("text-danger").removeClass("text-success").text("영문자, 숫자, 특수문자를 사용해주세요.");
					$("#user_pw").addClass("is-invalid").removeClass("is-valid");
					return;
				} else {
					$("#textUserPw").text("");
					$("#user_pw").addClass("is-valid").removeClass("is-invalid");
				}
			}
			
			var validatePw2 = function() {
				var pw2 = $("#user_pw2").val();
				
				if(pw2 != $("#user_pw").val()) {
					$("#textUserPw2").addClass("text-danger").removeClass("text-success").text("비밀번호를 확인해주세요.");
					$("#user_pw2").addClass("is-invalid").removeClass("is-valid");
					return;
				} else {
					$("#textUserPw2").text("");
					$("#user_pw2").addClass("is-valid").removeClass("is-invalid");
				}
			}
			
			var validateName = function() {
				var name = $("#user_name").val();
				
				if(name.length == 0) {
					$("#textUserName").addClass("text-danger").removeClass("text-success").text("이름을 입력해주세요.");
					$("#user_name").addClass("is-invalid").removeClass("is-valid");
					return;
				} else {
					$("#textUserName").text("");
					$("#user_name").addClass("is-valid").removeClass("is-invalid");
				}
			}
			
			$("#user_id").on("focusout", validateId);
			$("#user_pw").on("focusout", validatePw);
			$("#user_pw2").on("focusout", validatePw2);
			$("#user_name").on("focusout", validateName);
			
			$("#btn-register").click(function() {
				if(!$("#user_id").hasClass("is-valid")) {
					validateId();
					$("#user_id").focus();
					event.preventDefault();
					return;
				}
				if(!$("#user_pw").hasClass("is-valid")) {
					validatePw();
					$("#user_pw").focus();
					event.preventDefault();
					return;
				}
				if($("#user_pw").val() != $("#user_pw2").val()) {
					validatePw2();
					$("#user_pw2").focus();
					event.preventDefault();
					return;
				}
				if(!$("#user_name").hasClass("is-valid")) {
					validateName();
					$("#user_name").focus();
					event.preventDefault();
					return;
				} else {
					alert("회원가입이 완료되었습니다.")
				}
			})
		})
	</script>
</body>
</html>