<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 회원 등록 성공 </title>
	<!-- tailwindcss 적용 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css">
	<style>
		.container {
			max-width: 1200px;
		}
	</style>
</head>
<body class="container mx-auto bg-gray-100">
<div class="container mx-auto my-8">
<div class="bg-white rounded-lg shadow-md p-8">
<h1 class="text-4xl font-bold mb-4">회원 등록 성공</h1>
	축하합니다! <br>
	회원가입에 성공하셨습니다! <br>
 	로그인창에서 로그인 해주세요.^^	<br><br>
	<form action="userlogin.jsp" method="post">
		<input type="submit" value=" 로그인 하러가기" class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded">
	</form>
</div>
</div>
</body>
</html>
