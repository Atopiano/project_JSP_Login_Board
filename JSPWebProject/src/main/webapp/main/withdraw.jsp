<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 회원 탈퇴 </title>
	<!-- tailwindcss 적용 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css">
</head>
<body class="bg-gray-100">
	<div class="max-w-md mx-auto my-8">
		<div class="bg-white shadow-md rounded-lg px-8 py-6">
			<h1 class="text-3xl font-bold mb-4">회원 탈퇴하기</h1>
			<div class="mb-4">
				<form action="drawCheck.jsp" name="user_info" method="post">
					<div class="mb-4">
						<label for="userID" class="block text-gray-700 font-bold mb-2">아이디 :</label>
						<input type="text" id="userID" name="userID" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" placeholder="아이디를 입력해주세요.">
					</div>
					<div class="flex items-center justify-between">
						<button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline" type="button">
							회원 탈퇴
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
