<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login Error</title>
	<!-- tailwindcss CDN 링크 -->
	<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.7/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
	<div class="container mx-auto mt-10 px-4">
		<p class="text-gray-500 text-sm"><a href="/">Home</a> > 로그인 에러</p>
		<hr class="my-4">
		<div class="bg-white shadow-md rounded-md p-4">
			<p class="text-red-500 font-bold text-lg mb-2">로그인 오류입니다!</p>
			<p class="text-gray-500 mb-4">아이디와 비밀번호를 확인하세요.</p>
			<form action="userlogin.jsp" name="err_form" method="post">
				<button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
					다시 로그인
				</button>
			</form>
		</div>
	</div>
</body>
</html>
