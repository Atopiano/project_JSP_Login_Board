<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 회원 탈퇴 성공 </title>
	<!-- Tailwind CSS 적용 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css">
</head>
<body class="bg-gray-100">
	<div class="container mx-auto my-8">
		<div class="bg-white rounded-lg shadow-md p-8">
			<h1 class="text-3xl font-bold mb-4">회원 탈퇴 성공</h1>
			<hr class="mb-4">
			<p class="mb-4">그동안 감사했습니다.</p>
			<div class="flex justify-between">
				<form action="main.jsp" method="post">
					<button type="submit" class="px-4 py-2 bg-gray-500 text-white rounded hover:bg-gray-600 focus:outline-none focus:ring-2 focus:ring-gray-400 focus:ring-opacity-75">◀ 메인 화면으로</button>
				</form>
				<form action="signup.jsp" method="post">
					<button type="submit" class="px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-400 focus:ring-opacity-75">다시 가입하기 ▶</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
