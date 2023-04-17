<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login Form</title>
	<!-- Tailwind CSS 추가 -->
	<link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css">
	<style>
		.container {
			max-width: 400px;
		}
	</style>
	<script type="text/javascript">
	function checkFun() {
		var f = document.loginForm;
		if (f.uID.value == "") {
			alert("아이디를 입력해 주세요.");
			f.uID.focus();
			return false;
		} else if (f.uPW.value == "") {
			alert("비밀번호를 입력해 주세요.");
			f.uPW.focus();
			return false;
		} else return true;
	}
	</script>
</head>
<body class="bg-gray-100">
	<div class="container mx-auto my-8">
		<div class="bg-white rounded-lg shadow-md p-8">
			<h1 class="text-3xl font-bold mb-4">로그인</h1>
			<hr class="mb-4">
			<form name="loginForm" action="userloginSuccess.jsp" method="post" onsubmit="return checkFun()">
				<div class="mb-4">
					<label for="uID" class="block font-medium text-gray-700" style="padding-bottom: 6px;">아이디</label>
					<input type="text" name="uID" id="uID" class="border border-gray-400 p-2 w-full" placeholder="아이디를 입력하세요" />
				</div>
				<div class="mb-4">
					<label for="uPW" class="block font-medium text-gray-700" style="padding-bottom: 6px;">비밀번호</label>
					<input type="password" name="uPW" id="uPW" class="border border-gray-400 p-2 w-full" placeholder="비밀번호를 입력하세요" />
				</div>
				<div class="text-center">
					<button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
						로그인
					</button>
				</div>
			</form>
			<div class="text-center mt-4">
				<a href="signup.jsp" class="text-blue-500 underline">회원가입</a>
			</div>
		</div>
	</div>
</body>
</html>
