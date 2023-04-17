<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원 전용 공간 </title>
<!-- Tailwind CSS 추가 -->
<link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css">
<style>
	.container {
			max-width: 1200px;
		}
	.btn-group {
		display: flex;
		align-items: center;
	}
</style>
</head>
<body class="container mx-auto bg-gray-100">
	<div class="container mx-auto my-8">
		<div class="bg-white rounded-lg shadow-md p-8">
			<h1 class="text-3xl font-bold mb-4">회원 전용 공간</h1>
			
			
			<hr class="mb-4">
			<div style='font-size:18px;'>
			<p class="mb-4">반갑습니다.<br>
			여기는 회원 전용 공간입니다.<br>
			아래 버튼을 눌러 게시판을 방문해보세요!<br>
			</div>
		<div class="btn-group">
			<form action="../board/list.jsp" method="post">
				<button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded mr-4 mb-4">게시판</button>
			</form>
			<form action="logout.jsp" method="post">
				<button type="submit" class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded mr-4 mb-4">로그 아웃</button>
			</form>
			<form action="withdraw.jsp" method="post">
				<button type="submit" class="bg-yellow-500 hover:bg-yellow-700 text-white font-bold py-2 px-4 rounded mr-4 mb-4">회원 탈퇴하기</button>
			</form>
		</div>
		</div>
	</div>
</body>
</html>
